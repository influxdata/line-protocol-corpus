// Package lpcodecs contains various Go implementations of line-protocol
// codecs shoehorned into a consistent interface.
package lpcodecs

import (
	"fmt"

	"github.com/influxdata/line-protocol-corpus/lpcorpus"
)

type Implementation struct {
	Decoder Decoder
	Encoder Encoder
}

var Implementations = map[string]Implementation{
	"lineprotocolv2": {
		Decoder: lineProtocolV2Decoder{},
		Encoder: lineProtocolV2Encoder{},
	},
}

type Decoder interface {
	Decode(input *lpcorpus.DecodeInput) ([]*lpcorpus.Point, error)
}

type Encoder interface {
	Encode(input *lpcorpus.EncodeInput) ([]byte, error)
}

// SkipError is returned from Encoder or Decoder when
// the encode or decode operation isn't supported
// for whatever reason.
type SkipError struct {
	Reason string
}

func (err *SkipError) Error() string {
	return fmt.Sprintf("skipped: %v", err.Reason)
}

// SkipErrorf returns a *SkipError instance with the given
// reason (formatted as for fmt.Sprintf).
func SkipErrorf(f string, a ...interface{}) error {
	return &SkipError{
		Reason: fmt.Sprintf(f, a...),
	}
}
