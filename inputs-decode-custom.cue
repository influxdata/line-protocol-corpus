package lpcorpus

import ( "encoding/base64"

	// This file holds encoding test cases created specifically for this corpus,
	// not abstracted from existing test suites.
)

inputs: decode: custom: [... {
	defaultTime: *42000000000 | _
	precision:   *"1ns" | _
}]

inputs: decode: custom: [{
	about: "missing tag value"
	text:  "cpu,something= value=42"
}, {
	about: "no values"
	text:  "cpu_load_short,host=server01,region=us-west"
}, {
	about: "invalid utf-8 in measurement"
	text: binary: base64.Encode(null, 'bad\xff v=1')
}, {
	about: "invalid utf-8 in tag key"
	text: binary: base64.Encode(null, 'm,bad\xff=foo v=1')
}, {
	about: "invalid utf-8 in tag value"
	text: binary: base64.Encode(null, 'm,foo=bad\xff v=1')
}, {
	about: "invalid utf-8 in field key"
	text: binary: base64.Encode(null, 'm bad\xff=1')
}, {
	about: "invalid utf-8 in field value"
	text: binary: base64.Encode(null, 'm f="bad\xff"')
}, {
	about: "invalid unicode white space"
	text:  "m\u00A0v=1"
}, {
	about: "tab indentation"
	text:  "\tm v=1"
}, {
	about: "non-printable character in measurement",
	text: "x\u0001y v=1",
}, {
	about: "non-printable character in tag key",
	text: "m,x\u0001y=v v=1",
}, {
	about: "non-printable character in tag value",
	text: "m,k=x\u0001y v=1",
}, {
	about: "non-printable character in field key",
	text: "m x\u0001y=1",
}, {
	about: "non-printable character in field value",
	text: "m v=\"x\u0001y\"",
}, {
	about: "backslash-n in string field",
	text: "m v=\"\\n\"",
}, {
	about: "backslash-r in string field",
	text: "m v=\"\\r\"",
}, {
	about: "backslash-t in string field",
	text: "m v=\"\\t\"",
}]
