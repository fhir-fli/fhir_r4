import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void timingTest() {
  group('Timing', () {
    test('construction with all fields', () {
      final timing = Timing(
        event: [
          FhirDateTime.fromString('2024-01-01T08:00:00Z'),
          FhirDateTime.fromString('2024-01-01T20:00:00Z'),
        ],
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri(
                'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
              ),
              code: FhirCode('BID'),
              display: FhirString('Twice a day'),
            ),
          ],
        ),
      );

      expect(timing.event?.length, 2);
      expect(timing.code?.coding?[0].code?.valueString, 'BID');
      expect(timing.fhirType, 'Timing');
    });

    test('construction with minimal fields', () {
      const timing = Timing();
      expect(timing.event, isNull);
      expect(timing.repeat, isNull);
      expect(timing.code, isNull);
    });

    test('construction with code only', () {
      final timing = Timing(
        code: CodeableConcept(text: FhirString('Q8H')),
      );
      expect(timing.code?.text?.valueString, 'Q8H');
      expect(timing.event, isNull);
      expect(timing.repeat, isNull);
    });

    test('toJson produces correct JSON', () {
      final timing = Timing(
        event: [FhirDateTime.fromString('2024-01-01T08:00:00Z')],
        code: CodeableConcept(
          coding: [Coding(code: FhirCode('BID'))],
        ),
      );
      final json = timing.toJson();
      expect(json['event'], isA<List>());
      expect((json['event'] as List).length, 1);
      expect(json['code'], isA<Map>());
    });

    test('fromJson round-trips correctly', () {
      final original = Timing(
        event: [FhirDateTime.fromString('2024-06-15T10:00:00Z')],
        code: CodeableConcept(
          coding: [Coding(code: FhirCode('QD'))],
        ),
      );
      final json = original.toJson();
      final restored = Timing.fromJson(json);
      expect(restored.event?.length, 1);
      expect(restored.code?.coding?[0].code?.valueString, 'QD');
    });

    test('fromJsonString works', () {
      const json = '{"code":{"text":"Daily"}}';
      final timing = Timing.fromJsonString(json);
      expect(timing.code?.text?.valueString, 'Daily');
    });

    test('copyWith creates modified copy', () {
      final original = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      final modified = original.copyWith(
        code: CodeableConcept(text: FhirString('QD')),
      );
      expect(modified.code?.text?.valueString, 'QD');
    });

    test('copyWith with no args returns equal object', () {
      final original = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      final b = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      final b = Timing(
        code: CodeableConcept(text: FhirString('QD')),
      );
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final timing = Timing(
        code: CodeableConcept(text: FhirString('BID')),
      );
      expect(timing.getChildByName('code'), isA<CodeableConcept>());
      expect(timing.getChildByName('repeat'), isNull);
    });

    test('getChildrenByName returns event list', () {
      final timing = Timing(
        event: [
          FhirDateTime.fromString('2024-01-01'),
          FhirDateTime.fromString('2024-01-02'),
        ],
      );
      final children = timing.getChildrenByName('event');
      expect(children.length, 2);
    });

    test('clone creates deep copy', () {
      final timing = Timing(
        code: CodeableConcept(text: FhirString('BID')),
        event: [FhirDateTime.fromString('2024-01-01')],
      );
      final cloned = timing.clone();
      expect(cloned.equalsDeep(timing), isTrue);
    });

    test('fromJson with empty map', () {
      final timing = Timing.fromJson(<String, dynamic>{});
      expect(timing.event, isNull);
      expect(timing.repeat, isNull);
      expect(timing.code, isNull);
    });
  });
}
