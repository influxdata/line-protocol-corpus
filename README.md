# Line-protocol corpus

This repository holds a corpus of data for testing InfluxDB [line-protocol](https://docs.influxdata.com/influxdb/cloud/reference/syntax/line-protocol/) codec implementations.

The primary data is stored in [CUE format](https://cuelang.org), but the `corpus.json` file holds
the exported data in JSON format.

The `schema.cue` file defines the format of the data. In brief, the corpus data
has two top level fields, `decode` and `encode`, which hold inputs and expected
results for decoding and encoding respectively.

The various `inputs-*.cue` files hold test inputs that have derived from
different sources.

When there's an error, an explicit error string is given so that it's clear what
kind of error is expected, but implementations would not be expected to
reproduce that exact error.

The corpus results are intended correspond with the proposed standardised syntax
[proposal](https://docs.google.com/document/d/1GCGgg6EcW8bPyVhLsS9L6kvEyC8S5_T0tbcomfF3FxI).

## Using the corpus

To use this corpus to run against your own codec, you don't need to install CUE,
as all the relevant data is exported into the [corpus.json](corpus.json) file.
You'll need to write some code to translate from the unmarshaled JSON to the data
structures that your own code provides, then check that the results are as expected.

## Adding test cases

The `corpus*.cue` files are generated by running the corpus input data through the
"reference" Go  implementation at [github.com/influxdata/line-protocol/v2/influxdata](https://pkg.go.dev/github.com/influxdata/line-protocol/v2/influxdata)
by running the generate program (use `make` to run it).

If there's a test case that's considered to be wrong, rather than just editing the CUE
file, the reference implementation should be fixed before regenerating the files.

To add a new test case, add it to either [inputs-decode-custom.cue](inputs-decode-custom.cue) or
[inputs-encode-custom.cue](inputs-encode-custom.cue) as appropriate, then regenerate the corpus
by running `make`.

