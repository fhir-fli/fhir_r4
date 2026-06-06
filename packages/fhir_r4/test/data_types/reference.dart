
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void referenceTest() {
  group('Reference', () {
    test('construction with all fields', () {
      final ref = Reference(
        reference: FhirString('Patient/123'),
        type: FhirUri('Patient'),
        identifier: Identifier(
          system: FhirUri('http://example.org'),
          value: FhirString('MRN-123'),
        ),
        display: FhirString('John Doe'),
      );

      expect(ref.reference?.valueString, 'Patient/123');
      expect(ref.type?.valueString, 'Patient');
      expect(ref.identifier?.value?.valueString, 'MRN-123');
      expect(ref.display?.valueString, 'John Doe');
      expect(ref.fhirType, 'Reference');
    });

    test('construction with minimal fields', () {
      const ref = Reference();
      expect(ref.reference, isNull);
      expect(ref.type, isNull);
      expect(ref.identifier, isNull);
      expect(ref.display, isNull);
    });

    test('construction with reference string only', () {
      final ref = Reference(reference: FhirString('Patient/123'));
      expect(ref.reference?.valueString, 'Patient/123');
      expect(ref.display, isNull);
    });

    test('toJson produces correct JSON', () {
      final ref = Reference(
        reference: FhirString('Patient/123'),
        display: FhirString('John Doe'),
      );
      final json = ref.toJson();
      expect(json['reference'], 'Patient/123');
      expect(json['display'], 'John Doe');
      expect(json.containsKey('type'), isFalse);
      expect(json.containsKey('identifier'), isFalse);
    });

    test('toJson with identifier', () {
      final ref = Reference(
        identifier: Identifier(
          system: FhirUri('http://example.org'),
          value: FhirString('MRN-123'),
        ),
      );
      final json = ref.toJson();
      expect(json['identifier'], isA<Map>());
      expect(json['identifier']['system'], 'http://example.org');
      expect(json['identifier']['value'], 'MRN-123');
    });

    test('fromJson round-trips correctly', () {
      final original = Reference(
        reference: FhirString('Observation/456'),
        type: FhirUri('Observation'),
        display: FhirString('Blood Pressure'),
      );
      final json = original.toJson();
      final restored = Reference.fromJson(json);
      expect(restored.reference?.valueString, original.reference?.valueString);
      expect(restored.type?.valueString, original.type?.valueString);
      expect(restored.display?.valueString, original.display?.valueString);
    });

    test('fromJson with identifier round-trips', () {
      final original = Reference(
        reference: FhirString('Patient/123'),
        identifier: Identifier(
          system: FhirUri('urn:oid:2.16.840'),
          value: FhirString('12345'),
        ),
      );
      final json = original.toJson();
      final restored = Reference.fromJson(json);
      expect(restored.identifier?.system?.valueString, 'urn:oid:2.16.840');
      expect(restored.identifier?.value?.valueString, '12345');
    });

    test('fromJsonString works', () {
      const json = '{"reference":"Patient/123","display":"John Doe"}';
      final ref = Reference.fromJsonString(json);
      expect(ref.reference?.valueString, 'Patient/123');
      expect(ref.display?.valueString, 'John Doe');
    });

    test('copyWith creates modified copy', () {
      final original = Reference(
        reference: FhirString('Patient/123'),
        display: FhirString('John Doe'),
      );
      final modified = original.copyWith(
        display: FhirString('Jane Doe'),
      );
      expect(modified.display?.valueString, 'Jane Doe');
      expect(modified.reference?.valueString, 'Patient/123');
    });

    test('copyWith with no args returns equal object', () {
      final original = Reference(
        reference: FhirString('Patient/123'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Reference(reference: FhirString('Patient/123'));
      final b = Reference(reference: FhirString('Patient/123'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Reference(reference: FhirString('Patient/123'));
      final b = Reference(reference: FhirString('Patient/456'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final ref = Reference(
        reference: FhirString('Patient/123'),
        display: FhirString('John Doe'),
      );
      expect(ref.getChildByName('reference'), isA<FhirString>());
      expect(ref.getChildByName('display'), isA<FhirString>());
      expect(ref.getChildByName('type'), isNull);
    });

    test('clone creates deep copy', () {
      final ref = Reference(
        reference: FhirString('Patient/123'),
        display: FhirString('John Doe'),
      );
      final cloned = ref.clone();
      expect(cloned.equalsDeep(ref), isTrue);
    });

    test('absolute URL reference', () {
      final ref = Reference(
        reference: FhirString('http://example.org/fhir/Patient/123'),
      );
      expect(
        ref.reference?.valueString,
        'http://example.org/fhir/Patient/123',
      );
    });

    test('contained resource reference', () {
      final ref = Reference(reference: FhirString('#med1'));
      expect(ref.reference?.valueString, '#med1');
    });
  });
}
