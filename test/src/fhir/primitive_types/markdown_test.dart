import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirMarkdown Tests', () {
    const validCode = 'ABC123';
    const invalidCode = 'ABC 123'; // Invalid because of the space
    const jsonCode = 'CODE123';
    const yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirMarkdown('Patient/123456').toString(), 'Patient/123456');
      expect(FhirMarkdown('Patient/123456').toJson(), 'Patient/123456');
      expect(FhirMarkdown('Patient/123456').value, 'Patient/123456');
      expect(
        FhirMarkdown('http://Patient.com/123456').toString(),
        'http://Patient.com/123456',
      );
      expect(
        FhirMarkdown('http://Patient.com/123456').toJson(),
        'http://Patient.com/123456',
      );
      expect(
        FhirMarkdown('http://Patient.com/123456').value,
        'http://Patient.com/123456',
      );
      expect(FhirMarkdown('___').toString(), '___');
      expect(FhirMarkdown('___').toJson(), '___');
      expect(FhirMarkdown('').value, null);
    });

    test('Valid FhirMarkdown from String', () {
      final fhirMarkdown = FhirMarkdown(validCode);
      expect(fhirMarkdown.value, equals(validCode));
      expect(fhirMarkdown.toString(), equals(validCode));
      expect(fhirMarkdown.toJson(), equals(validCode));
    });

    test('Invalid FhirMarkdown throws FormatException', () {
      expect(() => FhirMarkdown(invalidCode), throwsFormatException);
    });

    test('FhirMarkdown tryParse with valid String', () {
      final fhirMarkdown = FhirMarkdown.tryParse(validCode);
      expect(fhirMarkdown?.value, equals(validCode));
      expect(fhirMarkdown?.toString(), equals(validCode));
      expect(fhirMarkdown?.toJson(), equals(validCode));
    });

    test('FhirMarkdown tryParse with invalid String', () {
      final fhirMarkdown = FhirMarkdown.tryParse(invalidCode);
      expect(fhirMarkdown, isNull);
    });

    test('FhirMarkdown fromJson with valid String', () {
      final fhirMarkdown = FhirMarkdown.fromJson(jsonCode);
      expect(fhirMarkdown.value, equals(jsonCode));
      expect(fhirMarkdown.toJson(), equals(jsonCode));
    });

    test('FhirMarkdown fromJson with invalid type throws FormatException', () {
      expect(() => FhirMarkdown.fromJson(123), throwsFormatException);
    });

    test('FhirMarkdown fromYaml with valid YAML', () {
      final fhirMarkdown = FhirMarkdown.fromYaml(yamlCode);
      expect(fhirMarkdown.value, equals(yamlCode));
      expect(fhirMarkdown.toJson(), equals(yamlCode));
    });

    test('FhirMarkdown equality with another FhirMarkdown', () {
      final fhirMarkdown1 = FhirMarkdown(validCode);
      final fhirMarkdown2 = FhirMarkdown(validCode);
      expect(fhirMarkdown1 == fhirMarkdown2, isTrue);
      expect(fhirMarkdown1.equals(fhirMarkdown2), isTrue);
    });

    test('FhirMarkdown equality with a String', () {
      final fhirMarkdown = FhirMarkdown(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirMarkdown == validCode, isTrue);
    });

    test('FhirMarkdown inequality with a different String', () {
      final fhirMarkdown = FhirMarkdown(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirMarkdown == 'DIFFERENT', isFalse);
    });

    test('FhirMarkdown clone', () {
      final originalCode = FhirMarkdown(validCode);
      final clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirMarkdown copyWith new value', () {
      final originalCode = FhirMarkdown(validCode);
      final copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(
        originalCode.value,
        equals(validCode),
      ); // Original should remain unchanged
    });

    test('FhirMarkdown setElement', () {
      final originalCode = FhirMarkdown(validCode);
      final updatedCode =
          originalCode.setElement('elementName', 'newElementValue');
      expect(updatedCode.value, equals(validCode));
    });

    test('FhirMarkdown hashCode', () {
      final fhirMarkdown = FhirMarkdown(validCode);
      expect(fhirMarkdown.hashCode, equals(validCode.hashCode));
    });

    test('FhirMarkdown toJsonString', () {
      final fhirMarkdown = FhirMarkdown(validCode);
      expect(fhirMarkdown.toJsonString(), equals('"$validCode"'));
    });
  });
}
