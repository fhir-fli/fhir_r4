import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

void main() {
  group('Mode enum', () {
    test('has exactly 3 values', () {
      expect(Mode.values, hasLength(3));
    });

    test('toString returns correct strings', () {
      expect(Mode.full.toString(), 'full');
      expect(Mode.normative.toString(), 'normative');
      expect(Mode.terminology.toString(), 'terminology');
    });

    test('all values round-trip via toString and name lookup', () {
      const expected = <Mode, String>{
        Mode.full: 'full',
        Mode.normative: 'normative',
        Mode.terminology: 'terminology',
      };
      for (final entry in expected.entries) {
        expect(entry.key.toString(), entry.value);
      }
    });
  });

  group('SearchModifier enum', () {
    test('has exactly 9 values', () {
      expect(SearchModifier.values, hasLength(9));
    });

    test('toString returns correct strings', () {
      expect(SearchModifier.eq.toString(), 'eq');
      expect(SearchModifier.ne.toString(), 'ne');
      expect(SearchModifier.gt.toString(), 'gt');
      expect(SearchModifier.lt.toString(), 'lt');
      expect(SearchModifier.ge.toString(), 'ge');
      expect(SearchModifier.le.toString(), 'le');
      expect(SearchModifier.sa.toString(), 'sa');
      expect(SearchModifier.eb.toString(), 'eb');
      expect(SearchModifier.ap.toString(), 'ap');
    });

    test('all values round-trip via toString', () {
      const expected = <SearchModifier, String>{
        SearchModifier.eq: 'eq',
        SearchModifier.ne: 'ne',
        SearchModifier.gt: 'gt',
        SearchModifier.lt: 'lt',
        SearchModifier.ge: 'ge',
        SearchModifier.le: 'le',
        SearchModifier.sa: 'sa',
        SearchModifier.eb: 'eb',
        SearchModifier.ap: 'ap',
      };
      for (final entry in expected.entries) {
        expect(entry.key.toString(), entry.value);
      }
    });
  });

  group('Summary enum', () {
    test('has exactly 6 values', () {
      expect(Summary.values, hasLength(6));
    });

    test('toString returns correct strings', () {
      expect(Summary.true_.toString(), 'true');
      expect(Summary.false_.toString(), 'false');
      expect(Summary.text.toString(), 'text');
      expect(Summary.count.toString(), 'count');
      expect(Summary.data.toString(), 'data');
      expect(Summary.none.toString(), 'none');
    });

    test('all values round-trip via toString', () {
      const expected = <Summary, String>{
        Summary.true_: 'true',
        Summary.false_: 'false',
        Summary.text: 'text',
        Summary.count: 'count',
        Summary.data: 'data',
        Summary.none: 'none',
      };
      for (final entry in expected.entries) {
        expect(entry.key.toString(), entry.value);
      }
    });
  });
}
