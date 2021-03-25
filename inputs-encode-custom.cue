package lpcorpus

inputs: encode: custom: [{
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
