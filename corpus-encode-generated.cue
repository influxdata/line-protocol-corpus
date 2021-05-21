package lpcorpus

corpus: encode: {
	"0105abe9e4c39b541897bea179d0b71f": {
		input: {
			key: "0105abe9e4c39b541897bea179d0b71f"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu\\,main,tag\\,bar=value name\\,bar=1 0"
	}
	"031740cc6d7f52b666c991dcf850a942": {
		input: {
			key: "031740cc6d7f52b666c991dcf850a942"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo bar\",value=1 1000000000"
	}
	"04c34189bced1cf9a530069c4034e523": {
		input: {
			key: "04c34189bced1cf9a530069c4034e523"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" 231845000000000"
	}
	"0517f937397f70d236e2c62a3b846028": {
		input: {
			key: "0517f937397f70d236e2c62a3b846028"
			point: {
				time: 0
				name: "cpu"
				fields: [{
					key: "value"
					value: string: "1970-01-01 00:00:00 +0000 UTC"
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=\"1970-01-01 00:00:00 +0000 UTC\" 0"
	}
	"0ba421b5d645292628f415a4771737ce": {
		input: {
			key: "0ba421b5d645292628f415a4771737ce"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east value\\ ms=1 0"
	}
	"0ecc42f59282b09828992e4602a02ef5": {
		input: {
			key: "0ecc42f59282b09828992e4602a02ef5"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 -34526000000000"
	}
	"0f296ff7badc2ec21b1153e9d9e65fd5": {
		input: {
			key: "0f296ff7badc2ec21b1153e9d9e65fd5"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: string: "test\\"
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=\"test\\\\\" 1000000000"
	}
	"134a1911da33afa7a8a993b4e052c1a7": {
		input: {
			key: "134a1911da33afa7a8a993b4e052c1a7"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 231845000000000"
	}
	"13f176ba06fc6d5419f622c81b363a57": {
		input: {
			key: "13f176ba06fc6d5419f622c81b363a57"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427072239"
	}
	"19eb7d2ac3c87d4cb177b25e447702a8": {
		input: {
			key: "19eb7d2ac3c87d4cb177b25e447702a8"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" 231845000000000"
	}
	"1b092ebfecdd0ee0ff2e73a536789b6e": {
		input: {
			key: "1b092ebfecdd0ee0ff2e73a536789b6e"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,\"host\"=\"serverA\",region=us-east value=1 1000000000"
	}
	"1b0a0c3613257c12015a08113064f131": {
		input: {
			key: "1b0a0c3613257c12015a08113064f131"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east F=false,FALSE=false,False=false,T=true,TRUE=true,True=true,f=false,false=false,t=true,true=true 1000000000"
	}
	"1c9d15ccfec30dc7efffc1a2290979bd": {
		input: {
			key: "1c9d15ccfec30dc7efffc1a2290979bd"
			point: {
				time: 0
				name: "t"
				fields: [{
					key: "s"
					value: string: "abcdefg"
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "t s=\"abcdefg\" 0"
	}
	"1f2efe48aacd4c0c5920047dd1fad17c": {
		input: {
			key: "1f2efe48aacd4c0c5920047dd1fad17c"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,region\\ zone=east value=1 0"
	}
	"206afc69fac41b5999879d3fd9781dfe": {
		input: {
			key: "206afc69fac41b5999879d3fd9781dfe"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 1603976386427250217"
	}
	"20f288a995174bed597f0b405df7756b": {
		input: {
			key: "20f288a995174bed597f0b405df7756b"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=\\\\,\\,\\=east value=1 0"
	}
	"26b24144619c1f028514edc493b621b7": {
		input: {
			key: "26b24144619c1f028514edc493b621b7"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427072239"
	}
	"290c8768cf2d18a450471387f7990cc2": {
		input: {
			key: "290c8768cf2d18a450471387f7990cc2"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 -34526000000000"
	}
	"2a7c6126ae46f4936b11858d606bcff2": {
		input: {
			key: "2a7c6126ae46f4936b11858d606bcff2"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" 1603976386427072239"
	}
	"2d63f0d401a687fb87755362ba726cfd": {
		input: {
			key: "2d63f0d401a687fb87755362ba726cfd"
			point: {
				time: -6795364578871345152
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 -6795364578871345152"
	}
	"2f5430b27eb992b2e1e284413b5cb0a0": {
		input: {
			key: "2f5430b27eb992b2e1e284413b5cb0a0"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu=load,equals\\=foo=tag\\=value value=1i 0"
	}
	"34f17db4b263f6f2647d931eae615510": {
		input: {
			key: "34f17db4b263f6f2647d931eae615510"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 6632243
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=6.632243e+06 1000000000"
	}
	"351e0156ac49530a349a1378737f4429": {
		input: {
			key: "351e0156ac49530a349a1378737f4429"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" -6795364578871345152"
	}
	"3883d1cd1b4cb7511407779a7c231ec2": {
		input: {
			key: "3883d1cd1b4cb7511407779a7c231ec2"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east value=\"1\" 0"
	}
	"3c573f6582d79bf7e7a215f1ebbecda1": {
		input: {
			key: "3c573f6582d79bf7e7a215f1ebbecda1"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east value=\"{Hello\\\"{\\\\,}\\\" World}\" 1000000000"
	}
	"3c65c0ec46bad19196607e753f379855": {
		input: {
			key: "3c65c0ec46bad19196607e753f379855"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "baz,mytag=\"a x=1 1441103862125"
	}
	"3cd7ada44a589e3712ab2f26a4a8506c": {
		input: {
			key: "3cd7ada44a589e3712ab2f26a4a8506c"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east bool=false,float=11,float2=12.123,int=10i,str=\"string val\" 1000000000"
	}
	"3db8bb82f88462f6acd7f8346466cbcf": {
		input: {
			key: "3db8bb82f88462f6acd7f8346466cbcf"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east value=1 1000000000"
	}
	"3ee38b7d2d04585f837015b95c47e009": {
		input: {
			key: "3ee38b7d2d04585f837015b95c47e009"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -34526000000000"
	}
	"4313ea2e07b048dd4b8e77096bd2a587": {
		input: {
			key: "4313ea2e07b048dd4b8e77096bd2a587"
			point: {
				time: 0
				name: "foo,bar"
				fields: [{
					key: "value"
					value: int: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "foo\\,bar value=1i 0"
	}
	"44632134110903ff168f33cd3bb16c81": {
		input: {
			key: "44632134110903ff168f33cd3bb16c81"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427250217"
	}
	"47ea12c814d7e5acafff2ef1259cc5da": {
		input: {
			key: "47ea12c814d7e5acafff2ef1259cc5da"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 0"
	}
	"4882ad9b717ae1679813e09c3e9cae92": {
		input: {
			key: "4882ad9b717ae1679813e09c3e9cae92"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427250217"
	}
	"4be4ec3835578809546d2cc01975ad22": {
		input: {
			key: "4be4ec3835578809546d2cc01975ad22"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east\\,west value=1 0"
	}
	"4c79db9fd1a45fe7ee17fc266634aee8": {
		input: {
			key: "4c79db9fd1a45fe7ee17fc266634aee8"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=eas\\t value=1 0"
	}
	"51a9ad020ff9faebac6c85c30fbd5701": {
		input: {
			key: "51a9ad020ff9faebac6c85c30fbd5701"
			point: {
				time: -9223372036854775806
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 -9223372036854775806"
	}
	"52cb7ef1f5ace0c08e6da92e62111739": {
		input: {
			key: "52cb7ef1f5ace0c08e6da92e62111739"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east\\ west value=1 0"
	}
	"544dc628c53e388bf40b4f3e4d78d661": {
		input: {
			key: "544dc628c53e388bf40b4f3e4d78d661"
			point: {
				time: 231845000000000
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 231845000000000"
	}
	"5463ae69cf76109363c3b38454bfa089": {
		input: {
			key: "5463ae69cf76109363c3b38454bfa089"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -34526000000000"
	}
	"554d9c23fb529b81ea57a11fc10764fc": {
		input: {
			key: "554d9c23fb529b81ea57a11fc10764fc"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east value\\,ms=1 0"
	}
	"56576ae2c562f0a99164a33a49980610": {
		input: {
			key: "56576ae2c562f0a99164a33a49980610"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -6795364578871345152"
	}
	"56b8402f3ed705b9d2d9a7d67bc468cb": {
		input: {
			key: "56b8402f3ed705b9d2d9a7d67bc468cb"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" -34526000000000"
	}
	"56efeb43a2e01f18c74ed86f8c7e8e1e": {
		input: {
			key: "56efeb43a2e01f18c74ed86f8c7e8e1e"
			point: {
				time: 1603976386427072239
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 1603976386427072239"
	}
	"56fc62cb570f019ed3895c218bb0174c": {
		input: {
			key: "56fc62cb570f019ed3895c218bb0174c"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 0"
	}
	"57103cc25911d721726ff77e5ed8e464": {
		input: {
			key: "57103cc25911d721726ff77e5ed8e464"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" -6795364578871345152"
	}
	"580480a0a16d468f85b415db91f709a1": {
		input: {
			key: "580480a0a16d468f85b415db91f709a1"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 -6795364578871345152"
	}
	"591bacbbbdc3b0756115e3ef37a162b5": {
		input: {
			key: "591bacbbbdc3b0756115e3ef37a162b5"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east value=\"{Hello\\\"{,}\\\" World}\" 1000000000"
	}
	"5d55ecf6a0bdfe1b83eb77e8a0c4bcf4": {
		input: {
			key: "5d55ecf6a0bdfe1b83eb77e8a0c4bcf4"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu=main,tag\\=bar=value\\=foo name\\=bar=1 0"
	}
	"61a81aa77f37e7c831d682a312fbaa03": {
		input: {
			key: "61a81aa77f37e7c831d682a312fbaa03"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu\\,main,regions=east value=1 0"
	}
	"65a52922c8cba2673eff7194628cc1e0": {
		input: {
			key: "65a52922c8cba2673eff7194628cc1e0"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo\\nbar\",value=1 1000000000"
	}
	"70101bc0874d57fec2f83497a5a6ece4": {
		input: {
			key: "70101bc0874d57fec2f83497a5a6ece4"
			point: {
				time: 0
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 0"
	}
	"714260b6d91f4359f9aebf90a335c2c1": {
		input: {
			key: "714260b6d91f4359f9aebf90a335c2c1"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: float: -0.64
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=-0.64 1000000000"
	}
	"72fe529da6084a44692fe27cc2f105d1": {
		input: {
			key: "72fe529da6084a44692fe27cc2f105d1"
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
			about:          "empty tag value"
			precision:      "1ns"
			implementation: "custom"
		}
		output: error: "invalid tag value something=\"\""
	}
	"732ea402b4141ebcbedd6f9bfb51f4a8": {
		input: {
			key: "732ea402b4141ebcbedd6f9bfb51f4a8"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: string: "test\""
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=\"test\\\"\" 1000000000"
	}
	"766437889e7a42656dd59dc97d8cb453": {
		input: {
			key: "766437889e7a42656dd59dc97d8cb453"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "baz,mytag=a z=1 1441103862126"
	}
	"76e76945eb138385d1323f1e6cc4cdf9": {
		input: {
			key: "76e76945eb138385d1323f1e6cc4cdf9"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -34526000000000"
	}
	"786fade57b0593d1d0ead80470031209": {
		input: {
			key: "786fade57b0593d1d0ead80470031209"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 0"
	}
	"7b5da10b12d18523846361f113fb8de6": {
		input: {
			key: "7b5da10b12d18523846361f113fb8de6"
			point: {
				time: 0
				name: "t"
				fields: [{
					key: "s"
					value: string: "backslash \\ then quote \" ."
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "t s=\"backslash \\\\ then quote \\\" .\" 0"
	}
	"7b7eb7766c5da62ff8b9b4d843a65ae6": {
		input: {
			key: "7b7eb7766c5da62ff8b9b4d843a65ae6"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 -6795364578871345152"
	}
	"7ba2f783e396e8a9f2f1915ad43e61aa": {
		input: {
			key: "7ba2f783e396e8a9f2f1915ad43e61aa"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" 0"
	}
	"7c0c4a665d3581854019e2c01c485f56": {
		input: {
			key: "7c0c4a665d3581854019e2c01c485f56"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east\\\\  value=1 0"
	}
	"80cea0f24a04dd3e12c62a1fd3406b5c": {
		input: {
			key: "80cea0f24a04dd3e12c62a1fd3406b5c"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "\"cpu\",host=serverA,region=us-east value=1 1000000000"
	}
	"868a1af1e8e68f10445a132756f310e3": {
		input: {
			key: "868a1af1e8e68f10445a132756f310e3"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 231845000000000"
	}
	"8a2ed24a76ed44954769cfdb5e138a99": {
		input: {
			key: "8a2ed24a76ed44954769cfdb5e138a99"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: int: 6632243
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=6632243i 1000000000"
	}
	"907818104062cce8ffdf4dfddcbf8f45": {
		input: {
			key: "907818104062cce8ffdf4dfddcbf8f45"
			point: {
				time: 9223372036854775806
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 9223372036854775806"
	}
	"944e5ff9bf35c0b78d46acfacb82234a": {
		input: {
			key: "944e5ff9bf35c0b78d46acfacb82234a"
			point: {
				time: -34526000000000
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 -34526000000000"
	}
	"951f12b69fde059c70c581dfeb10d990": {
		input: {
			key: "951f12b69fde059c70c581dfeb10d990"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu\\ load,region=east value=1 0"
	}
	"96db83805481dcb8c8642017935bcbcb": {
		input: {
			key: "96db83805481dcb8c8642017935bcbcb"
			point: {
				time: 0
				name: "t"
				fields: [{
					key: "s"
					value: string: "quote \" then backslash \\ ."
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "t s=\"quote \\\" then backslash \\\\ .\" 0"
	}
	"985de6aea5954a2066f08882f379c1fa": {
		input: {
			key: "985de6aea5954a2066f08882f379c1fa"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" 1603976386427250217"
	}
	"9987fc078d49e16c16d8f5693ebf9140": {
		input: {
			key: "9987fc078d49e16c16d8f5693ebf9140"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu=load,region=east value=1 0"
	}
	"999e6a60a8162682cd62f4df51bb3875": {
		input: {
			key: "999e6a60a8162682cd62f4df51bb3875"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -6795364578871345152"
	}
	"9cdc6fb95e082cb97b46e017ce4f669d": {
		input: {
			key: "9cdc6fb95e082cb97b46e017ce4f669d"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 1603976386427072239"
	}
	"9ce4e716b8ba198c7a6a16cf12c8c1e3": {
		input: {
			key: "9ce4e716b8ba198c7a6a16cf12c8c1e3"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=\\\\ east value=1 0"
	}
	"9d56af0149597e206677f9935ae7f9ff": {
		input: {
			key: "9d56af0149597e206677f9935ae7f9ff"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" 1603976386427250217"
	}
	"9ef3116d3abf753c42ef451d23a36b7f": {
		input: {
			key: "9ef3116d3abf753c42ef451d23a36b7f"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo \\\" bar\" 1000000000"
	}
	a2660222062ea0edc4ec9221f3e36253: {
		input: {
			key: "a2660222062ea0edc4ec9221f3e36253"
			point: {
				time: 0
				name: "cpu"
				fields: [{
					key: "\\a"
					value: int: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu \\a=1i 0"
	}
	a584c7f7d4a19194d9ee03feb06d70b0: {
		input: {
			key: "a584c7f7d4a19194d9ee03feb06d70b0"
			point: {
				time: 0
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 0"
	}
	a69f537b5a842219a7576dd38ff85b0b: {
		input: {
			key: "a69f537b5a842219a7576dd38ff85b0b"
			point: {
				time: 1603976386427250217
				name: "test"
				fields: [{
					key: "a"
					value: float: 42
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42 1603976386427250217"
	}
	afabdf09cb1624d90f77dd69abe5353e: {
		input: {
			key: "afabdf09cb1624d90f77dd69abe5353e"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 231845000000000"
	}
	b06577db7c1d911345f274f137f0300b: {
		input: {
			key: "b06577db7c1d911345f274f137f0300b"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" 1603976386427250217"
	}
	b0a8e26701e050c86eb4d52982ca16b0: {
		input: {
			key: "b0a8e26701e050c86eb4d52982ca16b0"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: string: "test\\\""
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=\"test\\\\\\\"\" 1000000000"
	}
	b3db57d81f6283cd8ffdc25df4ef66d1: {
		input: {
			key: "b3db57d81f6283cd8ffdc25df4ef66d1"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=eas\\\\ t value=1 0"
	}
	b4dc90be60ec7f50afdd918fae1987fd: {
		input: {
			key: "b4dc90be60ec7f50afdd918fae1987fd"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 0"
	}
	b776cb5d66a99eae87376d4cbd9d2b09: {
		input: {
			key: "b776cb5d66a99eae87376d4cbd9d2b09"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427250217"
	}
	be213135f2efd286fc7817ede6441936: {
		input: {
			key: "be213135f2efd286fc7817ede6441936"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo=bar\",value=1 1000000000"
	}
	bffb0e153da5672aa122e8c5061c795f: {
		input: {
			key: "bffb0e153da5672aa122e8c5061c795f"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 1603976386427072239"
	}
	c04f46c192ef9c44286de79a14409e93: {
		input: {
			key: "c04f46c192ef9c44286de79a14409e93"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo\",str2=\"bar\",value=1 1000000000"
	}
	c1dfca6f386c17bdc1747a9f43d6fef3: {
		input: {
			key: "c1dfca6f386c17bdc1747a9f43d6fef3"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" -34526000000000"
	}
	c2368e40eb3671f4552cfd1ceac46ae2: {
		input: {
			key: "c2368e40eb3671f4552cfd1ceac46ae2"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" -6795364578871345152"
	}
	c283ff7387fb08d709c28679e39f0c3b: {
		input: {
			key: "c283ff7387fb08d709c28679e39f0c3b"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,region\\,zone=east value=1 0"
	}
	c76bed39064deee3864509c9c6a82392: {
		input: {
			key: "c76bed39064deee3864509c9c6a82392"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,regions=east value=\"1,0\" 0"
	}
	c7c1f56c71bd7f9dc5362e341f07e403: {
		input: {
			key: "c7c1f56c71bd7f9dc5362e341f07e403"
			point: {
				time: 1000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 1000000000"
	}
	c85e6a9c248f058ef079aca83a8a5ebe: {
		input: {
			key: "c85e6a9c248f058ef079aca83a8a5ebe"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east value=\"wè\" 1000000000"
	}
	c9095b12d8780551e634fc0c350bf5b2: {
		input: {
			key: "c9095b12d8780551e634fc0c350bf5b2"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu\\ main,tag\\ bar=value name\\ bar=1 0"
	}
	cbd6b89b94e71a69a3472a4c3d881e6d: {
		input: {
			key: "cbd6b89b94e71a69a3472a4c3d881e6d"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo,bar\",value=1 1000000000"
	}
	ccabc0490736284a1aec2499db0de577: {
		input: {
			key: "ccabc0490736284a1aec2499db0de577"
			point: {
				time: 1257894000000000000
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 1257894000000000000"
	}
	cd1dfb5df74daef5db4e6676f3620ab9: {
		input: {
			key: "cd1dfb5df74daef5db4e6676f3620ab9"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,\\ =east value=1 0"
	}
	d07c652fdb3f96391266d97a6aaa5598: {
		input: {
			key: "d07c652fdb3f96391266d97a6aaa5598"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 231845000000000"
	}
	d453c22cd2fc2749292a22b877e5b412: {
		input: {
			key: "d453c22cd2fc2749292a22b877e5b412"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" 231845000000000"
	}
	dc1229ff87104d7df7374f212844dadc: {
		input: {
			key: "dc1229ff87104d7df7374f212844dadc"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" 0"
	}
	e14f0c73c92cec58f2e3161d4f04476c: {
		input: {
			key: "e14f0c73c92cec58f2e3161d4f04476c"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i -6795364578871345152"
	}
	e65b4c406489e9a95de68381fafa174d: {
		input: {
			key: "e65b4c406489e9a95de68381fafa174d"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 1603976386427072239"
	}
	e6b65d5cc0b79f6cf7ef9522342aea77: {
		input: {
			key: "e6b65d5cc0b79f6cf7ef9522342aea77"
			point: {
				time: -1
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 -1"
	}
	e80d138e73de8ceae6a474d1ee6c25e7: {
		input: {
			key: "e80d138e73de8ceae6a474d1ee6c25e7"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42i,b=\"things\" 1603976386427072239"
	}
	e9ee71f0212ddc786501836c30c86fd0: {
		input: {
			key: "e9ee71f0212ddc786501836c30c86fd0"
			point: {
				time: 0
				name: "t"
				fields: [{
					key: "s"
					value: string: "one double quote \" ."
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "t s=\"one double quote \\\" .\" 0"
	}
	eb0bfbdb28416a370bf68ebab9842ee3: {
		input: {
			key: "eb0bfbdb28416a370bf68ebab9842ee3"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest boolean=false,float64-large=1.7976931348623157e+308,float64-tiny=5e-324,int64=9223372036854775807i,string=\"String field that has a decent length, probably some log message or something\",uint32=4294967295i 0"
	}
	ec008f9e84f2c9fa2b9aab9be95bb0ac: {
		input: {
			key: "ec008f9e84f2c9fa2b9aab9be95bb0ac"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" 1603976386427072239"
	}
	f096d6fb4175264032c4e5bab715ab20: {
		input: {
			key: "f096d6fb4175264032c4e5bab715ab20"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42i,b=\"things\" -34526000000000"
	}
	f55056f2c15220c106e7d9c14b6c0f2e: {
		input: {
			key: "f55056f2c15220c106e7d9c14b6c0f2e"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo\\\\,bar\",value=1 1000000000"
	}
	f5563dc02d338fb20e38164fdeba06fe: {
		input: {
			key: "f5563dc02d338fb20e38164fdeba06fe"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,A\\ FOO=bar,APPLE=orange,host=serverA,region=uswest a=42 231845000000000"
	}
	f5f5c94ebcd9aefa3d3750ece7118946: {
		input: {
			key: "f5f5c94ebcd9aefa3d3750ece7118946"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test a=42i,b=\"things\" 0"
	}
	f6b5dbf30602308b0a8cc0b79eedcb13: {
		input: {
			key: "f6b5dbf30602308b0a8cc0b79eedcb13"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,host=serverA,region=us-east str=\"foo\\\\\",str2=\"bar\" 1000000000"
	}
	f758ef2bc8b89be50e958d13dbdea134: {
		input: {
			key: "f758ef2bc8b89be50e958d13dbdea134"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "test,foo=bar a=42 1603976386427250217"
	}
	f84fa178c83d4c4fdeb903e337af0c88: {
		input: {
			key: "f84fa178c83d4c4fdeb903e337af0c88"
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
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu,reg\\\\=ion=east value=1 0"
	}
	fa97f6ebb4e0ccff5422f08acfce6ffc: {
		input: {
			key: "fa97f6ebb4e0ccff5422f08acfce6ffc"
			point: {
				time: 946730096789012345
				name: "cpu"
				fields: [{
					key: "value"
					value: float: 1
				}]
			}
			precision:      "1ns"
			implementation: "influxdbv2models"
		}
		output: result: "cpu value=1 946730096789012345"
	}
}
