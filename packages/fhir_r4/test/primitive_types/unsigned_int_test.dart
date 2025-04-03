import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void unsignedIntTest() {
  group('FhirUnsignedInt Tests', () {
    const validInteger = 123;
    const otherInteger = 100;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirUnsignedInt creation and validation
    test('FhirUnsignedInt from int value', () {
      final fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.valueInt, equals(validInteger));
      expect(fhirInteger.toString(), equals(validInteger.toString()));
      expect(fhirInteger.toJson()['value'], equals(validInteger));
    });

    test('FhirUnsignedInt fromJson with valid number', () {
      final fhirInteger = FhirUnsignedInt.fromJson({'value': 456});
      expect(fhirInteger.valueInt, equals(456));
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
      expect(fhirInteger.valueInt, equals(789));
      expect(fhirInteger.toJson()['value'], equals(789));
    });

    // Arithmetic operations
    test('FhirUnsignedInt addition', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      final result = (fhirInteger1 + fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger + otherInteger));
    });

    test('FhirUnsignedInt subtraction', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      final result = (fhirInteger1 - fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger - otherInteger));
    });

    test('FhirUnsignedInt multiplication', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      final result = (fhirInteger1 * fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger * otherInteger));
    });

    test('FhirUnsignedInt division', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      final result = (fhirInteger1 ~/ fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger ~/ otherInteger));
    });

    test('FhirUnsignedInt modulus', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      final result = (fhirInteger1 % fhirInteger2)! as FhirInteger;
      expect(result.valueInt, equals(validInteger % otherInteger));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirUnsignedInt absolute value', () {
      expect(
        () => FhirUnsignedInt(-validInteger),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FhirUnsignedInt rounding', () {
      final fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.round(), equals(validInteger));
    });

    // Comparison operations
    test('FhirUnsignedInt comparison', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(otherInteger);
      expect(fhirInteger1 > fhirInteger2, isTrue);
      expect(fhirInteger2 < fhirInteger1, isTrue);
    });

    test('FhirUnsignedInt equality with another FhirUnsignedInt', () {
      final fhirInteger1 = FhirUnsignedInt(validInteger);
      final fhirInteger2 = FhirUnsignedInt(validInteger);
      expect(fhirInteger1 == fhirInteger2, isTrue);
      expect(fhirInteger1.equals(fhirInteger2), isTrue);
    });

    test('FhirUnsignedInt inequality with a different integer', () {
      final fhirInteger = FhirUnsignedInt(validInteger);
      // ignore: unrelated_type_equality_checks
      expect(fhirInteger == 999, isFalse);
    });

    test('FhirUnsignedInt clone', () {
      final originalInteger = FhirUnsignedInt(validInteger);
      final clonedInteger = originalInteger.clone();
      expect(clonedInteger.valueInt, equals(validInteger));
      expect(clonedInteger == originalInteger, isTrue);
      expect(clonedInteger.hashCode, equals(originalInteger.hashCode));
    });

    test('FhirUnsignedInt copyWith new value', () {
      final originalInteger = FhirUnsignedInt(validInteger);
      final copiedInteger = originalInteger.copyWith(newValue: 678);
      expect(copiedInteger.valueInt, equals(678));
      expect(originalInteger.valueInt, equals(validInteger));
    });

    test('FhirUnsignedInt with Element', () {
      final fhirInteger = FhirUnsignedInt(validInteger, element: element);
      expect(fhirInteger.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirUnsignedInt toJsonString', () {
      final fhirInteger = FhirUnsignedInt(validInteger);
      expect(fhirInteger.toJsonString(), equals('{"value":$validInteger}'));
    });
  });
}
