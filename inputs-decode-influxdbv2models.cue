package lpcorpus

inputs: decode: influxdbv2models: [{
	text:        "="
	defaultTime: 1603976386428344017
	precision:   "1ns"
}, {
	text:        "\"cpu\",host=serverA,region=us-east value=1.0 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "a v=1 0\\"
	defaultTime: 1603976386428890344
	precision:   "1ns"
}, {
	text:        "cpu      value=1.0     1257894000000000000"
	defaultTime: 1603976386428650373
	precision:   "1ns"
}, {
	text:        "cpu    value=1.0 1257894000000000000"
	defaultTime: 1603976386428645859
	precision:   "1ns"
}, {
	text: """
		cpu   value=1.0 1257894000000000000

		"""
	defaultTime: 1603976386428653567
	precision:   "1ns"
}, {
	text:        "cpu \"\\, '= \"\\ v=1.0"
	defaultTime: 1603976386430662725
	precision:   "1ns"
}, {
	text:        "cpu \\a=1i"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu v= "
	defaultTime: 1603976386428450625
	precision:   "1ns"
}, {
	text:        "cpu v=- "
	defaultTime: 1603976386428440397
	precision:   "1ns"
}, {
	text:        "cpu v=-. "
	defaultTime: 1603976386428444865
	precision:   "1ns"
}, {
	text:        "cpu v=-123u"
	defaultTime: 1603976386428451491
	precision:   "1ns"
}, {
	text:        "cpu v=-e-e-e "
	defaultTime: 1603976386428448694
	precision:   "1ns"
}, {
	text:        "cpu v=-i "
	defaultTime: 1603976386428443929
	precision:   "1ns"
}, {
	text:        "cpu v=. "
	defaultTime: 1603976386428445628
	precision:   "1ns"
}, {
	text:        "cpu v=1.0i "
	defaultTime: 1603976386428446384
	precision:   "1ns"
}, {
	text:        "cpu v=1a "
	defaultTime: 1603976386428447983
	precision:   "1ns"
}, {
	text:        "cpu v=1ii "
	defaultTime: 1603976386428447246
	precision:   "1ns"
}, {
	text:        "cpu v=42+3 "
	defaultTime: 1603976386428449893
	precision:   "1ns"
}, {
	text:        "cpu value=-0.64 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1 -"
	defaultTime: 1603976386429050754
	precision:   "1ns"
}, {
	text:        "cpu value=1 -/"
	defaultTime: 1603976386429052121
	precision:   "1ns"
}, {
	text:        "cpu value=1 -1"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1 -1?"
	defaultTime: 1603976386429053286
	precision:   "1ns"
}, {
	text:        "cpu value=1 -9223372036854775806"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1 -92233720368547758078"
	defaultTime: 1603976386429048993
	precision:   "1ns"
}, {
	text:        "cpu value=1 1-"
	defaultTime: 1603976386429054171
	precision:   "1ns"
}, {
	text:        "cpu value=1 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1 9223372036854775806"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1 9223372036854775807 12"
	defaultTime: 1603976386429055027
	precision:   "1ns"
}, {
	text:        "cpu value=1 9223372036854775808"
	defaultTime: 1603976386429043469
	precision:   "1ns"
}, {
	text:        "cpu value=1"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1"
	defaultTime: 1603976386426863278
	precision:   "1ns"
}, {
	text:        "cpu value=1. 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=1.0     1257894000000000000"
	defaultTime: 1603976386428648009
	precision:   "1ns"
}, {
	text:        "cpu value=1.0 1257894000000000000   "
	defaultTime: 1603976386428651470
	precision:   "1ns"
}, {
	text: """
		cpu value=1.0 1257894000000000000

		"""
	defaultTime: 1603976386428652535
	precision:   "1ns"
}, {
	text:        "cpu value=6.632243e+06 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=6632243i 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=NaN 1000000000"
	defaultTime: 1603976386429107797
	precision:   "1ns"
}, {
	text:        "cpu value=NaN"
	defaultTime: 1603976386429111781
	precision:   "1ns"
}, {
	text:        "cpu value=\"test\\\"\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=\"test\\\\\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=\"test\\\\\\\"\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu value=nAn 1000000000"
	defaultTime: 1603976386429110894
	precision:   "1ns"
}, {
	text:        "cpu"
	defaultTime: 1603976386428340968
	precision:   "1ns"
}, {
	text:        "cpu, =serverA value=1i"
	defaultTime: 1603976386428375055
	precision:   "1ns"
}, {
	text:        "cpu, value=1"
	defaultTime: 1603976386428367137
	precision:   "1ns"
}, {
	text:        "cpu,"
	defaultTime: 1603976386428370214
	precision:   "1ns"
}, {
	text:        "cpu,,,"
	defaultTime: 1603976386428371077
	precision:   "1ns"
}, {
	text:        "cpu,\"host\"=\"serverA\",region=us-east value=1.0 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,\\ =east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,_measurement=v0,tag0=v0 value=1"
	defaultTime: 1603976386426982520
	precision:   "1ns"
}, {
	text:        "cpu,b=2,b=1,c=3 value=1i 1000000000"
	defaultTime: 1603976386428777073
	precision:   "1ns"
}, {
	text:        "cpu,b=2,c=3,b=1 value=1i 1000000000"
	defaultTime: 1603976386428778364
	precision:   "1ns"
}, {
	text:        "cpu,host value=1i"
	defaultTime: 1603976386428389062
	precision:   "1ns"
}, {
	text:        "cpu,host"
	defaultTime: 1603976386428384132
	precision:   "1ns"
}, {
	text:        "cpu,host,"
	defaultTime: 1603976386428387434
	precision:   "1ns"
}, {
	text:        "cpu,host="
	defaultTime: 1603976386428388262
	precision:   "1ns"
}, {
	text:        "cpu,host=="
	defaultTime: 1603976386428342015
	precision:   "1ns"
}, {
	text:        "cpu,host=f=o,"
	defaultTime: 1603976386428398091
	precision:   "1ns"
}, {
	text:        "cpu,host=f\\==o,"
	defaultTime: 1603976386428401376
	precision:   "1ns"
}, {
	text:        "cpu,host=server01,region=us-west 1434055562000000000i"
	defaultTime: 1603976386428432764
	precision:   "1ns"
}, {
	text:        "cpu,host=server01,region=us-west value=1i,b"
	defaultTime: 1603976386428433911
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA value=\"test"
	defaultTime: 1603976386428359278
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA value=\"test\"\""
	defaultTime: 1603976386428363087
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,=us-east value=1i"
	defaultTime: 1603976386428371966
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,\\ =us-east value=1i"
	defaultTime: 1603976386428375992
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,host=serverB value=1i 1000000000"
	defaultTime: 1603976386428772805
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region value=1i"
	defaultTime: 1603976386428391263
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region= value=1i"
	defaultTime: 1603976386428392243
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=,zone=us-west value=1i"
	defaultTime: 1603976386428393259
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east bool=false,float=11,float2=12.123,int=10i,str=\"string val\" 1000000000"
	defaultTime: 1603976386429602911
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east int=10i,float=11.0,float2=12.1 1000000000"
	defaultTime: 1603976386429585236
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east str=\"foo \\\" bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east str=\"foo=bar\",value=1.0 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east str=\"foo\\\\\",str2=\"bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east true=true,t=t,T=T,TRUE=TRUE,True=True,false=false,f=f,F=F,FALSE=FALSE,False=False 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0 946730096"
	defaultTime: 1603976386429621258
	precision:   "1s"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0 946730096789"
	defaultTime: 1603976386429620435
	precision:   "1ms"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0 946730096789012"
	defaultTime: 1603976386429619522
	precision:   "1µs"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0 946730096789012345"
	defaultTime: 1603976386429618480
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0"
	defaultTime: 946730096789012345
	precision:   "1ms"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0"
	defaultTime: 946730096789012345
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0"
	defaultTime: 946730096789012345
	precision:   "1s"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0"
	defaultTime: 946730096789012345
	precision:   "1µs"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0,str=\"foo bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0,str=\"foo,bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0,str=\"foo\",str2=\"bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=1.0,str=\"foo\\,bar\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text: """
		cpu,host=serverA,region=us-east value=1.0,str="foo
		bar" 1000000000
		"""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=\"wè\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=\"{Hello\\\"{,}\\\" World}\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-east value=\"{Hello\\\"{\\,}\\\" World}\" 1000000000"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west ="
	defaultTime: 1603976386428407219
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west =123i"
	defaultTime: 1603976386428413095
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west a\\ =123i"
	defaultTime: 1603976386428414705
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value= 1000000000i"
	defaultTime: 1603976386428429846
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value="
	defaultTime: 1603976386428424356
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=,value2=1i"
	defaultTime: 1603976386428431650
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-"
	defaultTime: 1603976386428569223
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=--1u"
	defaultTime: 1603976386428544634
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-0000000179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428524149
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-0009223372036854775808i"
	defaultTime: 1603976386428479548
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-1.0"
	defaultTime: 1603976386428593481
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-1.0e-4"
	defaultTime: 1603976386428621306
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-1179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428505985
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428518490
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-1i"
	defaultTime: 1603976386428587712
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-9223372036854775808i"
	defaultTime: 1603976386428478200
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=-9223372036854775809i"
	defaultTime: 1603976386428473002
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=.1"
	defaultTime: 1603976386428598584
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=.1a"
	defaultTime: 1603976386428554803
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=0.-1"
	defaultTime: 1603976386428562425
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=0000179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428495832
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=0000u"
	defaultTime: 1603976386428548504
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=00018446744073709551615u"
	defaultTime: 1603976386428538057
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=0009223372036854775807i"
	defaultTime: 1603976386428468844
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=0u"
	defaultTime: 1603976386428547460
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1.0E4"
	defaultTime: 1603976386428610174
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1.0e-4"
	defaultTime: 1603976386428616285
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1.0e4"
	defaultTime: 1603976386428603456
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1.1.1"
	defaultTime: 1603976386428574815
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428484053
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=123i,=456i"
	defaultTime: 1603976386428416962
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0"
	defaultTime: 1603976386428490476
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=18446744073709551615u"
	defaultTime: 1603976386428536620
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=18446744073709551616u"
	defaultTime: 1603976386428532099
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1E4"
	defaultTime: 1603976386428612538
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1e4"
	defaultTime: 1603976386428606245
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=1i"
	defaultTime: 1603976386428582534
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=9223372036854775807i"
	defaultTime: 1603976386428466894
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=9223372036854775808i"
	defaultTime: 1603976386428457703
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=9e10i"
	defaultTime: 1603976386428635849
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=9ie10"
	defaultTime: 1603976386428633082
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA,region=us-west value=a"
	defaultTime: 1603976386428626355
	precision:   "1ns"
}, {
	text:        "cpu,host=serverA\\,,=us-east value=1i"
	defaultTime: 1603976386428374185
	precision:   "1ns"
}, {
	text:        "cpu,host=serverAa\\,,=us-east value=1i"
	defaultTime: 1603976386428373187
	precision:   "1ns"
}, {
	text:        "cpu,last=1,first=2 value=1i"
	defaultTime: 1603976386429594018
	precision:   "1ns"
}, {
	text:        "cpu,reg\\\\=ion=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,region\\ zone=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,region\\,zone=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=\\\\ east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=\\\\,\\,\\=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=eas\\\\ t value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=eas\\t value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east value=\"1,0\""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east value=\"1\""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east value\\ ms=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east value\\,ms=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east\\ west value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east\\,west value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,regions=east\\\\  value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu,ta\\ g0=\\, value=1"
	defaultTime: 1603976386426938565
	precision:   "1ns"
}, {
	text:        "cpu,tag0=1\\\"\\\",t=k value=1"
	defaultTime: 1603976386426965918
	precision:   "1ns"
}, {
	text:        "cpu,tag0=\\, value=1"
	defaultTime: 1603976386426928091
	precision:   "1ns"
}, {
	text:        "cpu,tag0=\\,1 value=1"
	defaultTime: 1603976386426948726
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v0 value=1"
	defaultTime: 1603976386426876922
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v0,_field=v0 value=1"
	defaultTime: 1603976386427035756
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v0,_measurement=v0 value=1"
	defaultTime: 1603976386427008413
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v0,tag1=v0 value=1"
	defaultTime: 1603976386426888788
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v0,time=v0 value=1"
	defaultTime: 1603976386427051319
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v\\ 0 value=1"
	defaultTime: 1603976386426901360
	precision:   "1ns"
}, {
	text:        "cpu,tag0=v\\ 0\\ 1,tag1=v2 value=1"
	defaultTime: 1603976386426912241
	precision:   "1ns"
}, {
	text:        "cpu,tag0=value0,tag1=value1,tag2=value2,tag3=value3,tag4=value4,tag5=value5,tag6=value6,tag7=value7,tag8=value8,tag9=value9,tag10=value10,tag11=value11,tag12=value12,tag13=value13,tag14=value14,tag15=value15,tag16=value16,tag17=value17,tag18=value18,tag19=value19,tag20=value20,tag21=value21,tag22=value22,tag23=value23,tag24=value24,tag25=value25,tag26=value26,tag27=value27,tag28=value28,tag29=value29,tag30=value30,tag31=value31,tag32=value32,tag33=value33,tag34=value34,tag35=value35,tag36=value36,tag37=value37,tag38=value38,tag39=value39,tag40=value40,tag41=value41,tag42=value42,tag43=value43,tag44=value44,tag45=value45,tag46=value46,tag47=value47,tag48=value48,tag49=value49,tag50=value50,tag51=value51,tag52=value52,tag53=value53,tag54=value54,tag55=value55,tag56=value56,tag57=value57,tag58=value58,tag59=value59,tag60=value60,tag61=value61,tag62=value62,tag63=value63,tag64=value64,tag65=value65,tag66=value66,tag67=value67,tag68=value68,tag69=value69,tag70=value70,tag71=value71,tag72=value72,tag73=value73,tag74=value74,tag75=value75,tag76=value76,tag77=value77,tag78=value78,tag79=value79,tag80=value80,tag81=value81,tag82=value82,tag83=value83,tag84=value84,tag85=value85,tag86=value86,tag87=value87,tag88=value88,tag89=value89,tag90=value90,tag91=value91,tag92=value92,tag93=value93,tag94=value94,tag95=value95,tag96=value96,tag97=value97,tag98=value98,tag99=value99,tag100=value100,tag101=value101,tag102=value102,tag103=value103,tag104=value104,tag105=value105,tag106=value106,tag107=value107,tag108=value108,tag109=value109,tag110=value110,tag111=value111,tag112=value112,tag113=value113,tag114=value114,tag115=value115,tag116=value116,tag117=value117,tag118=value118,tag119=value119,tag120=value120,tag121=value121,tag122=value122,tag123=value123,tag124=value124,tag125=value125,tag126=value126,tag127=value127,tag128=value128,tag129=value129,tag130=value130,tag131=value131,tag132=value132,tag133=value133,tag134=value134,tag135=value135,tag136=value136,tag137=value137,tag138=value138,tag139=value139,tag140=value140,tag141=value141,tag142=value142,tag143=value143,tag144=value144,tag145=value145,tag146=value146,tag147=value147,tag148=value148,tag149=value149,tag150=value150,tag151=value151,tag152=value152,tag153=value153,tag154=value154,tag155=value155,tag156=value156,tag157=value157,tag158=value158,tag159=value159,tag160=value160,tag161=value161,tag162=value162,tag163=value163,tag164=value164,tag165=value165,tag166=value166,tag167=value167,tag168=value168,tag169=value169,tag170=value170,tag171=value171,tag172=value172,tag173=value173,tag174=value174,tag175=value175,tag176=value176,tag177=value177,tag178=value178,tag179=value179,tag180=value180,tag181=value181,tag182=value182,tag183=value183,tag184=value184,tag185=value185,tag186=value186,tag187=value187,tag188=value188,tag189=value189,tag190=value190,tag191=value191,tag192=value192,tag193=value193,tag194=value194,tag195=value195,tag196=value196,tag197=value197,tag198=value198,tag199=value199,tag200=value200,tag201=value201,tag202=value202,tag203=value203,tag204=value204,tag205=value205,tag206=value206,tag207=value207,tag208=value208,tag209=value209,tag210=value210,tag211=value211,tag212=value212,tag213=value213,tag214=value214,tag215=value215,tag216=value216,tag217=value217,tag218=value218,tag219=value219,tag220=value220,tag221=value221,tag222=value222,tag223=value223,tag224=value224,tag225=value225,tag226=value226,tag227=value227,tag228=value228,tag229=value229,tag230=value230,tag231=value231,tag232=value232,tag233=value233,tag234=value234,tag235=value235,tag236=value236,tag237=value237,tag238=value238,tag239=value239,tag240=value240,tag241=value241,tag242=value242,tag243=value243,tag244=value244,tag245=value245,tag246=value246,tag247=value247,tag248=value248,tag249=value249,tag250=value250,tag251=value251,tag252=value252,tag253=value253,tag254=value254 value=1"
	defaultTime: 1603976386429257860
	precision:   "1ns"
}, {
	text:        "cpu=load,equals\\=foo=tag\\=value value=1i"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu=load,region=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu\\ load,region=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu\\,main,regions=east value=1.0"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "cpu_load_short,host=server01,region=us-west"
	defaultTime: 1603976386428336542
	precision:   "1ns"
}, {
	text:        "foo\\,bar value=1i"
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "m f=\"blah\"=123,r 1531703600000000000"
	defaultTime: 1603976386428435078
	precision:   "1ns"
}, {
	text:        "m v=42i,f=42 36"
	defaultTime: 1603976386670026929
	precision:   "1ns"
}, {
	text:        "m,k=v f=0i"
	defaultTime: 1603976386404604581
	precision:   "1ns"
}, {
	text:        "t s=\"abcdefg\""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "t s=\"backslash \\\\ then quote \\\" .\""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "t s=\"one double quote \\\" .\""
	defaultTime: 0
	precision:   "1ns"
}, {
	text:        "t s=\"quote \\\" then backslash \\\\ .\""
	defaultTime: 0
	precision:   "1ns"
}]
