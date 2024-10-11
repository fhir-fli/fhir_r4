import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirOid Tests', () {
    const String validCode = 'ABC123';
    const String invalidCode = 'ABC 123'; // Invalid because of the space
    const String jsonCode = 'CODE123';
    const String yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirOid('Patient/123456').toString(), 'Patient/123456');
      expect(FhirOid('Patient/123456').toJson(), 'Patient/123456');
      expect(FhirOid('Patient/123456').value, 'Patient/123456');
      expect(FhirOid('http://Patient.com/123456').toString(),
          'http://Patient.com/123456');
      expect(FhirOid('http://Patient.com/123456').toJson(),
          'http://Patient.com/123456');
      expect(FhirOid('http://Patient.com/123456').value,
          'http://Patient.com/123456');
      expect(FhirOid('___').toString(), '___');
      expect(FhirOid('___').toJson(), '___');
      expect(FhirOid('').value, null);
    });

    test('Valid FhirOid from String', () {
      final FhirOid fhirOid = FhirOid(validCode);
      expect(fhirOid.value, equals(validCode));
      expect(fhirOid.toString(), equals(validCode));
      expect(fhirOid.toJson(), equals(validCode));
    });

    test('Invalid FhirOid throws FormatException', () {
      expect(() => FhirOid(invalidCode), throwsFormatException);
    });

    test('FhirOid tryParse with valid String', () {
      final FhirOid? fhirOid = FhirOid.tryParse(validCode);
      expect(fhirOid?.value, equals(validCode));
      expect(fhirOid?.toString(), equals(validCode));
      expect(fhirOid?.toJson(), equals(validCode));
    });

    test('FhirOid tryParse with invalid String', () {
      final FhirOid? fhirOid = FhirOid.tryParse(invalidCode);
      expect(fhirOid, isNull);
    });

    test('FhirOid fromJson with valid String', () {
      final FhirOid fhirOid = FhirOid.fromJson(jsonCode);
      expect(fhirOid.value, equals(jsonCode));
      expect(fhirOid.toJson(), equals(jsonCode));
    });

    test('FhirOid fromJson with invalid type throws FormatException', () {
      expect(() => FhirOid.fromJson(123), throwsFormatException);
    });

    test('FhirOid fromYaml with valid YAML', () {
      final FhirOid fhirOid = FhirOid.fromYaml(yamlCode);
      expect(fhirOid.value, equals(yamlCode));
      expect(fhirOid.toJson(), equals(yamlCode));
    });

    test('FhirOid equality with another FhirOid', () {
      final FhirOid fhirOid1 = FhirOid(validCode);
      final FhirOid fhirOid2 = FhirOid(validCode);
      expect(fhirOid1 == fhirOid2, isTrue);
      expect(fhirOid1.equals(fhirOid2), isTrue);
    });

    test('FhirOid equality with a String', () {
      final FhirOid fhirOid = FhirOid(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == validCode, isTrue);
    });

    test('FhirOid inequality with a different String', () {
      final FhirOid fhirOid = FhirOid(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == 'DIFFERENT', isFalse);
    });

    test('FhirOid clone', () {
      final FhirOid originalCode = FhirOid(validCode);
      final FhirOid clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirOid copyWith new value', () {
      final FhirOid originalCode = FhirOid(validCode);
      final FhirOid copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(originalCode.value,
          equals(validCode)); // Original should remain unchanged
    });

    test('FhirOid setElement', () {
      final FhirOid originalCode = FhirOid(validCode);
      final FhirOid updatedCode =
          originalCode.setElement('elementName', 'newElementValue');
      expect(updatedCode.value, equals(validCode));
    });

    test('FhirOid hashCode', () {
      final FhirOid fhirOid = FhirOid(validCode);
      expect(fhirOid.hashCode, equals(validCode.hashCode));
    });

    test('FhirOid toJsonString', () {
      final FhirOid fhirOid = FhirOid(validCode);
      expect(fhirOid.toJsonString(), equals('"$validCode"'));
    });
  });
}
