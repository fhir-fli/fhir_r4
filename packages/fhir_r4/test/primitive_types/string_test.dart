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
      expect(fhirString.valueString, equals(validString));
      expect(fhirString.toString(), equals(validString));
      expect(fhirString.toJson()['value'], equals(validString));
    });

    test('FhirString fromJson with valid String', () {
      final fhirString = FhirString.fromJson({'value': jsonString});
      expect(fhirString.valueString, equals(jsonString));
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
      expect(fhirString.valueString, equals(yamlString));
      expect(fhirString.toJson()['value'], equals(yamlString));
    });

    test('FhirString tryParse with valid String', () {
      final fhirString = FhirString.tryParse(validString);
      expect(fhirString?.valueString, equals(validString));
    });

    test('FhirString tryParse with invalid input returns null', () {
      final fhirString =
          FhirString.tryParse(123); // Not a valid input for FhirString
      expect(fhirString, isNull);
    });

    test('FhirString tryParse with empty string', () {
      final fhirString = FhirString.tryParse(emptyString);
      expect(fhirString?.valueString, equals(emptyString));
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
      expect(clonedString.valueString, equals(validString));
      expect(clonedString == originalString, isTrue);
      expect(clonedString.hashCode, equals(originalString.hashCode));
    });

    test('FhirString copyWith new value', () {
      final originalString = FhirString(validString);
      final copiedString = originalString.copyWith(newValue: 'New String');
      expect(copiedString.valueString, equals('New String'));
      expect(originalString.valueString, equals(validString));
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
  group('FhirString copyWith Tests:', () {
    test('should copy with new string values', () {
      final original = FhirString('Original text');
      expect(original.valueString, equals('Original text'));

      final copied = original.copyWith(newValue: 'New text');
      expect(copied.valueString, equals('New text'));
      expect(
        original.valueString,
        equals('Original text'),
      ); // Original unchanged
    });

    test('should clear value when explicitly passed null', () {
      final original = FhirString('Original text');
      expect(original.valueString, isNotNull);

      // ignore: avoid_redundant_argument_values
      final cleared = original.copyWith(newValue: null);
      expect(cleared.valueString, isNull);
      expect(original.valueString, isNotNull); // Original unchanged
    });

    test('should preserve string operations on copied values', () {
      final original = FhirString('Hello World');
      final copied = original.copyWith(newValue: 'New World');

      expect(copied.contains('World'), isTrue);
      expect(copied.length, equals(9));
      expect(copied.toLowerCase(), equals('new world'));
    });

    test('should handle extensions properly', () {
      final original = FhirString('Original text');
      final extensions = [
        FhirExtension(
          url: 'http://example.org/fhir/StructureDefinition/test-extension'
              .toFhirString,
          id: FhirString('extension-value'),
        ),
      ];

      final copied = original.copyWith(
        newValue: 'New text',
        extension_: extensions,
      );

      expect(copied.valueString, equals('New text'));
      expect(copied.extension_?.length, equals(1));
      expect(
        copied.extension_?[0].url,
        equals(
          'http://example.org/fhir/StructureDefinition/test-extension'
              .toFhirString,
        ),
      );
    });

    test('should support noExtensions method', () {
      final original = FhirString('Original text');
      final noExtensionsVersion = original.noExtensions();

      expect(noExtensionsVersion.disallowExtensions, isTrue);
      expect(noExtensionsVersion.valueString, equals('Original text'));
    });
  });
}
