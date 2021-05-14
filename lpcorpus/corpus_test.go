package lpcorpus

import "testing"

func TestReadCorpusJSON(t *testing.T) {
	// TODO something better than this basic smoke test.
	_, err := ReadCorpusJSON("../corpus.json")
	if err != nil {
		t.Fatalf("cannot read corpus JSON: %v", err)
	}

}
