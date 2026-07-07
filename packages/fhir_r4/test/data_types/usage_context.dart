import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void usageContextTest() {
  group('UsageContext', () {
    test('construction with valueCodeableConcept', () {
      final uc = UsageContext(
        code: Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/usage-context-type',
          ),
          code: FhirCode('age'),
        ),
        valueX: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri('http://snomed.info/sct'),
              code: FhirCode('255397009'),
              display: FhirString('Pediatric'),
            ),
          ],
        ),
      );

      expect(uc.code.code?.valueString, 'age');
      expect(uc.valueX, isA<CodeableConcept>());
      expect(uc.fhirType, 'UsageContext');
    });

    test('construction with valueQuantity', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: Quantity(
          value: FhirDecimal(18),
          unit: FhirString('years'),
        ),
      );
      expect(uc.valueX, isA<Quantity>());
    });

    test('construction with valueRange', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: Range(
          low: Quantity(value: FhirDecimal(0)),
          high: Quantity(value: FhirDecimal(18)),
        ),
      );
      expect(uc.valueX, isA<Range>());
    });

    test('construction with valueReference', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('focus')),
        valueX: Reference(
          reference: FhirString('Group/pediatric-patients'),
        ),
      );
      expect(uc.valueX, isA<Reference>());
    });

    test('toJson with valueCodeableConcept', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Pediatric')),
      );
      final json = uc.toJson();
      expect(json['code'], isA<Map<String, dynamic>>());
      expect(json['valueCodeableConcept'], isA<Map<String, dynamic>>());
      expect(json['valueCodeableConcept']['text'], 'Pediatric');
    });

    test('toJson with valueQuantity', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: Quantity(
          value: FhirDecimal(65),
          unit: FhirString('years'),
        ),
      );
      final json = uc.toJson();
      expect(json['valueQuantity'], isA<Map<String, dynamic>>());
      expect(json['valueQuantity']['value'], 65);
    });

    test('fromJson round-trips with valueCodeableConcept', () {
      final original = UsageContext(
        code: Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/usage-context-type',
          ),
          code: FhirCode('gender'),
        ),
        valueX: CodeableConcept(text: FhirString('Male')),
      );
      final json = original.toJson();
      final restored = UsageContext.fromJson(json);
      expect(restored.code.code?.valueString, 'gender');
      expect(restored.valueX, isA<CodeableConcept>());
    });

    test('fromJsonString works', () {
      const json =
          '{"code":{"code":"age"},"valueCodeableConcept":{"text":"Adult"}}';
      final uc = UsageContext.fromJsonString(json);
      expect(uc.code.code?.valueString, 'age');
      expect(uc.valueX, isA<CodeableConcept>());
    });

    test('copyWith creates modified copy', () {
      final original = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Child')),
      );
      final modified = original.copyWith(
        valueX: CodeableConcept(text: FhirString('Adult')),
      );
      final cc = modified.valueX as CodeableConcept;
      expect(cc.text?.valueString, 'Adult');
    });

    test('copyWith with no args returns equal object', () {
      final original = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Test')),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Test')),
      );
      final b = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Test')),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('A')),
      );
      final b = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('B')),
      );
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns code', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Test')),
      );
      expect(uc.getChildByName('code'), isA<Coding>());
    });

    test('clone creates deep copy', () {
      final uc = UsageContext(
        code: Coding(code: FhirCode('age')),
        valueX: CodeableConcept(text: FhirString('Test')),
      );
      final cloned = uc.clone();
      expect(cloned.equalsDeep(uc), isTrue);
    });
  });
}
