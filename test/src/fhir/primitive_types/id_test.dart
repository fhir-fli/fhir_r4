import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirId Tests', () {
    const String validCode = 'ABC123';
    const String invalidCode = 'ABC 123'; // Invalid because of the space
    const String jsonCode = 'CODE123';
    const String yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirId('Patient/123456').toString(), 'Patient/123456');
      expect(FhirId('Patient/123456').toJson(), 'Patient/123456');
      expect(FhirId('Patient/123456').value, 'Patient/123456');
      expect(FhirId('http://Patient.com/123456').toString(),
          'http://Patient.com/123456');
      expect(FhirId('http://Patient.com/123456').toJson(),
          'http://Patient.com/123456');
      expect(FhirId('http://Patient.com/123456').value,
          'http://Patient.com/123456');
      expect(FhirId('___').toString(), '___');
      expect(FhirId('___').toJson(), '___');
      expect(FhirId('').value, null);
    });

    test('Valid FhirId from String', () {
      final FhirId fhirId = FhirId(validCode);
      expect(fhirId.value, equals(validCode));
      expect(fhirId.toString(), equals(validCode));
      expect(fhirId.toJson(), equals(validCode));
    });

    test('Invalid FhirId throws FormatException', () {
      expect(() => FhirId(invalidCode), throwsFormatException);
    });

    test('FhirId tryParse with valid String', () {
      final FhirId? fhirId = FhirId.tryParse(validCode);
      expect(fhirId?.value, equals(validCode));
      expect(fhirId?.toString(), equals(validCode));
      expect(fhirId?.toJson(), equals(validCode));
    });

    test('FhirId tryParse with invalid String', () {
      final FhirId? fhirId = FhirId.tryParse(invalidCode);
      expect(fhirId, isNull);
    });

    test('FhirId fromJson with valid String', () {
      final FhirId fhirId = FhirId.fromJson(jsonCode);
      expect(fhirId.value, equals(jsonCode));
      expect(fhirId.toJson(), equals(jsonCode));
    });

    test('FhirId fromJson with invalid type throws FormatException', () {
      expect(() => FhirId.fromJson(123), throwsFormatException);
    });

    test('FhirId fromYaml with valid YAML', () {
      final FhirId fhirId = FhirId.fromYaml(yamlCode);
      expect(fhirId.value, equals(yamlCode));
      expect(fhirId.toJson(), equals(yamlCode));
    });

    test('FhirId equality with another FhirId', () {
      final FhirId fhirId1 = FhirId(validCode);
      final FhirId fhirId2 = FhirId(validCode);
      expect(fhirId1 == fhirId2, isTrue);
      expect(fhirId1.equals(fhirId2), isTrue);
    });

    test('FhirId equality with a String', () {
      final FhirId fhirId = FhirId(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirId == validCode, isTrue);
    });

    test('FhirId inequality with a different String', () {
      final FhirId fhirId = FhirId(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirId == 'DIFFERENT', isFalse);
    });

    test('FhirId clone', () {
      final FhirId originalCode = FhirId(validCode);
      final FhirId clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirId copyWith new value', () {
      final FhirId originalCode = FhirId(validCode);
      final FhirId copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(originalCode.value,
          equals(validCode)); // Original should remain unchanged
    });

    test('FhirId setElement', () {
      final FhirId originalCode = FhirId(validCode);
      final FhirId updatedCode =
          originalCode.setElement('elementName', 'newElementValue');
      expect(updatedCode.value, equals(validCode));
    });

    test('FhirId hashCode', () {
      final FhirId fhirId = FhirId(validCode);
      expect(fhirId.hashCode, equals(validCode.hashCode));
    });

    test('FhirId toJsonString', () {
      final FhirId fhirId = FhirId(validCode);
      expect(fhirId.toJsonString(), equals('"$validCode"'));
    });
  });
}
