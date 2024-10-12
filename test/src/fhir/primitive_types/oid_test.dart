import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirOid Tests', () {
    const validCode = 'ABC123';
    const invalidCode = 'ABC 123'; // Invalid because of the space
    const jsonCode = 'CODE123';
    const yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirOid('Patient/123456').toString(), 'Patient/123456');
      expect(FhirOid('Patient/123456').toJson(), 'Patient/123456');
      expect(FhirOid('Patient/123456').value, 'Patient/123456');
      expect(
        FhirOid('http://Patient.com/123456').toString(),
        'http://Patient.com/123456',
      );
      expect(
        FhirOid('http://Patient.com/123456').toJson(),
        'http://Patient.com/123456',
      );
      expect(
        FhirOid('http://Patient.com/123456').value,
        'http://Patient.com/123456',
      );
      expect(FhirOid('___').toString(), '___');
      expect(FhirOid('___').toJson(), '___');
      expect(FhirOid('').value, null);
    });

    test('Valid FhirOid from String', () {
      final fhirOid = FhirOid(validCode);
      expect(fhirOid.value, equals(validCode));
      expect(fhirOid.toString(), equals(validCode));
      expect(fhirOid.toJson(), equals(validCode));
    });

    test('Invalid FhirOid throws FormatException', () {
      expect(() => FhirOid(invalidCode), throwsFormatException);
    });

    test('FhirOid tryParse with valid String', () {
      final fhirOid = FhirOid.tryParse(validCode);
      expect(fhirOid?.value, equals(validCode));
      expect(fhirOid?.toString(), equals(validCode));
      expect(fhirOid?.toJson(), equals(validCode));
    });

    test('FhirOid tryParse with invalid String', () {
      final fhirOid = FhirOid.tryParse(invalidCode);
      expect(fhirOid, isNull);
    });

    test('FhirOid fromJson with valid String', () {
      final fhirOid = FhirOid.fromJson(jsonCode);
      expect(fhirOid.value, equals(jsonCode));
      expect(fhirOid.toJson(), equals(jsonCode));
    });

    test('FhirOid fromJson with invalid type throws FormatException', () {
      expect(() => FhirOid.fromJson(123), throwsFormatException);
    });

    test('FhirOid fromYaml with valid YAML', () {
      final fhirOid = FhirOid.fromYaml(yamlCode);
      expect(fhirOid.value, equals(yamlCode));
      expect(fhirOid.toJson(), equals(yamlCode));
    });

    test('FhirOid equality with another FhirOid', () {
      final fhirOid1 = FhirOid(validCode);
      final fhirOid2 = FhirOid(validCode);
      expect(fhirOid1 == fhirOid2, isTrue);
      expect(fhirOid1.equals(fhirOid2), isTrue);
    });

    test('FhirOid equality with a String', () {
      final fhirOid = FhirOid(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == validCode, isTrue);
    });

    test('FhirOid inequality with a different String', () {
      final fhirOid = FhirOid(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == 'DIFFERENT', isFalse);
    });

    test('FhirOid clone', () {
      final originalCode = FhirOid(validCode);
      final clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirOid copyWith new value', () {
      final originalCode = FhirOid(validCode);
      final copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(
        originalCode.value,
        equals(validCode),
      ); // Original should remain unchanged
    });

    test('FhirOid setElement', () {
      final originalCode = FhirOid(validCode);
      final updatedCode =
          originalCode.setElement('elementName', 'newElementValue');
      expect(updatedCode.value, equals(validCode));
    });

    test('FhirOid hashCode', () {
      final fhirOid = FhirOid(validCode);
      expect(fhirOid.hashCode, equals(validCode.hashCode));
    });

    test('FhirOid toJsonString', () {
      final fhirOid = FhirOid(validCode);
      expect(fhirOid.toJsonString(), equals('"$validCode"'));
    });
  });
}
