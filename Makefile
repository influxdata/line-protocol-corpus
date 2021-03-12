json: corpus.json
.PHONY: json

CUE_FILES=$(wildcard *.cue)
CORPUS_FILES=corpus-decode-generated.cue corpus-encode-generated.cue

corpus.json: $(CORPUS_FILES)
	rm -f corpus.json
	cue export --out json -e corpus -o corpus.json

$(CORPUS_FILES): $(filter-out $(CORPUS_FILES),$(CUE_FILES))
	rm -f $(CORPUS_FILES)
	go run generate.go
