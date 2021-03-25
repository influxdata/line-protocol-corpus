package lpcodecs

import (
	"bytes"
	"time"

	"github.com/influxdata/line-protocol-corpus/lpcorpus"
)

func fieldKeysAreSorted(fields []lpcorpus.Field) bool {
	if len(fields) == 0 {
		return true
	}
	s := fields[0].Key
	for _, f := range fields[1:] {
		if bytes.Compare(f.Key, s) <= 0 {
			return false
		}
		s = f.Key
	}
	return true
}

func tagKeysAreSorted(tags []lpcorpus.Tag) bool {
	if len(tags) == 0 {
		return true
	}
	s := tags[0].Key
	for _, f := range tags[1:] {
		if bytes.Compare(f.Key, s) <= 0 {
			return false
		}
		s = f.Key
	}
	return true
}

func durationPrecision(d time.Duration) string {
	switch d {
	case time.Nanosecond:
		return "n"
	case time.Microsecond:
		return "u"
	case time.Millisecond:
		return "ms"
	case time.Second:
		return "s"
	case time.Minute:
		return "m"
	case time.Hour:
		return "h"
	default:
		panic("unknown precision duration")
	}
}

func precisionDuration(p string) time.Duration {
	switch p {
	case "n", "ns":
		return time.Nanosecond
	case "u", "us":
		return time.Microsecond
	case "ms":
		return time.Millisecond
	case "s":
		return time.Second
	case "m":
		return time.Minute
	case "h":
		return time.Hour
	}
	return 0
}
