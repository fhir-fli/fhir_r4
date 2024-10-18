import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirId Tests', () {
    const validCode = 'ABC123';
    const invalidCode = 'ABC 123'; // Invalid because of the space
    const jsonCode = 'CODE123';
    const yamlCode = 'YAML_CODE';

    test('FhirId validation', () {
      // Valid FHIR IDs
      expect(FhirId('Patient123').toString(), 'Patient123');
      expect(FhirId('Patient123').toJson()['value'], 'Patient123');
      expect(FhirId('Patient123').value, 'Patient123');

      expect(FhirId('Patient_123').toString(), 'Patient_123');
      expect(FhirId('Patient_123').toJson()['value'], 'Patient_123');
      expect(FhirId('Patient_123').value, 'Patient_123');

      // Invalid FHIR IDs
      expect(
        () => FhirId('http://example.com/Patient123'),
        throwsA(
          isA<FormatException>(),
        ),
      );

      expect(
        () => FhirId('___'),
        throwsA(
          isA<FormatException>(),
        ),
      ); // Underscores as the first characters are invalid
      expect(
        () => FhirId('_Patient123'),
        throwsA(isA<FormatException>()),
      ); // Underscore as the first character
      expect(
        () => FhirId('Patient!123'),
        throwsA(isA<FormatException>()),
      ); // Invalid character ('!')
      expect(
        () => FhirId(''),
        throwsA(isA<FormatException>()),
      ); // Empty string should also throw an error
    });

    test('Valid FhirId from String', () {
      final fhirId = FhirId(validCode);
      expect(fhirId.value, equals(validCode));
      expect(fhirId.toString(), equals(validCode));
      expect(fhirId.toJson()['value'], equals(validCode));
    });

    test('Invalid FhirId throws FormatException', () {
      expect(() => FhirId(invalidCode), throwsFormatException);
    });

    test('FhirId tryParse with valid String', () {
      final fhirId = FhirId.tryParse(validCode);
      expect(fhirId?.value, equals(validCode));
      expect(fhirId?.toString(), equals(validCode));
      expect(fhirId?.toJson()['value'], equals(validCode));
    });

    test('FhirId tryParse with invalid String', () {
      final fhirId = FhirId.tryParse(invalidCode);
      expect(fhirId, isNull);
    });

    test('FhirId fromJson with valid String', () {
      final fhirId = FhirId.fromJson({'value': jsonCode});
      expect(fhirId.value, equals(jsonCode));
      expect(fhirId.toJson()['value'], equals(jsonCode));
    });

    test('FhirId fromJson with invalid type throws FormatException', () {
      expect(() => FhirId.fromJson({'value': 123}), throwsA(isA<TypeError>()));
    });

    test('FhirId fromYaml with valid YAML', () {
      final fhirId = FhirId.fromYaml('value: $yamlCode');
      expect(fhirId.value, equals(yamlCode));
      expect(fhirId.toJson()['value'], equals(yamlCode));
    });

    test('FhirId equality with another FhirId', () {
      final fhirId1 = FhirId(validCode);
      final fhirId2 = FhirId(validCode);
      expect(fhirId1 == fhirId2, isTrue);
      expect(fhirId1.equals(fhirId2), isTrue);
    });

    test('FhirId equality with a String', () {
      final fhirId = FhirId(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirId == validCode, isTrue);
    });

    test('FhirId inequality with a different String', () {
      final fhirId = FhirId(validCode);
      // ignore: unrelated_type_equality_checks
      expect(fhirId == 'DIFFERENT', isFalse);
    });

    test('FhirId clone', () {
      final originalCode = FhirId(validCode);
      final clonedCode = originalCode.clone();
      expect(clonedCode.value, equals(validCode));
      expect(clonedCode == originalCode, isTrue);
      expect(clonedCode.hashCode, equals(originalCode.hashCode));
    });

    test('FhirId copyWith new value', () {
      final originalCode = FhirId(validCode);
      final copiedCode = originalCode.copyWith(newValue: 'NEW_CODE');
      expect(copiedCode.value, equals('NEW_CODE'));
      expect(
        originalCode.value,
        equals(validCode),
      ); // Original should remain unchanged
    });

    test('FhirId toJsonString', () {
      final fhirId = FhirId(validCode);
      expect(fhirId.toJsonString(), equals('{"value":"$validCode"}'));
    });
  });
}
