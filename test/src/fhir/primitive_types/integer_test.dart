import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirInteger Tests', () {
    const int validInteger = 123;
    const int otherInteger = 100;
    final Element element = Element(id: 'testElement'.toFhirString);

    // Basic FhirInteger creation and validation
    test('FhirInteger from int value', () {
      final FhirInteger fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.value, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson(), equals(validInteger));
    });

    test('FhirInteger fromJson with valid number', () {
      final FhirInteger fhirInteger = FhirInteger.fromJson(456);
      expect(fhirInteger.value, equals(456));
      expect(fhirInteger.toJson(), equals(456));
    });

    test('FhirInteger fromJson with invalid input throws FormatException', () {
      expect(() => FhirInteger.fromJson('invalid'), throwsFormatException);
    });

    test('FhirInteger fromYaml with valid YAML', () {
      final FhirInteger fhirInteger = FhirInteger.fromYaml('789');
      expect(fhirInteger.value, equals(789));
      expect(fhirInteger.toJson(), equals(789));
    });

    // Arithmetic operations
    test('FhirInteger addition', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      final FhirInteger result = fhirInteger1 + fhirInteger2 as FhirInteger;
      expect(result.value, equals(validInteger + otherInteger));
    });

    test('FhirInteger subtraction', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      final FhirInteger result = fhirInteger1 - fhirInteger2 as FhirInteger;
      expect(result.value, equals(validInteger - otherInteger));
    });

    test('FhirInteger multiplication', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      final FhirInteger result = fhirInteger1 * fhirInteger2 as FhirInteger;
      expect(result.value, equals(validInteger * otherInteger));
    });

    test('FhirInteger division', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      final FhirInteger result = fhirInteger1 ~/ fhirInteger2 as FhirInteger;
      expect(result.value, equals(validInteger ~/ otherInteger));
    });

    test('FhirInteger modulus', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      final FhirInteger result = fhirInteger1 % fhirInteger2 as FhirInteger;
      expect(result.value, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirInteger absolute value', () {
      final FhirInteger fhirInteger = FhirInteger(-validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirInteger rounding', () {
      final FhirInteger fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirInteger comparison', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirInteger equality with another FhirInteger', () {
      final FhirInteger fhirInteger1 = FhirInteger(validInteger);
      final FhirInteger fhirInteger2 = FhirInteger(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirInteger inequality with a different integer', () {
      final FhirInteger fhirInteger = FhirInteger(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirInteger clone', () {
      final FhirInteger originalInteger = FhirInteger(validInteger);
      final FhirInteger clonedInteger = originalInteger.clone();
      expect(clonedInteger.value, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirInteger copyWith new value', () {
      final FhirInteger originalInteger = FhirInteger(validInteger);
      final FhirInteger copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.value, equals(678));
      expect(originalInteger.value, equals(validInteger));
    });

    test('FhirInteger setElement', () {
      final FhirInteger originalInteger = FhirInteger(validInteger);
      final FhirInteger updatedInteger =
          originalInteger.setElement('elementName', 'newElementValue');
      expect(updatedInteger.value, equals(validInteger));
      expect(updatedInteger.element != originalInteger.element, isTrue);
    });

    test('FhirInteger with Element', () {
      final FhirInteger fhirInteger =
          FhirInteger(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'));
    });

    test('FhirInteger toJsonString', () {
      final FhirInteger fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.toJsonString(), equals(validInteger.toString()));
    });
  });
}
