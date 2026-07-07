import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void rangeTest() {
  group('Range', () {
    test('construction with all fields', () {
      final range = Range(
        low: Quantity(
          value: FhirDecimal(60),
          unit: FhirString('mmHg'),
          system: FhirUri('http://unitsofmeasure.org'),
          code: FhirCode('mm[Hg]'),
        ),
        high: Quantity(
          value: FhirDecimal(80),
          unit: FhirString('mmHg'),
          system: FhirUri('http://unitsofmeasure.org'),
          code: FhirCode('mm[Hg]'),
        ),
      );

      expect(range.low?.value?.valueNum, 60);
      expect(range.high?.value?.valueNum, 80);
      expect(range.fhirType, 'Range');
    });

    test('construction with minimal fields', () {
      const range = Range();
      expect(range.low, isNull);
      expect(range.high, isNull);
    });

    test('construction with low only', () {
      final range = Range(
        low: Quantity(value: FhirDecimal(0)),
      );
      expect(range.low, isNotNull);
      expect(range.high, isNull);
    });

    test('construction with high only', () {
      final range = Range(
        high: Quantity(value: FhirDecimal(100)),
      );
      expect(range.low, isNull);
      expect(range.high, isNotNull);
    });

    test('toJson produces correct JSON', () {
      final range = Range(
        low: Quantity(value: FhirDecimal(60), unit: FhirString('kg')),
        high: Quantity(value: FhirDecimal(80), unit: FhirString('kg')),
      );
      final json = range.toJson();
      expect(json['low'], isA<Map<String, dynamic>>());
      expect(json['low']['value'], 60);
      expect(json['low']['unit'], 'kg');
      expect(json['high'], isA<Map<String, dynamic>>());
      expect(json['high']['value'], 80);
    });

    test('fromJson round-trips correctly', () {
      final original = Range(
        low: Quantity(value: FhirDecimal(120), unit: FhirString('mmHg')),
        high: Quantity(value: FhirDecimal(140), unit: FhirString('mmHg')),
      );
      final json = original.toJson();
      final restored = Range.fromJson(json);
      expect(restored.low?.value?.valueNum, 120);
      expect(restored.high?.value?.valueNum, 140);
      expect(restored.low?.unit?.valueString, 'mmHg');
    });

    test('fromJsonString works', () {
      const json = '{"low":{"value":0},"high":{"value":100}}';
      final range = Range.fromJsonString(json);
      expect(range.low?.value?.valueNum, 0);
      expect(range.high?.value?.valueNum, 100);
    });

    test('copyWith creates modified copy', () {
      final original = Range(
        low: Quantity(value: FhirDecimal(60)),
        high: Quantity(value: FhirDecimal(80)),
      );
      final modified = original.copyWith(
        high: Quantity(value: FhirDecimal(90)),
      );
      expect(modified.high?.value?.valueNum, 90);
      expect(modified.low?.value?.valueNum, 60);
    });

    test('copyWith with no args returns equal object', () {
      final original = Range(
        low: Quantity(value: FhirDecimal(0)),
        high: Quantity(value: FhirDecimal(100)),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Range(
        low: Quantity(value: FhirDecimal(60)),
        high: Quantity(value: FhirDecimal(80)),
      );
      final b = Range(
        low: Quantity(value: FhirDecimal(60)),
        high: Quantity(value: FhirDecimal(80)),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Range(low: Quantity(value: FhirDecimal(60)));
      final b = Range(low: Quantity(value: FhirDecimal(70)));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final range = Range(
        low: Quantity(value: FhirDecimal(60)),
        high: Quantity(value: FhirDecimal(80)),
      );
      expect(range.getChildByName('low'), isA<Quantity>());
      expect(range.getChildByName('high'), isA<Quantity>());
    });

    test('clone creates deep copy', () {
      final range = Range(
        low: Quantity(value: FhirDecimal(60)),
        high: Quantity(value: FhirDecimal(80)),
      );
      final cloned = range.clone();
      expect(cloned.equalsDeep(range), isTrue);
    });

    test('fromJson with empty map', () {
      final range = Range.fromJson(<String, dynamic>{});
      expect(range.low, isNull);
      expect(range.high, isNull);
    });
  });
}
