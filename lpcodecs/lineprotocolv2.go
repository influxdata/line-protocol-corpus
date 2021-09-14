package lpcodecs

import (
	"bytes"
	"fmt"
	"sort"
	"time"

	"github.com/influxdata/line-protocol/v2/lineprotocol"

	"github.com/influxdata/line-protocol-corpus/lpcorpus"
)

type lineProtocolV2Decoder struct{}

func (lineProtocolV2Decoder) Decode(input *lpcorpus.DecodeInput) ([]*lpcorpus.Point, error) {
	dec := lineprotocol.NewDecoderWithBytes(input.Text)
	ms := []*lpcorpus.Point{}
	for dec.Next() {
		m, err := tokenizeToCorpusPoint(dec, input.Precision, input.DefaultTime)
		if err != nil {
			return nil, fmt.Errorf("cannot get metric %v: %v", len(ms), err)
		}
		ms = append(ms, m)
	}
	return ms, nil
}

func tokenizeToCorpusPoint(dec *lineprotocol.Decoder, precision lpcorpus.Precision, defaultTime int64) (*lpcorpus.Point, error) {
	var m lpcorpus.Point
	var err error
	m.Name, err = dec.Measurement()
	if err != nil {
		return nil, fmt.Errorf("cannot get measurement: %v", err)
	}
	for {
		key, val, err := dec.NextTag()
		if err != nil {
			return nil, fmt.Errorf("cannot get tag %v: %v", len(m.Tags), err)
		}
		if key == nil {
			break
		}
		m.Tags = append(m.Tags, lpcorpus.Tag{
			Key:   dupBytes(key),
			Value: dupBytes(val),
		})
	}
	sort.Slice(m.Tags, func(i, j int) bool {
		return bytes.Compare(m.Tags[i].Key, m.Tags[j].Key) < 0
	})
	for i := range m.Tags {
		if i > 0 && bytes.Equal(m.Tags[i-1].Key, m.Tags[i].Key) {
			return nil, fmt.Errorf("duplicate tag key %q", m.Tags[i].Key)
		}
	}
	for {
		key, val, err := dec.NextField()
		if err != nil {
			return nil, fmt.Errorf("cannot get field %d: %v", len(m.Fields), err)
		}
		if key == nil {
			break
		}
		field := lpcorpus.Field{
			Key: dupBytes(key),
		}
		field.Value = lpcorpus.MustNewValue(val.Interface())
		m.Fields = append(m.Fields, field)
	}
	timestamp, err := dec.Time(influxdataPrecision(precision), time.Unix(0, defaultTime))
	if err != nil {
		return nil, fmt.Errorf("cannot get time: %v", err)
	}
	m.Time = timestamp.UnixNano()
	return &m, nil
}

func dupBytes(b []byte) []byte {
	return append([]byte(nil), b...)
}

type lineProtocolV2Encoder struct{}

func (lineProtocolV2Encoder) Encode(input *lpcorpus.EncodeInput) ([]byte, error) {
	var enc lineprotocol.Encoder
	enc.SetPrecision(influxdataPrecision(input.Precision))
	p := input.Point
	enc.StartLineRaw(p.Name)
	tags := append([]lpcorpus.Tag(nil), p.Tags...)
	sort.Slice(tags, func(i, j int) bool {
		return bytes.Compare(tags[i].Key, tags[j].Key) < 0
	})
	for _, tag := range p.Tags {
		enc.AddTagRaw(tag.Key, tag.Value)
	}
	for _, field := range p.Fields {
		val, ok := lineprotocol.NewValue(field.Value.Interface())
		if !ok {
			return nil, fmt.Errorf("invalid value %v", field.Value)
		}
		enc.AddFieldRaw(field.Key, val)
	}
	enc.EndLine(time.Unix(0, p.Time))
	if err := enc.Err(); err != nil {
		return nil, err
	}
	return enc.Bytes(), nil
}

func influxdataPrecision(p lpcorpus.Precision) lineprotocol.Precision {
	switch p.Duration {
	case time.Nanosecond:
		return lineprotocol.Nanosecond
	case time.Microsecond:
		return lineprotocol.Microsecond
	case time.Millisecond:
		return lineprotocol.Millisecond
	case time.Second:
		return lineprotocol.Second
	default:
		panic(fmt.Errorf("unknown precision in test corpus %v", p))
	}
}
