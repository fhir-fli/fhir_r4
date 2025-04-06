import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void codeTest() {
  group('FhirCode Tests', () {
    const validCode = 'ABC123';
    const jsonCode = 'CODE123';
    const yamlCode = 'YAML_CODE';

    test('Code', () {
      expect(FhirCode('Patient/123456').toString(), 'Patient/123456');
      expect(FhirCode('Patient/123456').toJson()['value'], 'Patient/123456');
      expect(FhirCode('Patient/123456').valueString, 'Patient/123456');
      expect(
        FhirCode('http://Patient.com/123456').toString(),
        'http://Patient.com/123456',
      );
      expect(
        FhirCode('http://Patient.com/123456').toJson()['value'],
        'http://Patient.com/123456',
      );
      expect(
        FhirCode('http://Patient.com/123456').valueString,
        'http://Patient.com/123456',
      );
      expect(FhirCode('___').toString(), '___');
      expect(FhirCode('___').toJson()['value'], '___');
    });

    test('Valid FhirCode from String', () {
      final fhirCode = FhirCode(validCode);
      expect(fhirCode.valueString, equals(validCode));
      expect(fhirCode.toString(), equals(validCode));
      expect(fhirCode.toJson()['value'], equals(validCode));
    });

    test('Invalid FhirCode throws FormatException', () {
      expect(() => FhirCode(''), throwsFormatException);
    });

    test('FhirCode tryParse with valid String', () {
      final fhirCode = FhirCode.tryParse(validCode);
      expect(fhirCode?.valueString, equals(validCode));
      expect(fhirCode?.toString(), equals(validCode));
      expect(fhirCode?.toJson()['value'], equals(validCode));
    });

    test('FhirCode fromJson with valid String', () {
      final fhirCode = FhirCode.fromJson({'value': jsonCode});
      expect(fhirCode.valueString, equals(jsonCode));
      expect(fhirCode.toJson()['value'], equals(jsonCode));
    });

    test('FhirCode fromJson with invalid type throws FormatException', () {
      expect(
        () => FhirCode.fromJson({'value': 123}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirCode fromYaml with valid YAML', () {
      final fhirCode = FhirCode.fromYaml('value: $yamlCode');
      expect(fhirCode.valueString, equals(yamlCode));
      expect(fhirCode.toJson()['value'], equals(yamlCode));
    });

    test('FhirCode equality with another FhirCode', () {
      final fhirCode1 = FhirCode(validCode);
      final fhirCode2 = FhirCode(validCode);
      expect(fhirCode1 == fhirCode2, isTrue);
      expect(fhirCode1.equals(fhirCode2), isTrue);
    });

    test('FhirCode equality with a String', () {
      final fhirCode = FhirCode(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirCode == validCode, isTrue);
    });

    test('FhirCode inequality with a different String', () {
      final fhirCode = FhirCode(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirCode == 'DIFFERENT', isFalse);
    });

    test('FhirCode clone', () {
      final originalCode = FhirCode(validCode);
      final clonedCode = originalCode.clone();
      expect(clonedCode.valueString, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirCode copyWith new value', () {
      final originalCode = FhirCode(validCode);
      final copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.valueString, equals('NEW_CODE'));
      expect(
        originalCode.valueString,
        equals(validCode),
      ); // Original should remain unchanged
    });

    test('FhirCode toJsonString', () {
      final fhirCode = FhirCode(validCode);
      expect(fhirCode.toJsonString(), equals('{"value":"$validCode"}'));
    });
  });
}
