import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void positiveIntTest() {
  group('FhirPositiveInt Tests', () {
    const validInteger = 123;
    const otherInteger = 100;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirPositiveInt creation and validation
    test('FhirPositiveInt from int value', () {
      final fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.valueInt, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson()['value'], equals(validInteger));
    });

    test('FhirPositiveInt fromJson with valid number', () {
      final fhirInteger = FhirPositiveInt.fromJson({'value': 456});
      expect(fhirInteger.valueInt, equals(456));
      expect(fhirInteger.toJson()['value'], equals(456));
    });

    test('FhirPositiveInt fromJson with invalid input throws FormatException',
        () {
      expect(
        () => FhirPositiveInt.fromJson({'value': 'invalid'}),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FhirPositiveInt fromYaml with valid YAML', () {
      final fhirInteger = FhirPositiveInt.fromYaml('value: 789');
      expect(fhirInteger.valueInt, equals(789));
      expect(fhirInteger.toJson()['value'], equals(789));
    });

    // Arithmetic operations
    test('FhirPositiveInt addition', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      final result = (fhirInteger1 + fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger + otherInteger));
    });

    test('FhirPositiveInt subtraction', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      final result = (fhirInteger1 - fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger - otherInteger));
    });

    test('FhirPositiveInt multiplication', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      final result = (fhirInteger1 * fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger * otherInteger));
    });

    test('FhirPositiveInt division', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      final result = (fhirInteger1 ~/ fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger ~/ otherInteger));
    });

    test('FhirPositiveInt modulus', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      final result = (fhirInteger1 % fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirPostiveInt absolute value', () {
      expect(
        () => FhirPositiveInt(-validInteger),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FhirPositiveInt rounding', () {
      final fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirPositiveInt comparison', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirPositiveInt equality with another FhirPositiveInt', () {
      final fhirInteger1 = FhirPositiveInt(validInteger);
      final fhirInteger2 = FhirPositiveInt(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirPositiveInt inequality with a different integer', () {
      final fhirInteger = FhirPositiveInt(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirPositiveInt clone', () {
      final originalInteger = FhirPositiveInt(validInteger);
      final clonedInteger = originalInteger.clone();
      expect(clonedInteger.valueInt, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirPositiveInt copyWith new value', () {
      final originalInteger = FhirPositiveInt(validInteger);
      final copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.valueInt, equals(678));
      expect(originalInteger.valueInt, equals(validInteger));
    });

    test('FhirPositiveInt with Element', () {
      final fhirInteger = FhirPositiveInt(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirPositiveInt toJsonString', () {
      final fhirInteger = FhirPositiveInt(validInteger);
      expect(fhirInteger.toJsonString(), equals('{"value":$validInteger}'));
    });
  });
}
