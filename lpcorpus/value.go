package lpcorpus

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"math"
	"unicode/utf8"
)

// Note: this hacky union type is total overkill for this use, but the code might come in
// useful later in some place where high performance is more
// important so let's keep it for now.

// Value holds one of the possible line-protocol field values.
type Value struct {
	// number covers:
	//	- signed integer
	//	- unsigned integer
	//	- bool
	//	- float
	number uint64
	// bytes holds the string bytes or a sentinel (see below)
	// when the value's not holding a string.
	bytes []byte
}

var (
	intSentinel   = [1]byte{'i'}
	uintSentinel  = [1]byte{'u'}
	floatSentinel = [1]byte{'f'}
	boolSentinel  = [1]byte{'b'}
)

func MustNewValue(x interface{}) Value {
	v, ok := NewValue(x)
	if !ok {
		panic(fmt.Errorf("invalid value for NewValue: %T (%#v)", x, x))
	}
	return v
}

func (v1 Value) Equal(v2 Value) bool {
	k := v1.Kind()
	if v2.Kind() != k {
		return false
	}
	if k != Float {
		return v1.number == v2.number && bytes.Equal(v1.bytes, v2.bytes)
	}
	// Floats can't be compared bitwise.
	return v1.FloatV() == v2.FloatV()
}

func NewValue(x interface{}) (Value, bool) {
	switch x := x.(type) {
	case int64:
		return Value{
			number: uint64(x),
			bytes:  intSentinel[:],
		}, true
	case uint64:
		return Value{
			number: uint64(x),
			bytes:  uintSentinel[:],
		}, true
	case float64:
		//if math.IsInf(x, 0) || math.IsNaN(x) {
		//	return Value{}, false
		//}
		return Value{
			number: math.Float64bits(x),
			bytes:  floatSentinel[:],
		}, true
	case bool:
		n := uint64(0)
		if x {
			n = 1
		}
		return Value{
			number: uint64(n),
			bytes:  boolSentinel[:],
		}, true
	case string:
		return Value{
			bytes: []byte(x),
		}, true
	case []byte:
		// Could retain a reference to the []byte, but that's dubious.
		return Value{
			bytes: append([]byte(nil), x...),
		}, true
	}
	return Value{}, false
}

func (v Value) IntV() int64 {
	v.mustBe(Int)
	return int64(v.number)
}

func (v Value) UintV() uint64 {
	v.mustBe(Uint)
	return v.number
}

func (v Value) FloatV() float64 {
	v.mustBe(Float)
	return math.Float64frombits(v.number)
}

func (v Value) StringV() string {
	v.mustBe(String)
	return string(v.bytes)
}

func (v Value) BytesV() []byte {
	v.mustBe(String)
	return v.bytes
}

func (v Value) BoolV() bool {
	v.mustBe(Bool)
	return v.number != 0
}

func (v Value) Interface() interface{} {
	switch v.Kind() {
	case Int:
		return v.IntV()
	case Uint:
		return v.UintV()
	case String:
		return v.StringV()
	case Bool:
		return v.BoolV()
	case Float:
		return v.FloatV()
	default:
		panic("unknown value kind")
	}
}

type encodedValue struct {
	Int            *int64   `json:"int,omitempty"`
	Uint           *uint64  `json:"uint,omitempty"`
	Float          *float64 `json:"float,omitempty"`
	FloatNonNumber *string  `json:"floatNonNumber,omitempty"`
	Bool           *bool    `json:"bool,omitempty"`
	String         *string  `json:"string,omitempty"`
	Binary         *string  `json:"binary,omitempty"`
}

