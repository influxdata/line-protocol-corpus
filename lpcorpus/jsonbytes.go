package lpcorpus

import (
	"encoding/base64"
	"encoding/json"
	"fmt"
	"unicode/utf8"
)

// Bytes implements a byte slice that knows how to marshal itself into
// and out of JSON while preserving raw-byte integrity.
type Bytes []byte

type base64Str struct {
	Binary string `yaml:"binary" json:"binary"`
}

func (b Bytes) MarshalJSON() ([]byte, error) {
	if utf8.Valid(b) {
		return json.Marshal(string(b))
	}
	return json.Marshal(base64Str{
		Binary: base64.StdEncoding.EncodeToString(b),
	})
}

func (b *Bytes) UnmarshalJSON(data []byte) error {
	if data[0] == '{' {
		var bstr base64Str
		if err := json.Unmarshal(data, &bstr); err != nil {
			return err
		}
		dec, err := base64.StdEncoding.DecodeString(bstr.Binary)
		if err != nil {
			return fmt.Errorf("cannot decode binary base64 value: %v", err)
		}
		*b = dec
		return nil
	}
	var s string
	if err := json.Unmarshal(data, &s); err != nil {
		return err
	}
	*b = []byte(s)
	return nil
}
