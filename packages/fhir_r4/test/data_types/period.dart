
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void periodTest() {
  group('Period', () {
    test('construction with all fields', () {
      final period = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );

      expect(period.start?.valueString, '2020-01-01');
      expect(period.end?.valueString, '2025-12-31');
      expect(period.fhirType, 'Period');
    });

    test('construction with minimal fields', () {
      const period = Period();
      expect(period.start, isNull);
      expect(period.end, isNull);
    });

    test('construction with start only (open-ended)', () {
      final period = Period(start: FhirDateTime.fromString('2020-06-15'));
      expect(period.start, isNotNull);
      expect(period.end, isNull);
    });

    test('construction with end only', () {
      final period = Period(end: FhirDateTime.fromString('2025-12-31'));
      expect(period.start, isNull);
      expect(period.end, isNotNull);
    });

    test('toJson produces correct JSON', () {
      final period = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );
      final json = period.toJson();
      expect(json['start'], '2020-01-01');
      expect(json['end'], '2025-12-31');
    });

    test('toJson with only start', () {
      final period = Period(start: FhirDateTime.fromString('2020-01-01'));
      final json = period.toJson();
      expect(json['start'], '2020-01-01');
      expect(json.containsKey('end'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );
      final json = original.toJson();
      final restored = Period.fromJson(json);
      expect(restored.start?.valueString, '2020-01-01');
      expect(restored.end?.valueString, '2025-12-31');
    });

    test('fromJsonString works', () {
      const json = '{"start":"2020-01-01","end":"2025-12-31"}';
      final period = Period.fromJsonString(json);
      expect(period.start, isNotNull);
      expect(period.end, isNotNull);
    });

    test('copyWith creates modified copy', () {
      final original = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );
      final modified = original.copyWith(
        end: FhirDateTime.fromString('2026-06-30'),
      );
      expect(modified.start?.valueString, '2020-01-01');
      expect(modified.end?.valueString, '2026-06-30');
    });

    test('copyWith with no args returns equal object', () {
      final original = Period(
        start: FhirDateTime.fromString('2020-01-01'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Period(start: FhirDateTime.fromString('2020-01-01'));
      final b = Period(start: FhirDateTime.fromString('2020-01-01'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Period(start: FhirDateTime.fromString('2020-01-01'));
      final b = Period(start: FhirDateTime.fromString('2021-01-01'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final period = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );
      expect(period.getChildByName('start'), isA<FhirDateTime>());
      expect(period.getChildByName('end'), isA<FhirDateTime>());
    });

    test('clone creates deep copy', () {
      final period = Period(
        start: FhirDateTime.fromString('2020-01-01'),
        end: FhirDateTime.fromString('2025-12-31'),
      );
      final cloned = period.clone();
      expect(cloned.equalsDeep(period), isTrue);
    });

    test('fromJson with empty map', () {
      final period = Period.fromJson(<String, dynamic>{});
      expect(period.start, isNull);
      expect(period.end, isNull);
    });

    test('datetime precision variations', () {
      final yearOnly = Period(start: FhirDateTime.fromString('2020'));
      final withTime = Period(
        start: FhirDateTime.fromString('2020-01-01T10:30:00Z'),
      );
      expect(yearOnly.start, isNotNull);
      expect(withTime.start, isNotNull);
    });
  });
}
