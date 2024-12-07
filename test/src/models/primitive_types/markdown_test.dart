import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirMarkdown Tests', () {
    const validCode = 'ABC123';
    const validCode2 = 'ABC 123';
    const jsonCode = 'CODE123';
    const yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirMarkdown(input: 'Patient/123456').toString(), 'Patient/123456');
      expect(
        FhirMarkdown(input: 'Patient/123456').toJson()['value'],
        'Patient/123456',
      );
      expect(FhirMarkdown(input: 'Patient/123456').value, 'Patient/123456');
      expect(
        FhirMarkdown(input: 'http://Patient.com/123456').toString(),
        'http://Patient.com/123456',
      );
      expect(
        FhirMarkdown(input: 'http://Patient.com/123456').toJson()['value'],
        'http://Patient.com/123456',
      );
      expect(
        FhirMarkdown(input: 'http://Patient.com/123456').value,
        'http://Patient.com/123456',
      );
      expect(FhirMarkdown(input: '___').toString(), '___');
      expect(FhirMarkdown(input: '___').toJson()['value'], '___');
    });

    test('Invalid FhirMarkdown - cannot be empty', () {
      expect(
        () => FhirMarkdown(input: ''),
        throwsA(isA<FormatException>()),
      );
    });

    test('Valid FhirMarkdown from String', () {
      final fhirMarkdown = FhirMarkdown(input: validCode);
      expect(fhirMarkdown.value, equals(validCode));
      expect(fhirMarkdown.toString(), equals(validCode));
      expect(fhirMarkdown.toJson()['value'], equals(validCode));
      expect(FhirMarkdown(input: validCode2).toJson()['value'], equals(validCode2));
    });

    test('FhirMarkdown tryParse with valid String', () {
      final fhirMarkdown = FhirMarkdown.tryParse(validCode);
      expect(fhirMarkdown?.value, equals(validCode));
      expect(fhirMarkdown?.toString(), equals(validCode));
      expect(fhirMarkdown?.toJson()['value'], equals(validCode));

      final fhirMarkdown2 = FhirMarkdown.tryParse(validCode2);
      expect(fhirMarkdown2?.value, equals(validCode2));
      expect(fhirMarkdown2?.toString(), equals(validCode2));
      expect(fhirMarkdown2?.toJson()['value'], equals(validCode2));
    });

    test('FhirMarkdown fromJson with valid String', () {
      final fhirMarkdown = FhirMarkdown.fromJson({'value': jsonCode});
      expect(fhirMarkdown.value, equals(jsonCode));
      expect(fhirMarkdown.toJson()['value'], equals(jsonCode));
    });

    test('FhirMarkdown fromJson with invalid type throws FormatException', () {
      expect(
        () => FhirMarkdown.fromJson({'value': 123}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirMarkdown fromYaml with valid YAML', () {
      final fhirMarkdown = FhirMarkdown.fromYaml('value: $yamlCode');
      expect(fhirMarkdown.value, equals(yamlCode));
      expect(fhirMarkdown.toJson()['value'], equals(yamlCode));
    });

    test('FhirMarkdown equality with another FhirMarkdown', () {
      final fhirMarkdown1 = FhirMarkdown(input: validCode);
      final fhirMarkdown2 = FhirMarkdown(input: validCode);
      expect(fhirMarkdown1 == fhirMarkdown2, isTrue);
      expect(fhirMarkdown1.equals(fhirMarkdown2), isTrue);
    });

    test('FhirMarkdown equality with a String', () {
      final fhirMarkdown = FhirMarkdown(input: validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirMarkdown == validCode, isTrue);
    });

    test('FhirMarkdown inequality with a different String', () {
      final fhirMarkdown = FhirMarkdown(input: validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirMarkdown == 'DIFFERENT', isFalse);
    });

    test('FhirMarkdown clone', () {
      final originalCode = FhirMarkdown(input: validCode);
      final clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirMarkdown copyWith new value', () {
      final originalCode = FhirMarkdown(input: validCode);
      final copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(
        originalCode.value,
        equals(validCode),
      ); // Original should remain unchanged
    });

    test('FhirMarkdown toJsonString', () {
      final fhirMarkdown = FhirMarkdown(input: validCode);
      expect(fhirMarkdown.toJsonString(), equals('{"value":"$validCode"}'));
    });
  });
}
