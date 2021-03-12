// Line-protocol test corpus.
package lpcorpus

import (
	"encoding/hex"
	"encoding/json"
	"crypto/md5"
)

// #DecodeInput specifies an input to the decoder.
#DecodeInput: {
	key: "\(hex.Encode(md5.Sum(json.Marshal({
		"text":        text // Note: this has potential for ambiguity.
		"defaultTime": defaultTime
		"precision":   precision
	}))))"
	text: string | {
		// binary holds base64-encoded text.
		binary: string
	}
	// defaultTime holds the default time to use when
	// there is no time in a line-protocol data point,
	// in nanoseconds since the Unix epoch.
	defaultTime: int
	// precision holds the precision to use when interpreting
	// timestamps.
	precision:   #Precision

	// implementation shows which implementation this
	// test input came from.
	implementation: string
}

// EncodeInput specifies an input to the encoder.
#EncodeInput: {
	key: "\(hex.Encode(md5.Sum(json.Marshal({
		"point":             point
		"precision":         precision
	}))))"

	// point specifies the point to encode.
	point:             #Point

	// precision specifies the precision of the timestamps to
	// include in the result.
	precision:         #Precision

	// implementation shows which implementation this
	// test input came from.
	implementation: string
}

#Precision: "1ns" | "1µs" | "1ms" | "1s" | "1m" | "1h"

#Point: {
	time: int
	name: #StringOrBinary
	tags: [... #Tag]
	fields: [... #Field]
}

// StringOrBinary holds either a string or base64-encoded text.
#StringOrBinary: string | {
	binary: string
}

// Tag specifies a line-protocol tag.
#Tag: {
	key:   #StringOrBinary
	value: #StringOrBinary
}

// Field specifies a line-protocol field.
#Field: {
	key:   #StringOrBinary
	value: #Value
}

// Value specifies a line-protocol field value.
#Value: {
	int: int
} | {
	uint: uint
} | {
	float: number
} | {
	bool: bool
} | {
	string: string
} | {
	// base64-encoded binary value.
	binary: string
} | {
	// Note: even though line-protocol doesn't allow
	// this, we allow it here so that we can specify
	// non-finite inputs to the encoder.
	floatNonNumber: "NaN" | "Inf"
}

// inputs holds all the inputs to the corpus.
inputs: decode: [impl=_]: [... #DecodeInput]
inputs: decode: [impl=_]: [... {
	implementation: impl
}]
inputs: encode: [impl=_]: [... #EncodeInput]
inputs: encode: [impl=_]: [... {
	implementation: impl
}]

// inputsByKey summarises all the inputs into
// a single map keyed by the hash of the input.
inputsByKey: {
	for which, impls in inputs
	for impl, testInputs in impls
	for t in testInputs {
		"\(which)": "\(t.key)": t
	}
}

// corpus holds all the inputs and expected outputs.
corpus: decode: [key=_]: #DecodeCorpusEntry
corpus: encode: [key=_]: #EncodeCorpusEntry

#DecodeCorpusEntry: {
	input:  #DecodeInput
	output: #DecodeOutput
}

#EncodeCorpusEntry: {
	input:  #EncodeInput
	output: #EncodeOutput
}

#EncodeOutput: #Output & {
	result?: #StringOrBinary
	...
}

#DecodeOutput: #Output & {
	result?: [... #Point]
	...
}

#Output: *{
	// Note: we've got this as a default because it's
	// awkward to get Go to omit empty slice but not nil slice.
	result: _
} | {
	error: string
}
