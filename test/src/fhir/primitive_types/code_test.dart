import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirCode Tests', () {
    const String validCode = 'ABC123';
    const String invalidCode = 'ABC 123'; // Invalid because of the space
    const String jsonCode = 'CODE123';
    const String yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirCode('Patient/123456').toString(), 'Patient/123456');
      expect(FhirCode('Patient/123456').toJson(), 'Patient/123456');
      expect(FhirCode('Patient/123456').value, 'Patient/123456');
      expect(FhirCode('http://Patient.com/123456').toString(),
          'http://Patient.com/123456');
      expect(FhirCode('http://Patient.com/123456').toJson(),
          'http://Patient.com/123456');
      expect(FhirCode('http://Patient.com/123456').value,
          'http://Patient.com/123456');
      expect(FhirCode('___').toString(), '___');
      expect(FhirCode('___').toJson(), '___');
      expect(FhirCode('').value, null);
    });

    test('Valid FhirCode from String', () {
      final FhirCode fhirCode = FhirCode(validCode);
      expect(fhirCode.value, equals(validCode));
      expect(fhirCode.toString(), equals(validCode));
      expect(fhirCode.toJson(), equals(validCode));
    });

    test('Invalid FhirCode throws FormatException', () {
      expect(() => FhirCode(invalidCode), throwsFormatException);
    });

    test('FhirCode tryParse with valid String', () {
      final FhirCode? fhirCode = FhirCode.tryParse(validCode);
      expect(fhirCode?.value, equals(validCode));
      expect(fhirCode?.toString(), equals(validCode));
      expect(fhirCode?.toJson(), equals(validCode));
    });

    test('FhirCode tryParse with invalid String', () {
      final FhirCode? fhirCode = FhirCode.tryParse(invalidCode);
      expect(fhirCode, isNull);
    });

    test('FhirCode fromJson with valid String', () {
      final FhirCode fhirCode = FhirCode.fromJson(jsonCode);
      expect(fhirCode.value, equals(jsonCode));
      expect(fhirCode.toJson(), equals(jsonCode));
    });

    test('FhirCode fromJson with invalid type throws FormatException', () {
      expect(() => FhirCode.fromJson(123), throwsFormatException);
    });

    test('FhirCode fromYaml with valid YAML', () {
      final FhirCode fhirCode = FhirCode.fromYaml(yamlCode);
      expect(fhirCode.value, equals(yamlCode));
      expect(fhirCode.toJson(), equals(yamlCode));
    });

    test('FhirCode equality with another FhirCode', () {
      final FhirCode fhirCode1 = FhirCode(validCode);
      final FhirCode fhirCode2 = FhirCode(validCode);
      expect(fhirCode1 == fhirCode2, isTrue);
      expect(fhirCode1.equals(fhirCode2), isTrue);
    });

    test('FhirCode equality with a String', () {
      final FhirCode fhirCode = FhirCode(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirCode == validCode, isTrue);
    });

    test('FhirCode inequality with a different String', () {
      final FhirCode fhirCode = FhirCode(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirCode == 'DIFFERENT', isFalse);
    });

    test('FhirCode clone', () {
      final FhirCode originalCode = FhirCode(validCode);
      final FhirCode clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirCode copyWith new value', () {
      final FhirCode originalCode = FhirCode(validCode);
      final FhirCode copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(originalCode.value,
          equals(validCode)); // Original should remain unchanged
    });

    test('FhirCode setElement', () {
      final FhirCode originalCode = FhirCode(validCode);
      final FhirCode updatedCode =
          originalCode.setElement('elementName', 'newElementValue');
      expect(updatedCode.value, equals(validCode));
    });

    test('FhirCode hashCode', () {
      final FhirCode fhirCode = FhirCode(validCode);
      expect(fhirCode.hashCode, equals(validCode.hashCode));
    });

    test('FhirCode toJsonString', () {
      final FhirCode fhirCode = FhirCode(validCode);
      expect(fhirCode.toJsonString(), equals('"$validCode"'));
    });
  });
}
