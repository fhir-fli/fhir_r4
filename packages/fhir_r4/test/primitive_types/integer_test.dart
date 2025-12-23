import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void integerTest() {
  group('FhirInteger Tests', () {
    const validInteger = 123;
    const otherInteger = 100;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirInteger creation and validation
    test('FhirInteger from int value', () {
      final fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.valueInt, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson()['value'], equals(validInteger));
    });

    test('FhirInteger fromJson with valid number', () {
      final fhirInteger = FhirInteger.fromJson({'value': 456});
      expect(fhirInteger.valueInt, equals(456));
      expect(fhirInteger.toJson()['value'], equals(456));
    });

    test('FhirInteger fromJson with invalid input throws FormatException', () {
      expect(
        () => FhirInteger.fromJson({'value': 'invalid'}),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FhirInteger fromYaml with valid YAML', () {
      final fhirInteger = FhirInteger.fromYaml('value: 789');
      expect(fhirInteger.valueInt, equals(789));
      expect(fhirInteger.toJson()['value'], equals(789));
    });

    // Arithmetic operations
    test('FhirInteger addition', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      final result = (fhirInteger1 + fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger + otherInteger));
    });

    test('FhirInteger subtraction', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      final result = (fhirInteger1 - fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger - otherInteger));
    });

    test('FhirInteger multiplication', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      final result = (fhirInteger1 * fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger * otherInteger));
    });

    test('FhirInteger division', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      final result = (fhirInteger1 ~/ fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger ~/ otherInteger));
    });

    test('FhirInteger modulus', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      final result = (fhirInteger1 % fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirInteger absolute value', () {
      final fhirInteger = FhirInteger(-validInteger);
      expect(fhirInteger.abs(), equals(validInteger));
    });

    test('FhirInteger rounding', () {
      final fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirInteger comparison', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirInteger equality with another FhirInteger', () {
      final fhirInteger1 = FhirInteger(validInteger);
      final fhirInteger2 = FhirInteger(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirInteger inequality with a different integer', () {
      final fhirInteger = FhirInteger(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirInteger clone', () {
      final originalInteger = FhirInteger(validInteger);
      final clonedInteger = originalInteger.clone();
      expect(clonedInteger.valueInt, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirInteger copyWith new value', () {
      final originalInteger = FhirInteger(validInteger);
      final copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.valueInt, equals(678));
      expect(originalInteger.valueInt, equals(validInteger));
    });

    test('FhirInteger with Element', () {
      final fhirInteger = FhirInteger(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirInteger toJsonString', () {
      final fhirInteger = FhirInteger(validInteger);
      expect(fhirInteger.toJsonString(), equals('{"value":$validInteger}'));
    });
  });
}
void main() {
  integerTest();
}
