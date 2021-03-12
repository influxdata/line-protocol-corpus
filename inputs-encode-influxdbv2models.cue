package lpcorpus

inputs: encode: influxdbv2models: [{
	point: {
		time: -1
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -34526000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -6795364578871345152
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: -9223372036854775806
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu load"
		tags: [{
			key:   "region"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu main"
		tags: [{
			key:   "tag bar"
			value: "value"
		}]
		fields: [{
			key: "name bar"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		fields: [{
			key: "\\a"
			value: int: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		fields: [{
			key: "value"
			value: string: "1970-01-01 00:00:00 +0000 UTC"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   " "
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "reg\\=ion"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "region zone"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "region,zone"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "\\ east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "\\,,=east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "eas\\ t"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "eas\\t"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east west"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east"
		}]
		fields: [{
			key: "value ms"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: string: "1"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: string: "1,0"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east"
		}]
		fields: [{
			key: "value,ms"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east,west"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu"
		tags: [{
			key:   "regions"
			value: "east\\ "
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu,main"
		tags: [{
			key:   "regions"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu,main"
		tags: [{
			key:   "tag,bar"
			value: "value"
		}]
		fields: [{
			key: "name,bar"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu=load"
		tags: [{
			key:   "equals=foo"
			value: "tag=value"
		}]
		fields: [{
			key: "value"
			value: int: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu=load"
		tags: [{
			key:   "region"
			value: "east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "cpu=main"
		tags: [{
			key:   "tag=bar"
			value: "value=foo"
		}]
		fields: [{
			key: "name=bar"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "foo,bar"
		fields: [{
			key: "value"
			value: int: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "t"
		fields: [{
			key: "s"
			value: string: "abcdefg"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "t"
		fields: [{
			key: "s"
			value: string: "backslash \\ then quote \" ."
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "t"
		fields: [{
			key: "s"
			value: string: "one double quote \" ."
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "t"
		fields: [{
			key: "s"
			value: string: "quote \" then backslash \\ ."
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 0
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "\"cpu\""
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: float: -0.64
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 6632243
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: int: 6632243
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: string: "test\""
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: string: "test\\"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: string: "test\\\""
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "\"host\""
			value: "\"serverA\""
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "F"
			value: bool: false
		}, {
			key: "FALSE"
			value: bool: false
		}, {
			key: "False"
			value: bool: false
		}, {
			key: "T"
			value: bool: true
		}, {
			key: "TRUE"
			value: bool: true
		}, {
			key: "True"
			value: bool: true
		}, {
			key: "f"
			value: bool: false
		}, {
			key: "false"
			value: bool: false
		}, {
			key: "t"
			value: bool: true
		}, {
			key: "true"
			value: bool: true
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "bool"
			value: bool: false
		}, {
			key: "float"
			value: float: 11
		}, {
			key: "float2"
			value: float: 12.123
		}, {
			key: "int"
			value: int: 10
		}, {
			key: "str"
			value: string: "string val"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo \" bar"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo bar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo"
		}, {
			key: "str2"
			value: string: "bar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo,bar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo=bar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo\\"
		}, {
			key: "str2"
			value: string: "bar"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo\\,bar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "str"
			value: string: "foo\nbar"
		}, {
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: string: "wè"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: string: "{Hello\"{,}\" World}"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1000000000
		name: "cpu"
		tags: [{
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "us-east"
		}]
		fields: [{
			key: "value"
			value: string: "{Hello\"{\\,}\" World}"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1257894000000000000
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1441103862125
		name: "baz"
		tags: [{
			key:   "mytag"
			value: "\"a"
		}]
		fields: [{
			key: "x"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1441103862126
		name: "baz"
		tags: [{
			key:   "mytag"
			value: "a"
		}]
		fields: [{
			key: "z"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427072239
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 1603976386427250217
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "A FOO"
			value: "bar"
		}, {
			key:   "APPLE"
			value: "orange"
		}, {
			key:   "host"
			value: "serverA"
		}, {
			key:   "region"
			value: "uswest"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: float: 42
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "a"
			value: int: 42
		}, {
			key: "b"
			value: string: "things"
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 231845000000000
		name: "test"
		tags: [{
			key:   "foo"
			value: "bar"
		}]
		fields: [{
			key: "boolean"
			value: bool: false
		}, {
			key: "float64-large"
			value: float: 1.7976931348623157e+308
		}, {
			key: "float64-tiny"
			value: float: 5e-324
		}, {
			key: "int64"
			value: int: 9223372036854775807
		}, {
			key: "string"
			value: string: "String field that has a decent length, probably some log message or something"
		}, {
			key: "uint32"
			value: int: 4294967295
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 9223372036854775806
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}, {
	point: {
		time: 946730096789012345
		name: "cpu"
		fields: [{
			key: "value"
			value: float: 1
		}]
	}
	precision: "1ns"
}]
