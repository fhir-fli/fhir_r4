import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirUnsignedInt Tests', () {
    const int validInteger = 123;
    const int otherInteger = 100;
    final Element element = Element(id: 'testElement'.toFhirString);

    // Basic FhirUnsignedInt creation and validation
    test('FhirUnsignedInt from int value', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.value, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson(), equals(validInteger));
    });

    test('FhirUnsignedInt fromJson with valid number', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt.fromJson(456);
      expect(fhirInteger.value, equals(456));
      expect(fhirInteger.toJson(), equals(456));
    });

    test('FhirUnsignedInt fromJson with invalid input throws FormatException',
        () {
      expect(() => FhirUnsignedInt.fromJson('invalid'), throwsFormatException);
    });

    test('FhirUnsignedInt fromYaml with valid YAML', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt.fromYaml('789');
      expect(fhirInteger.value, equals(789));
      expect(fhirInteger.toJson(), equals(789));
    });

    // Arithmetic operations
    test('FhirUnsignedInt addition', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      final FhirUnsignedInt result =
          fhirInteger1 + fhirInteger2 as FhirUnsignedInt;
      expect(result.value, equals(validInteger + otherInteger));
    });

    test('FhirUnsignedInt subtraction', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      final FhirUnsignedInt result =
          fhirInteger1 - fhirInteger2 as FhirUnsignedInt;
      expect(result.value, equals(validInteger - otherInteger));
    });

    test('FhirUnsignedInt multiplication', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      final FhirUnsignedInt result =
          fhirInteger1 * fhirInteger2 as FhirUnsignedInt;
      expect(result.value, equals(validInteger * otherInteger));
    });

    test('FhirUnsignedInt division', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      final FhirUnsignedInt result =
          fhirInteger1 ~/ fhirInteger2 as FhirUnsignedInt;
      expect(result.value, equals(validInteger ~/ otherInteger));
    });

    test('FhirUnsignedInt modulus', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      final FhirUnsignedInt result =
          fhirInteger1 % fhirInteger2 as FhirUnsignedInt;
      expect(result.value, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirUnsignedInt absolute value', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt(-validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirUnsignedInt rounding', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirUnsignedInt comparison', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirUnsignedInt equality with another FhirUnsignedInt', () {
      final FhirUnsignedInt fhirInteger1 = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt fhirInteger2 = FhirUnsignedInt(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirUnsignedInt inequality with a different integer', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirUnsignedInt clone', () {
      final FhirUnsignedInt originalInteger = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt clonedInteger = originalInteger.clone();
      expect(clonedInteger.value, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirUnsignedInt copyWith new value', () {
      final FhirUnsignedInt originalInteger = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt copiedInteger =
          originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.value, equals(678));
      expect(originalInteger.value, equals(validInteger));
    });

    test('FhirUnsignedInt setElement', () {
      final FhirUnsignedInt originalInteger = FhirUnsignedInt(validInteger);
      final FhirUnsignedInt updatedInteger =
          originalInteger.setElement('elementName', 'newElementValue');
      expect(updatedInteger.value, equals(validInteger));
      expect(updatedInteger.element != originalInteger.element, isTrue);
    });

    test('FhirUnsignedInt with Element', () {
      final FhirUnsignedInt fhirInteger =
          FhirUnsignedInt(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'));
    });

    test('FhirUnsignedInt toJsonString', () {
      final FhirUnsignedInt fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.toJsonString(), equals(validInteger.toString()));
    });
  });
}
