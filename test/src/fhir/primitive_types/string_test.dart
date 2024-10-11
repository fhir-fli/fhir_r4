import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirString Tests', () {
    const String validString = 'Hello, FHIR!';
    const String otherString = ' How are you?';
    const String jsonString = 'JSON String';
    const String yamlString = 'YAML String';
    const String emptyString = '';
    final Element element = Element(id: 'testElement'.toFhirString);

    // Basic FhirString creation and validation
    test('FhirString from String value', () {
      final FhirString fhirString = FhirString(validString);
      expect(fhirString.value, equals(validString));
      expect(fhirString.toString(), equals(validString));
      expect(fhirString.toJson(), equals(validString));
    });

    test('FhirString fromJson with valid String', () {
      final FhirString fhirString = FhirString.fromJson(jsonString);
      expect(fhirString.value, equals(jsonString));
      expect(fhirString.toJson(), equals(jsonString));
    });

    test('FhirString fromJson with invalid input throws FormatException', () {
      expect(() => FhirString.fromJson(123), throwsFormatException);
    });

    test('FhirString fromYaml with valid YAML', () {
      final FhirString fhirString = FhirString.fromYaml(yamlString);
      expect(fhirString.value, equals(yamlString));
      expect(fhirString.toJson(), equals(yamlString));
    });

    test('FhirString equality with another FhirString', () {
      final FhirString fhirString1 = FhirString(validString);
      final FhirString fhirString2 = FhirString(validString);
      expect(fhirString1 == fhirString2, isTrue);
      expect(fhirString1.equals(fhirString2), isTrue);
    });

    test('FhirString equality with a String', () {
      final FhirString fhirString = FhirString(validString);
      // ignore: unrelated_type_equality_checks
      expect(fhirString == validString, isTrue);
    });

    test('FhirString inequality with a different String', () {
      final FhirString fhirString = FhirString(validString);
      // ignore: unrelated_type_equality_checks
      expect(fhirString == 'Different String', isFalse);
    });

    // Additional string-specific methods
    test('FhirString length', () {
      final FhirString fhirString = FhirString(validString);
      expect(fhirString.length, equals(validString.length));
    });

    test('FhirString isEmptyString', () {
      final FhirString fhirStringEmpty = FhirString(emptyString);
      final FhirString fhirStringNonEmpty = FhirString(validString);
      expect(fhirStringEmpty.isEmptyString, isTrue);
      expect(fhirStringNonEmpty.isEmptyString, isFalse);
    });

    test('FhirString isNotEmpty', () {
      final FhirString fhirStringEmpty = FhirString(emptyString);
      final FhirString fhirStringNonEmpty = FhirString(validString);
      expect(fhirStringEmpty.isNotEmpty, isFalse);
      expect(fhirStringNonEmpty.isNotEmpty, isTrue);
    });

    test('FhirString addition (concatenation)', () {
      final FhirString fhirString = FhirString(validString);
      final String concatenated = fhirString + otherString;
      expect(concatenated, equals(validString + otherString));
    });

    test('FhirString substring', () {
      final FhirString fhirString = FhirString(validString);
      final String substring = fhirString.substring(7);
      expect(substring, equals(validString.substring(7)));
    });

    test('FhirString trim', () {
      final FhirString fhirString = FhirString('   $validString   ');
      expect(fhirString.trim(), equals(validString));
    });

    // FhirString-specific methods inherited from PrimitiveType
    test('FhirString clone', () {
      final FhirString originalString = FhirString(validString);
      final FhirString clonedString = originalString.clone();
      expect(clonedString.value, equals(validString));
      expect(clonedString == originalString, isTrue);
      expect(clonedString.hashCode, equals(originalString.hashCode));
    });

    test('FhirString copyWith new value', () {
      final FhirString originalString = FhirString(validString);
      final FhirString copiedString =
          originalString.copyWith(newValue: 'New String');
      expect(copiedString.value, equals('New String'));
      expect(originalString.value, equals(validString));
    });

    test('FhirString setElement', () {
      final FhirString originalString = FhirString(validString);
      final FhirString updatedString =
          originalString.setElement('elementName', 'newElementValue');
      expect(updatedString.value, equals(validString));
      expect(updatedString.element != originalString.element, isTrue);
    });

    test('FhirString with Element', () {
      final FhirString fhirString = FhirString(validString, element);
      expect(fhirString.element?.id, equals('testElement'));
    });

    test('FhirString toJsonString', () {
      final FhirString fhirString = FhirString(validString);
      expect(fhirString.toJsonString(), equals('"$validString"'));
    });

    test('FhirString hashCode', () {
      final FhirString fhirString = FhirString(validString);
      expect(fhirString.hashCode, equals(validString.hashCode));
    });
  });
}
