package lpcorpus

// This file holds encoding test cases created specifically for this corpus,
// not abstracted from existing test suites.

inputs: encode: custom: [{
	about: "empty tag value"
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "something"
			value: ""
		}]
		fields: [{
			key: "value"
			value: float: 42
		}]
	}
	precision: "1ns"
}]
