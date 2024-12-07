import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirUnsignedInt Tests', () {
    const validInteger = 123;
    const otherInteger = 100;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirUnsignedInt creation and validation
    test('FhirUnsignedInt from int value', () {
      final fhirInteger = FhirUnsignedInt(input: validInteger);
      expect(fhirInteger.value, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson()['value'], equals(validInteger));
    });

    test('FhirUnsignedInt fromJson with valid number', () {
      final fhirInteger = FhirUnsignedInt.fromJson({'value': 456});
      expect(fhirInteger.value, equals(456));
      expect(fhirInteger.toJson()['value'], equals(456));
    });

    test('FhirUnsignedInt fromJson with invalid input throws FormatException',
        () {
      expect(
        () => FhirUnsignedInt.fromJson({'value': 'invalid'}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirUnsignedInt fromYaml with valid YAML', () {
      final fhirInteger = FhirUnsignedInt.fromYaml('value: 789');
      expect(fhirInteger.value, equals(789));
      expect(fhirInteger.toJson()['value'], equals(789));
    });

    // Arithmetic operations
    test('FhirUnsignedInt addition', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      final result = (fhirInteger1 + fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger + otherInteger));
    });

    test('FhirUnsignedInt subtraction', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      final result = (fhirInteger1 - fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger - otherInteger));
    });

    test('FhirUnsignedInt multiplication', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      final result = (fhirInteger1 * fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger * otherInteger));
    });

    test('FhirUnsignedInt division', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      final result = (fhirInteger1 ~/ fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger ~/ otherInteger));
    });

    test('FhirUnsignedInt modulus', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      final result = (fhirInteger1 % fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirUnsignedInt absolute value', () {
      final fhirInteger = FhirUnsignedInt(input: -validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirUnsignedInt rounding', () {
      final fhirInteger = FhirUnsignedInt(input: validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirUnsignedInt comparison', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirUnsignedInt equality with another FhirUnsignedInt', () {
      final fhirInteger1 = FhirUnsignedInt(input: validInteger);
      final fhirInteger2 = FhirUnsignedInt(input: validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirUnsignedInt inequality with a different integer', () {
      final fhirInteger = FhirUnsignedInt(input: validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirUnsignedInt clone', () {
      final originalInteger = FhirUnsignedInt(input: validInteger);
      final clonedInteger = originalInteger.clone();
      expect(clonedInteger.value, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirUnsignedInt copyWith new value', () {
      final originalInteger = FhirUnsignedInt(input: validInteger);
      final copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.value, equals(678));
      expect(originalInteger.value, equals(validInteger));
    });

    test('FhirUnsignedInt with Element', () {
      final fhirInteger =
          FhirUnsignedInt(input: validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirUnsignedInt toJsonString', () {
      final fhirInteger = FhirUnsignedInt(input: validInteger);
      expect(fhirInteger.toJsonString(), equals('{"value":$validInteger}'));
    });
  });
}