func (v Value) MarshalJSON() ([]byte, error) {
	var e encodedValue
	switch v.Kind() {
	case String:
		b := v.BytesV()
		if utf8.Valid(b) {
			e.String = new(string)
			*e.String = string(b)
		} else {
			e.Binary = new(string)
			*e.Binary = base64.StdEncoding.EncodeToString(b)
		}
	case Float:
		x := v.FloatV()
		switch {
		case math.IsInf(x, 0):
			e.FloatNonNumber = new(string)
			*e.FloatNonNumber = "Inf"
		case math.IsNaN(x):
			e.FloatNonNumber = new(string)
			*e.FloatNonNumber = "NaN"
		default:
			e.Float = new(float64)
			*e.Float = x
		}
	case Int:
		e.Int = new(int64)
		*e.Int = v.IntV()
	case Uint:
		e.Uint = new(uint64)
		*e.Uint = v.UintV()
	case Bool:
		e.Bool = new(bool)
		*e.Bool = v.BoolV()
	default:
		panic("unreachable")
	}
	return json.Marshal(e)
}

func (v *Value) UnmarshalJSON(data []byte) error {
	var e encodedValue
	if err := json.Unmarshal(data, &e); err != nil {
		return err
	}
	if n := 0 +
		boolInt(e.String != nil) +
		boolInt(e.Binary != nil) +
		boolInt(e.Float != nil) +
		boolInt(e.FloatNonNumber != nil) +
		boolInt(e.Int != nil) +
		boolInt(e.Uint != nil) +
		boolInt(e.Bool != nil); n != 1 {
		return fmt.Errorf("value requires exactly one field but got %d", n)
	}
	switch {
	case e.String != nil:
		*v = MustNewValue(*e.String)
	case e.Binary != nil:
		data, err := base64.StdEncoding.DecodeString(*e.Binary)
		if err != nil {
			return fmt.Errorf("invalid base64 value in binary: %v", err)
		}
		*v = MustNewValue(data)
	case e.Int != nil:
		*v = MustNewValue(*e.Int)
	case e.Uint != nil:
		*v = MustNewValue(*e.Uint)
	case e.Bool != nil:
		*v = MustNewValue(*e.Bool)
	case e.Float != nil:
		*v = MustNewValue(*e.Float)
	case e.FloatNonNumber != nil:
		switch *e.FloatNonNumber {
		case "Inf":
			*v = MustNewValue(math.Inf(1))
		case "NaN":
			*v = MustNewValue(math.NaN())
		default:
			return fmt.Errorf("invalid non-number float %q (expect Inf or NaN)", *e.FloatNonNumber)
		}
	default:
		panic("unreachable")
	}
	return nil
}

func (v Value) mustBe(k ValueKind) {
	if v.Kind() != k {
		panic(fmt.Errorf("value has unexpected kind; got %v want %v", v.Kind(), k))
	}
}

func (v Value) Kind() ValueKind {
	if len(v.bytes) != 1 {
		return String
	}
	switch &v.bytes[0] {
	case &intSentinel[0]:
		return Int
	case &uintSentinel[0]:
		return Uint
	case &floatSentinel[0]:
		return Float
	case &boolSentinel[0]:
		return Bool
	}
	return String
}

func (v Value) String() string {
	switch v.Kind() {
	case Float:
		return fmt.Sprint(v.FloatV())
	case Int:
		return fmt.Sprintf("%di", v.IntV())
	case Uint:
		return fmt.Sprintf("%du", v.UintV())
	case Bool:
		return fmt.Sprint(v.BoolV())
	case String:
		return fmt.Sprintf("%q", v.StringV())
	default:
		panic("unknown kind")
	}
}

type ValueKind uint8

const (
	Unknown ValueKind = iota
	String
	Int
	Uint
	Float
	Bool
)

var kinds = []string{
	Unknown: "unknown",
	String:  "string",
	Int:     "int",
	Uint:    "uint",
	Float:   "float",
	Bool:    "bool",
}

func (k ValueKind) String() string {
	return kinds[k]
}

func (k ValueKind) MarshalText() ([]byte, error) {
	if k == Unknown {
		return nil, fmt.Errorf("cannot marshal 'unknown' value type")
	}
	return []byte(k.String()), nil
}

func (k *ValueKind) UnmarshalText(data []byte) error {
	s := string(data)
	for i, kstr := range kinds {
		if i > 0 && kstr == s {
			*k = ValueKind(i)
			return nil
		}
	}
	return fmt.Errorf("unknown Value kind %q", s)
}

func boolInt(b bool) int {
	if b {
		return 1
	}
	return 0
}
