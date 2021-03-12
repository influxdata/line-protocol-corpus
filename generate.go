package main

import (
	"bytes"
	"errors"
	"fmt"
	"os"
	"runtime/debug"
	"time"
	"unicode/utf8"

	"github.com/influxdata/line-protocol-corpus/lpcodecs"
	"github.com/influxdata/line-protocol-corpus/lpcorpus"
)

func main() {
	if err := runTests(); err != nil {
		fmt.Fprintf(os.Stderr, "line-protocol-generate-go-corpus: %v\n", err)
		os.Exit(1)
	}
}

func runTests() error {
	dir := os.Getenv("CORPUS")
	if dir == "" {
		if _, err := os.Stat("schema.cue"); err != nil {
			return fmt.Errorf("cannot read corpus because $CORPUS directory variable not set")
		}
		dir = "."
	}
	inputs, err := lpcorpus.ReadInputs(dir)
	if err != nil {
		return fmt.Errorf("cannot read inputs: %v", err)
	}
	fmt.Printf("%d decode inputs; %d encode inputs\n", len(inputs.Decode), len(inputs.Encode))
	results := &lpcorpus.Corpus{
		Decode: make(map[string]*lpcorpus.DecodeCorpusEntry),
		Encode: make(map[string]*lpcorpus.EncodeCorpusEntry),
	}
	for _, impl := range lpcodecs.Implementations {
		if impl.Decoder == nil {
			continue
		}
		for key, input := range inputs.Decode {
			r := &lpcorpus.DecodeCorpusEntry{
				Input: input,
			}
			var ps []*lpcorpus.Point
			var decodeErr error
			err := safe(func() {
				ps, decodeErr = impl.Decoder.Decode(input)
			})
			var errStr string
			switch {
			case err != nil:
				errStr = err.Error()
			case decodeErr != nil:
				if errors.As(decodeErr, new(*lpcodecs.SkipError)) {
					continue
				}
				errStr = decodeErr.Error()
			}
			r.Output = &lpcorpus.DecodeOutput{
				Result: ps,
				Error:  errStr,
			}
			results.Decode[key] = r
		}
	}
	for _, impl := range lpcodecs.Implementations {
		if impl.Encoder == nil {
			continue
		}
		for key, input := range inputs.Encode {
			r := &lpcorpus.EncodeCorpusEntry{
				Input: input,
			}
			text, err := impl.Encoder.Encode(input)
			var errStr string
			if err != nil {
				if errors.As(err, new(*lpcodecs.SkipError)) {
					continue
				}
				errStr = err.Error()
			}
			r.Output = &lpcorpus.EncodeOutput{
				Result: bytes.TrimSuffix(text, []byte{'\n'}),
				Error:  errStr,
			}
			results.Encode[key] = r
		}
	}
	if err := lpcorpus.WriteCorpus(dir, results); err != nil {
		return fmt.Errorf("cannot write results: %v", err)
	}
	return nil
}

func hasNonPrintable(t []byte) bool {
	if !utf8.Valid(t) {
		return true
	}
	for _, b := range t {
		if b < 32 && b != '\t' && b != '\r' && b != '\n' || b == 127 {
			return true
		}
	}
	return false
}

func safe(f func()) error {
	c := make(chan error, 1)
	go func() {
		defer func() {
			if r := recover(); r != nil {
				c <- fmt.Errorf("crash: %v\n%s", r, debug.Stack())
			}
		}()
		f()
		c <- nil
	}()
	select {
	case err := <-c:
		return err
	case <-time.After(200 * time.Millisecond):
		return fmt.Errorf("crash: timeout")
	}
	return nil
}
