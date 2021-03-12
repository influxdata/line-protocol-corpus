package lpcorpus

inputs: decode: influxdbv2tsm1: [{
	text:        "m, x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,\\ e\\ \\=o=world,server=a x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,hi\\ yo\\ =w\\,est,server=a x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,re\\=gion=west,server=a x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,region=w\\,est,server=a x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,region=west x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}, {
	text:        "m,region=west,server=b,foo=bar x=1"
	defaultTime: 1599841074337582480
	precision:   "1ns"
}]
