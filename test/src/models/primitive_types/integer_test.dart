import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirInteger Tests', () {
    const validInteger = 123;
    const otherInteger = 100;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirInteger creation and validation
    test('FhirInteger from int value', () {
      final fhirInteger = FhirInteger(input: validInteger);
      expect(fhirInteger.value, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson()['value'], equals(validInteger));
    });

    test('FhirInteger fromJson with valid number', () {
      final fhirInteger = FhirInteger.fromJson({'value': 456});
      expect(fhirInteger.value, equals(456));
      expect(fhirInteger.toJson()['value'], equals(456));
    });

    test('FhirInteger fromJson with invalid input throws FormatException', () {
      expect(
        () => FhirInteger.fromJson({'value': 'invalid'}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirInteger fromYaml with valid YAML', () {
      final fhirInteger = FhirInteger.fromYaml('value: 789');
      expect(fhirInteger.value, equals(789));
      expect(fhirInteger.toJson()['value'], equals(789));
    });

    // Arithmetic operations
    test('FhirInteger addition', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      final result = (fhirInteger1 + fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger + otherInteger));
    });

    test('FhirInteger subtraction', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      final result = (fhirInteger1 - fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger - otherInteger));
    });

    test('FhirInteger multiplication', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      final result = (fhirInteger1 * fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger * otherInteger));
    });

    test('FhirInteger division', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      final result = (fhirInteger1 ~/ fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger ~/ otherInteger));
    });

    test('FhirInteger modulus', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      final result = (fhirInteger1 % fhirInteger2)! as FhirInteger;
      expect(result.value, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirInteger absolute value', () {
      final fhirInteger = FhirInteger(input: -validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirInteger rounding', () {
      final fhirInteger = FhirInteger(input: validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirInteger comparison', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirInteger equality with another FhirInteger', () {
      final fhirInteger1 = FhirInteger(input: validInteger);
      final fhirInteger2 = FhirInteger(input: validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirInteger inequality with a different integer', () {
      final fhirInteger = FhirInteger(input: validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirInteger clone', () {
      final originalInteger = FhirInteger(input: validInteger);
      final clonedInteger = originalInteger.clone();
      expect(clonedInteger.value, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirInteger copyWith new value', () {
      final originalInteger = FhirInteger(input: validInteger);
      final copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.value, equals(678));
      expect(originalInteger.value, equals(validInteger));
    });

    test('FhirInteger with Element', () {
      final fhirInteger = FhirInteger(input: validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirInteger toJsonString', () {
      final fhirInteger = FhirInteger(input: validInteger);
      expect(fhirInteger.toJsonString(), equals('{"value":$validInteger}'));
    });
  });
}
