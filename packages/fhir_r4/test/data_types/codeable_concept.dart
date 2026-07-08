import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void codeableConceptTest() {
  group('CodeableConcept', () {
    test('construction with all fields', () {
      final cc = CodeableConcept(
        coding: [
          Coding(
            system: FhirUri('http://snomed.info/sct'),
            code: FhirCode('386661006'),
            display: FhirString('Fever'),
          ),
          Coding(
            system: FhirUri('http://loinc.org'),
            code: FhirCode('LP21258-6'),
          ),
        ],
        text: FhirString('Fever'),
      );

      expect(cc.coding?.length, 2);
      expect(cc.coding?[0].code?.valueString, '386661006');
      expect(cc.coding?[1].system?.valueString, 'http://loinc.org');
      expect(cc.text?.valueString, 'Fever');
      expect(cc.fhirType, 'CodeableConcept');
    });

    test('construction with minimal fields', () {
      const cc = CodeableConcept();
      expect(cc.coding, isNull);
      expect(cc.text, isNull);
    });

    test('construction with text only', () {
      final cc = CodeableConcept(text: FhirString('Free text concept'));
      expect(cc.coding, isNull);
      expect(cc.text?.valueString, 'Free text concept');
    });

    test('toJson produces correct JSON', () {
      final cc = CodeableConcept(
        coding: [
          Coding(
            system: FhirUri('http://snomed.info/sct'),
            code: FhirCode('386661006'),
            display: FhirString('Fever'),
          ),
        ],
        text: FhirString('Fever'),
      );
      final json = cc.toJson();
      expect(json['text'], 'Fever');
      expect(json['coding'], isA<List<dynamic>>());
      expect((json['coding'] as List).length, 1);
      expect(
        ((json['coding']! as List)[0] as Map<String, dynamic>)['code'],
        '386661006',
      );
    });

    test('fromJson round-trips correctly', () {
      final original = CodeableConcept(
        coding: [
          Coding(
            system: FhirUri('http://snomed.info/sct'),
            code: FhirCode('386661006'),
            display: FhirString('Fever'),
          ),
        ],
        text: FhirString('Fever'),
      );
      final json = original.toJson();
      final restored = CodeableConcept.fromJson(json);
      expect(restored.coding?.length, 1);
      expect(restored.coding?[0].code?.valueString, '386661006');
      expect(restored.text?.valueString, 'Fever');
    });

    test('fromJsonString works', () {
      const json = '{"text":"Headache","coding":[{"code":"25064002"}]}';
      final cc = CodeableConcept.fromJsonString(json);
      expect(cc.text?.valueString, 'Headache');
      expect(cc.coding?[0].code?.valueString, '25064002');
    });

    test('copyWith creates modified copy', () {
      final original = CodeableConcept(
        text: FhirString('Original'),
        coding: [Coding(code: FhirCode('123'))],
      );
      final modified = original.copyWith(
        text: FhirString('Modified'),
      );
      expect(modified.text?.valueString, 'Modified');
      expect(modified.coding?[0].code?.valueString, '123');
    });

    test('copyWith with no args returns equal object', () {
      final original = CodeableConcept(text: FhirString('Test'));
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = CodeableConcept(text: FhirString('Test'));
      final b = CodeableConcept(text: FhirString('Test'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = CodeableConcept(text: FhirString('A'));
      final b = CodeableConcept(text: FhirString('B'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildrenByName returns coding list', () {
      final cc = CodeableConcept(
        coding: [
          Coding(code: FhirCode('a')),
          Coding(code: FhirCode('b')),
        ],
      );
      final children = cc.getChildrenByName('coding');
      expect(children.length, 2);
    });

    test('getChildByName returns text', () {
      final cc = CodeableConcept(text: FhirString('Test'));
      expect(cc.getChildByName('text'), isA<FhirString>());
    });

    test('clone creates deep copy', () {
      final cc = CodeableConcept(
        coding: [Coding(code: FhirCode('123'))],
        text: FhirString('Test'),
      );
      final cloned = cc.clone();
      expect(cloned.equalsDeep(cc), isTrue);
    });
  });
}
