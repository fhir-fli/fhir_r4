import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
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
      expect(fhirString.toJson(), equals(validString));
    });

    test('FhirString fromJson with valid String', () {
      final fhirString = FhirString.fromJson(jsonString);
      expect(fhirString.value, equals(jsonString));
      expect(fhirString.toJson(), equals(jsonString));
    });

    test('FhirString fromJson with invalid input throws FormatException', () {
      expect(() => FhirString.fromJson(123), throwsFormatException);
    });

    test('FhirString fromYaml with valid YAML', () {
      final fhirString = FhirString.fromYaml(yamlString);
      expect(fhirString.value, equals(yamlString));
      expect(fhirString.toJson(), equals(yamlString));
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

    test('FhirString setElement', () {
      final originalString = FhirString(validString);
      final updatedString =
          originalString.setElement('elementName', 'newElementValue');
      expect(updatedString.value, equals(validString));
      expect(updatedString.element != originalString.element, isTrue);
    });

    test('FhirString with Element', () {
      final fhirString = FhirString(validString, element);
      expect(fhirString.element?.id, equals('testElement'));
    });

    test('FhirString toJsonString', () {
      final fhirString = FhirString(validString);
      expect(fhirString.toJsonString(), equals('"$validString"'));
    });

    test('FhirString hashCode', () {
      final fhirString = FhirString(validString);
      expect(fhirString.hashCode, equals(validString.hashCode));
    });
  });
}
