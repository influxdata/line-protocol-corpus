package lpcorpus

inputs: decode: custom: [{
	text:        "cpu,something= value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:	"cpu_load_short,host=server01,region=us-west"
	precision: "1ns"
	defaultTime: 42000000000
}]
