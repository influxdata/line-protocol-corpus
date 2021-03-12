package lpcorpus

import (
	"encoding/json"
	"math"
	"testing"

	qt "github.com/frankban/quicktest"
	"github.com/google/go-cmp/cmp/cmpopts"
	"gopkg.in/yaml.v3"
)

var valueMarshalTests = []struct {
	testName   string
	val        Value
	expectJSON string
}{{
	testName:   "int",
	val:        MustNewValue(int64(1234)),
	expectJSON: `{"int":1234}`,
}, {
	testName:   "int",
	val:        MustNewValue(uint64(1234)),
	expectJSON: `{"uint":1234}`,
}, {
	testName:   "float",
	val:        MustNewValue(4.5),
	expectJSON: `{"float":4.5}`,
}, {
	testName:   "bool",
	val:        MustNewValue(false),
	expectJSON: `{"bool":false}`,
}, {
	testName:   "string",
	val:        MustNewValue("hello"),
	expectJSON: `{"string":"hello"}`,
}, {
	testName:   "binary",
	val:        MustNewValue("hello\xff"),
	expectJSON: `{"binary":"aGVsbG//"}`,
}, {
	testName:   "infinity",
	val:        MustNewValue(math.Inf(1)),
	expectJSON: `{"floatNonNumber":"Inf"}`,
}, {
	testName:   "NaN",
	val:        MustNewValue(math.NaN()),
	expectJSON: `{"floatNonNumber":"NaN"}`,
}}

func TestValueMarshal(t *testing.T) {
	c := qt.New(t)
	for _, test := range valueMarshalTests {
		c.Run(test.testName, func(c *qt.C) {
			data, err := yaml.Marshal(test.val)
			c.Assert(err, qt.IsNil)

			data, err = json.Marshal(test.val)
			c.Assert(err, qt.IsNil)
			c.Assert(string(data), qt.Equals, test.expectJSON)

			var v Value
			err = json.Unmarshal(data, &v)
			c.Assert(err, qt.IsNil)
			c.Assert(v, qt.CmpEquals(cmpopts.EquateNaNs()), test.val)
		})
	}
}
