import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void dosageTest() {
  group('Dosage', () {
    test('construction with key fields', () {
      final dosage = Dosage(
        sequence: FhirInteger(1),
        text: FhirString('Take one tablet twice daily'),
        site: CodeableConcept(text: FhirString('Oral')),
        route: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri('http://snomed.info/sct'),
              code: FhirCode('26643006'),
              display: FhirString('Oral route'),
            ),
          ],
        ),
      );

      expect(dosage.sequence?.valueNum, 1);
      expect(dosage.text?.valueString, 'Take one tablet twice daily');
      expect(dosage.site?.text?.valueString, 'Oral');
      expect(dosage.route?.coding?[0].code?.valueString, '26643006');
      expect(dosage.fhirType, 'Dosage');
    });

    test('construction with minimal fields', () {
      const dosage = Dosage();
      expect(dosage.sequence, isNull);
      expect(dosage.text, isNull);
      expect(dosage.timing, isNull);
      expect(dosage.site, isNull);
      expect(dosage.route, isNull);
    });

    test('construction with asNeededBoolean', () {
      final dosage = Dosage(
        text: FhirString('As needed for pain'),
        asNeededBoolean: FhirBoolean(true),
      );
      expect(dosage.asNeededX, isA<FhirBoolean>());
    });

    test('construction with asNeededCodeableConcept', () {
      final dosage = Dosage(
        text: FhirString('As needed for headache'),
        asNeededCodeableConcept: CodeableConcept(
          text: FhirString('Headache'),
        ),
      );
      expect(dosage.asNeededX, isA<CodeableConcept>());
    });

    test('toJson produces correct JSON', () {
      final dosage = Dosage(
        sequence: FhirInteger(1),
        text: FhirString('Once daily'),
        route: CodeableConcept(
          coding: [Coding(code: FhirCode('26643006'))],
        ),
      );
      final json = dosage.toJson();
      expect(json['sequence'], 1);
      expect(json['text'], 'Once daily');
      expect(json['route'], isA<Map<String, dynamic>>());
    });

    test('fromJson round-trips correctly', () {
      final original = Dosage(
        sequence: FhirInteger(1),
        text: FhirString('Twice daily'),
        route: CodeableConcept(
          coding: [Coding(code: FhirCode('26643006'))],
        ),
      );
      final json = original.toJson();
      final restored = Dosage.fromJson(json);
      expect(restored.sequence?.valueNum, 1);
      expect(restored.text?.valueString, 'Twice daily');
      expect(restored.route?.coding?[0].code?.valueString, '26643006');
    });

    test('fromJsonString works', () {
      const json = '{"text":"Once daily","sequence":1}';
      final dosage = Dosage.fromJsonString(json);
      expect(dosage.text?.valueString, 'Once daily');
      expect(dosage.sequence?.valueNum, 1);
    });

    test('copyWith creates modified copy', () {
      final original = Dosage(
        sequence: FhirInteger(1),
        text: FhirString('Original'),
      );
      final modified = original.copyWith(
        text: FhirString('Modified'),
      );
      expect(modified.text?.valueString, 'Modified');
      expect(modified.sequence?.valueNum, 1);
    });

    test('copyWith with no args returns equal object', () {
      final original = Dosage(
        text: FhirString('Test'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Dosage(text: FhirString('Once daily'));
      final b = Dosage(text: FhirString('Once daily'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Dosage(text: FhirString('Once daily'));
      final b = Dosage(text: FhirString('Twice daily'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final dosage = Dosage(
        sequence: FhirInteger(1),
        text: FhirString('Test'),
      );
      expect(dosage.getChildByName('sequence'), isA<FhirInteger>());
      expect(dosage.getChildByName('text'), isA<FhirString>());
      expect(dosage.getChildByName('timing'), isNull);
    });

    test('clone creates deep copy', () {
      final dosage = Dosage(
        text: FhirString('Test'),
        sequence: FhirInteger(1),
      );
      final cloned = dosage.clone();
      expect(cloned.equalsDeep(dosage), isTrue);
    });

    test('with timing', () {
      final dosage = Dosage(
        text: FhirString('Every 8 hours'),
        timing: Timing(
          code: CodeableConcept(text: FhirString('Q8H')),
        ),
      );
      expect(dosage.timing, isNotNull);
      expect(dosage.timing?.code?.text?.valueString, 'Q8H');
    });
  });
}
