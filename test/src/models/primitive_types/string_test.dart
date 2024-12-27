import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void stringTest() {
  group('FhirString Tests', () {
    const validString = 'Hello, FHIR!';
    const otherString = ' How are you?';
    const jsonString = 'JSON String';
    const yamlString = 'YAML String';
    const emptyString = '';
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirString creation and validation
    test('FhirString from String value', () {
      final fhirString = FhirString(validString);
      expect(fhirString.value, equals(validString));
      expect(fhirString.toString(), equals(validString));
      expect(fhirString.toJson()['value'], equals(validString));
    });

    test('FhirString fromJson with valid String', () {
      final fhirString = FhirString.fromJson({'value': jsonString});
      expect(fhirString.value, equals(jsonString));
      expect(fhirString.toJson()['value'], equals(jsonString));
    });

    test('FhirString fromJson with invalid input throws FormatException', () {
      expect(
        () => FhirString.fromJson({'value': 123}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirString fromYaml with valid YAML', () {
      final fhirString = FhirString.fromYaml('value: $yamlString');
      expect(fhirString.value, equals(yamlString));
      expect(fhirString.toJson()['value'], equals(yamlString));
    });

    test('FhirString tryParse with valid String', () {
      final fhirString = FhirString.tryParse(validString);
      expect(fhirString?.value, equals(validString));
    });

    test('FhirString tryParse with invalid input returns null', () {
      final fhirString =
          FhirString.tryParse(123); // Not a valid input for FhirString
      expect(fhirString, isNull);
    });

    test('FhirString tryParse with empty string', () {
      final fhirString = FhirString.tryParse(emptyString);
      expect(fhirString?.value, equals(emptyString));
    });

    test('FhirString equality with another FhirString', () {
      final fhirString1 = FhirString(validString);
      final fhirString2 = FhirString(validString);
      expect(fhirString1 == fhirString2, isTrue);
      expect(fhirString1.equals(fhirString2), isTrue);
    });

    test('FhirString equality with a String', () {
      final fhirString = FhirString(validString);
      // ignore: unrelated_type_equality_checks
      expect(fhirString == validString, isTrue);
    });

    test('FhirString inequality with a different String', () {
      final fhirString = FhirString(validString);
      // ignore: unrelated_type_equality_checks
      expect(fhirString == 'Different String', isFalse);
    });

    // Additional string-specific methods
    test('FhirString length', () {
      final fhirString = FhirString(validString);
      expect(fhirString.length, equals(validString.length));
    });

    test('FhirString isEmptyString', () {
      final fhirStringEmpty = FhirString(emptyString);
      final fhirStringNonEmpty = FhirString(validString);
      expect(fhirStringEmpty.isEmptyString, isTrue);
      expect(fhirStringNonEmpty.isEmptyString, isFalse);
    });

    test('FhirString isNotEmpty', () {
      final fhirStringEmpty = FhirString(emptyString);
      final fhirStringNonEmpty = FhirString(validString);
      expect(fhirStringEmpty.isNotEmpty, isFalse);
      expect(fhirStringNonEmpty.isNotEmpty, isTrue);
    });

    test('FhirString addition (concatenation)', () {
      final fhirString = FhirString(validString);
      final concatenated = fhirString + otherString;
      expect(concatenated, equals(validString + otherString));
    });

    test('FhirString substring', () {
      final fhirString = FhirString(validString);
      final substring = fhirString.substring(7);
      expect(substring, equals(validString.substring(7)));
    });

    test('FhirString trim', () {
      final fhirString = FhirString('   $validString   ');
      expect(fhirString.trim(), equals(validString));
    });

    // FhirString-specific methods inherited from PrimitiveType
    test('FhirString clone', () {
      final originalString = FhirString(validString);
      final clonedString = originalString.clone();
      expect(clonedString.value, equals(validString));
      expect(clonedString == originalString, isTrue);
      expect(clonedString.hashCode, equals(originalString.hashCode));
    });

    test('FhirString copyWith new value', () {
      final originalString = FhirString(validString);
      final copiedString = originalString.copyWith(newValue: 'New String');
      expect(copiedString.value, equals('New String'));
      expect(originalString.value, equals(validString));
    });

    test('FhirString with Element', () {
      final fhirString = FhirString(validString, element: element);
      expect(fhirString.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirString toJsonString', () {
      final fhirString = FhirString(validString);
      expect(fhirString.toJsonString(), equals('{"value":"$validString"}'));
    });
  });
}
