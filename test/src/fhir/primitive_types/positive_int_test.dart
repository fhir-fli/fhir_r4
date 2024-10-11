import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirPositiveInt Tests', () {
    const int validInteger = 123;
    const int otherInteger = 100;
    final Element element = Element(id: 'testElement'.toFhirString);

    // Basic FhirPositiveInt creation and validation
    test('FhirPositiveInt from int value', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.value, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson(), equals(validInteger));
    });

    test('FhirPositiveInt fromJson with valid number', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt.fromJson(456);
      expect(fhirInteger.value, equals(456));
      expect(fhirInteger.toJson(), equals(456));
    });

    test('FhirPositiveInt fromJson with invalid input throws FormatException',
        () {
      expect(() => FhirPositiveInt.fromJson('invalid'), throwsFormatException);
    });

    test('FhirPositiveInt fromYaml with valid YAML', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt.fromYaml('789');
      expect(fhirInteger.value, equals(789));
      expect(fhirInteger.toJson(), equals(789));
    });

    // Arithmetic operations
    test('FhirPositiveInt addition', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      final FhirPositiveInt result =
          fhirInteger1 + fhirInteger2 as FhirPositiveInt;
      expect(result.value, equals(validInteger + otherInteger));
    });

    test('FhirPositiveInt subtraction', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      final FhirPositiveInt result =
          fhirInteger1 - fhirInteger2 as FhirPositiveInt;
      expect(result.value, equals(validInteger - otherInteger));
    });

    test('FhirPositiveInt multiplication', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      final FhirPositiveInt result =
          fhirInteger1 * fhirInteger2 as FhirPositiveInt;
      expect(result.value, equals(validInteger * otherInteger));
    });

    test('FhirPositiveInt division', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      final FhirPositiveInt result =
          fhirInteger1 ~/ fhirInteger2 as FhirPositiveInt;
      expect(result.value, equals(validInteger ~/ otherInteger));
    });

    test('FhirPositiveInt modulus', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      final FhirPositiveInt result =
          fhirInteger1 % fhirInteger2 as FhirPositiveInt;
      expect(result.value, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirPositiveInt absolute value', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt(-validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirPositiveInt rounding', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirPositiveInt comparison', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirPositiveInt equality with another FhirPositiveInt', () {
      final FhirPositiveInt fhirInteger1 = FhirPositiveInt(validInteger);
      final FhirPositiveInt fhirInteger2 = FhirPositiveInt(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirPositiveInt inequality with a different integer', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirPositiveInt clone', () {
      final FhirPositiveInt originalInteger = FhirPositiveInt(validInteger);
      final FhirPositiveInt clonedInteger = originalInteger.clone();
      expect(clonedInteger.value, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirPositiveInt copyWith new value', () {
      final FhirPositiveInt originalInteger = FhirPositiveInt(validInteger);
      final FhirPositiveInt copiedInteger =
          originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.value, equals(678));
      expect(originalInteger.value, equals(validInteger));
    });

    test('FhirPositiveInt setElement', () {
      final FhirPositiveInt originalInteger = FhirPositiveInt(validInteger);
      final FhirPositiveInt updatedInteger =
          originalInteger.setElement('elementName', 'newElementValue');
      expect(updatedInteger.value, equals(validInteger));
      expect(updatedInteger.element != originalInteger.element, isTrue);
    });

    test('FhirPositiveInt with Element', () {
      final FhirPositiveInt fhirInteger =
          FhirPositiveInt(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'));
    });

    test('FhirPositiveInt toJsonString', () {
      final FhirPositiveInt fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.toJsonString(), equals(validInteger.toString()));
    });
  });
}
