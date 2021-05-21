// Package lpcorpus provides Go support for reading the line-protocol corpus.
//
// For the Read* functions, if the CUE executable is installed and there are CUE files (*.cue) in
// the corpus directory, they will be used as a source of truth, otherwise
// it will try to read the corpus.json file.
//
// For the Write* functions, CUE must be installed.
package lpcorpus

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"time"
)

// ReadCorpusJSON reads the corpus.json file named by file.
func ReadCorpusJSON(corpusFile string) (*Corpus, error) {
	data, err := ioutil.ReadFile(corpusFile)
	if err != nil {
		return nil, err
	}
	var r Corpus
	if err := json.Unmarshal(data, &r); err != nil {
		if terr, ok := err.(*json.UnmarshalTypeError); ok {
			return nil, fmt.Errorf("unmarshal error at %s:#%d: %v", corpusFile, terr.Offset, err)
		}
		return nil, fmt.Errorf("unmarshal error at %s: %v", corpusFile, err)
	}
	return &r, nil
}

// ReadCorpus reads the corpus from the given directory.
func ReadCorpus(dir string) (*Corpus, error) {
	var r Corpus
	if err := exportCUE(dir, "corpus", &r); err != nil {
		return nil, err
	}
	return &r, nil
}

type Inputs struct {
	Encode map[string]*EncodeInput `json:"encode"`
	Decode map[string]*DecodeInput `json:"decode"`
}

// ReadInputs reads all the inputs from the given directory.
func ReadInputs(dir string) (*Inputs, error) {
	var c Inputs
	if err := exportCUE(dir, "inputsByKey", &c); err != nil {
		return nil, err
	}
	return &c, nil
}

func exportCUE(dir string, expr string, dest interface{}) error {
	var buf bytes.Buffer
	c := exec.Command("cue", "export", "-e", expr, "--out=json")
	c.Dir = dir
	c.Stdout = &buf
	c.Stderr = os.Stderr
	if err := c.Run(); err != nil {
		return fmt.Errorf("cue export failed: %v", err)
	}
	if err := json.Unmarshal(buf.Bytes(), dest); err != nil {
		return fmt.Errorf("cannot unmarshal JSON CUE output: %v", err)
	}
	return nil
}

func WriteCorpus(dir string, r *Corpus) error {
	if err := writeCorpusData(dir, "corpus-decode", wrap(r.Decode, "corpus", "decode")); err != nil {
		return err
	}
	if err := writeCorpusData(dir, "corpus-encode", wrap(r.Encode, "corpus", "encode")); err != nil {
		return err
	}
	return nil
}

// writeCorpusData writes data into a CUE file into the given corpus directory
// with filenamePrefix as the filename prefix.
func writeCorpusData(corpusDir string, filenamePrefix string, dataVal interface{}) error {
	data, err := json.Marshal(dataVal)
	if err != nil {
		return fmt.Errorf("cannot marshal test cases: %v", err)
	}
	outfile := filepath.Join(corpusDir, filenamePrefix+"-generated.cue")
	c := exec.Command(
		"cue",
		"import",
		"-f",
		"-o="+outfile,
		"-p=lpcorpus",
		"json:",
		"-",
	)
	c.Stdin = bytes.NewReader(data)
	c.Stdout = os.Stderr
	c.Stderr = os.Stderr
	if err := c.Run(); err != nil {
		return err
	}
	fmt.Printf("wrote %s\n", outfile)
	return nil
}

func wrap(x interface{}, elem ...string) interface{} {
	for i := len(elem) - 1; i >= 0; i-- {
		x = map[string]interface{}{
			elem[i]: x,
		}
	}
	return x
}

type Corpus struct {
	Encode map[string]*EncodeCorpusEntry `json:"encode,omitempty"`
	Decode map[string]*DecodeCorpusEntry `json:"decode,omitempty"`
}

type DecodeCorpusEntry struct {
	Input  *DecodeInput  `json:"input"`
	Output *DecodeOutput `json:"output"`
}

type EncodeCorpusEntry struct {
	Input  *EncodeInput  `json:"input"`
	Output *EncodeOutput `json:"output"`
}

type DecodeOutput struct {
	Result []*Point `json:"result,omitempty"`
	Error  string   `json:"error,omitempty"`
}

// Two decode outputs compare equal if they both succeed
// with the same decoded point or they both failed.
func (o1 *DecodeOutput) Equal(o2 *DecodeOutput) bool {
	if o1.Result != nil && o2.Result != nil {
		return reflect.DeepEqual(o1.Result, o2.Result)
	}
	return o1.Error != "" && o2.Error != ""
}

type EncodeOutput struct {
	Result Bytes  `json:"result,omitempty"`
	Error  string `json:"error,omitempty"`
}

// Two encode outputs compare equal if they both succeed
// with the same decoded point or they both failed.
func (o1 *EncodeOutput) Equal(o2 *EncodeOutput) bool {
	if o1.Result != nil && o2.Result != nil {
		return reflect.DeepEqual(o1.Result, o2.Result)
	}
	return o1.Error != "" && o2.Error != ""
}

type DecodeInput struct {
	Key            string    `json:"key"`
	Text           Bytes     `json:"text"`
	About          string    `json:"about,omitempty"`
	DefaultTime    int64     `json:"defaultTime"`
	Precision      Precision `json:"precision"`
	Implementation string    `json:"implementation,omitempty"`
}

type EncodeInput struct {
	Key            string    `json:"key"`
	Point          *Point    `json:"point"`
	About          string    `json:"about,omitempty"`
	Precision      Precision `json:"precision"`
	Implementation string    `json:"implementation,omitempty"`
}

type Point struct {
	Time   int64   `json:"time"`
	Name   Bytes   `json:"name"`
	Tags   []Tag   `json:"tags,omitempty"`
	Fields []Field `json:"fields,omitempty"`
}

type Tag struct {
	Key   Bytes `json:"key"`
	Value Bytes `json:"value"`
}

type Field struct {
	Key   Bytes `json:"key"`
	Value Value `json:"value"`
}

type Precision struct {
	Duration time.Duration
}

func (p Precision) MarshalText() ([]byte, error) {
	return []byte(p.Duration.String()), nil
}

func (p *Precision) UnmarshalText(data []byte) error {
	d, err := time.ParseDuration(string(data))
	if err != nil {
		return err
	}
	p.Duration = d
	return nil
}
