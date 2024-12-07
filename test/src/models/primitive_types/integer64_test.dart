import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirInteger64 Tests', () {
    const validInt = 1234567890123456;
    const validBigIntString = '1234567890123456789012345678901234567890';
    final validBigInt = BigInt.parse(validBigIntString);
    const invalidString = 'invalid';
    final element = Element(id: 'testElement'.toFhirString);

    test('FhirInteger64 from int value', () {
      final fhirInteger64 = FhirInteger64.fromNum(input: validInt);
      expect(fhirInteger64.value, equals(BigInt.from(validInt)));
      expect(fhirInteger64.toString(), equals(validInt.toString()));
      expect(fhirInteger64.toJson()['value'], equals(validInt.toString()));
    });

    test('FhirInteger64 from BigInt value', () {
      final fhirInteger64 = FhirInteger64(input: validBigInt);
      expect(fhirInteger64.value, equals(validBigInt));
      expect(fhirInteger64.toString(), equals(validBigInt.toString()));
      expect(fhirInteger64.toJson()['value'], equals(validBigInt.toString()));
    });

    test('FhirInteger64 from String value', () {
      final fhirInteger64 = FhirInteger64.fromString(input: validBigIntString);
      expect(fhirInteger64.value, equals(validBigInt));
      expect(fhirInteger64.toString(), equals(validBigIntString));
      expect(fhirInteger64.toJson()['value'], equals(validBigIntString));
    });

    test('FhirInteger64 tryParse with valid int', () {
      final fhirInteger64 = FhirInteger64.tryParse(validInt);
      expect(fhirInteger64?.value, equals(BigInt.from(validInt)));
    });

    test('FhirInteger64 tryParse with valid BigInt', () {
      final fhirInteger64 = FhirInteger64.tryParse(validBigInt);
      expect(fhirInteger64?.value, equals(validBigInt));
    });

    test('FhirInteger64 tryParse with valid String', () {
      final fhirInteger64 = FhirInteger64.tryParse(validBigIntString);
      expect(fhirInteger64?.value, equals(validBigInt));
    });

    test('FhirInteger64 tryParse with invalid input', () {
      final fhirInteger64 = FhirInteger64.tryParse(invalidString);
      expect(fhirInteger64, isNull);
    });

    test('FhirInteger64 fromJson with valid input', () {
      final fhirInteger64 =
          FhirInteger64.fromJson({'value': validBigIntString});
      expect(fhirInteger64.value, equals(validBigInt));
    });

    test('FhirInteger64 fromJson with invalid input throws FormatException',
        () {
      expect(
        () => FhirInteger64.fromJson({'value': invalidString}),
        throwsFormatException,
      );
    });

    test('FhirInteger64 fromYaml with valid YAML', () {
      final fhirInteger64 =
          FhirInteger64.fromYaml('value: "$validBigIntString"');
      expect(fhirInteger64.value, equals(validBigInt));
    });

    test('FhirInteger64 arithmetic operations', () {
      final fhirInt1 = FhirInteger64(input: BigInt.from(10));
      final fhirInt2 = FhirInteger64(input: BigInt.from(3));

      expect(
        fhirInt1 + fhirInt2,
        equals(FhirInteger64(input: BigInt.from(13))),
      );
      expect(
        fhirInt1 - fhirInt2,
        equals(FhirInteger64(input: BigInt.from(7))),
      );
      expect(
        fhirInt1 * fhirInt2,
        equals(FhirInteger64(input: BigInt.from(30))),
      );
      expect(
        fhirInt1 ~/ fhirInt2,
        equals(FhirInteger64(input: BigInt.from(3))),
      );
      expect(
        fhirInt1 % fhirInt2,
        equals(FhirInteger64(input: BigInt.from(1))),
      );
    });

    test('FhirInteger64 bitwise operators', () {
      final fhirInt1 = FhirInteger64(input: BigInt.from(6)); // 110 in binary
      final fhirInt2 = FhirInteger64(input: BigInt.from(3)); // 011 in binary

      expect(
        fhirInt1 & fhirInt2,
        equals(FhirInteger64(input: BigInt.from(2))),
      ); // 010 in binary
      expect(
        fhirInt1 | fhirInt2,
        equals(FhirInteger64(input: BigInt.from(7))),
      ); // 111 in binary
      expect(
        fhirInt1 ^ fhirInt2,
        equals(FhirInteger64(input: BigInt.from(5))),
      ); // 101 in binary
      expect(
        fhirInt1 << 1,
        equals(FhirInteger64(input: BigInt.from(12))),
      ); // Left shift: 1100
      expect(
        fhirInt1 >> 1,
        equals(FhirInteger64(input: BigInt.from(3))),
      ); // Right shift: 011
    });

    test('FhirInteger64 comparison operators', () {
      final fhirInt1 = FhirInteger64(input: BigInt.from(5));
      final fhirInt2 = FhirInteger64(input: BigInt.from(10));

      expect(fhirInt1 < fhirInt2, isTrue);
      expect(fhirInt2 > fhirInt1, isTrue);
      expect(fhirInt1 <= fhirInt2, isTrue);
      expect(fhirInt2 >= fhirInt1, isTrue);
      expect(fhirInt1 == FhirInteger64(input: BigInt.from(5)), isTrue);
      expect(
        fhirInt1.compareTo(FhirInteger64(input: BigInt.from(5))),
        equals(0),
      );
    });

    test('FhirInteger64 utility methods', () {
      final fhirInt = FhirInteger64(input: BigInt.from(-10));
      expect(fhirInt.abs(), equals(FhirInteger64(input: BigInt.from(10))));
      expect(fhirInt.pow(2), equals(FhirInteger64(input: BigInt.from(100))));
      expect(
        fhirInt.gcd(BigInt.from(5)),
        equals(FhirInteger64(input: BigInt.from(5))),
      );
      expect(fhirInt.isNegative, isTrue);
      expect(fhirInt.isEven, isTrue);
      expect(fhirInt.isOdd, isFalse);
      expect(fhirInt.toInt(), equals(-10));
      expect(fhirInt.toDouble(), equals(-10.0));
    });

    test('FhirInteger64 equality and hashCode', () {
      final fhirInt1 = FhirInteger64(input: BigInt.from(10));
      final fhirInt2 = FhirInteger64(input: BigInt.from(10));
      expect(fhirInt1 == fhirInt2, isTrue);
      expect(fhirInt1.hashCode, equals(fhirInt2.hashCode));
    });

    test('FhirInteger64 cloning and copying', () {
      final fhirInt = FhirInteger64(input: BigInt.from(10), element: element);
      final clonedInt = fhirInt.clone();
      expect(clonedInt.value, equals(BigInt.from(10)));
      expect(clonedInt.element?.id, equals('testElement'.toFhirString));
      final copiedInt = fhirInt.copyWith(newValue: BigInt.from(20));
      expect(copiedInt.value, equals(BigInt.from(20)));
      expect(
        copiedInt.element?.id,
        equals('testElement'.toFhirString),
      ); // Should retain element
    });

    test('FhirInteger64 toJsonString and toString', () {
      final fhirInt = FhirInteger64(input: BigInt.from(100));
      expect(fhirInt.toJsonString(), equals('{"value":"100"}'));
      expect(fhirInt.toString(), equals('100'));
    });

    test('FhirInteger64 with Element', () {
      final fhirInt =
          FhirInteger64(input: BigInt.from(1234567890123456), element: element);
      expect(fhirInt.element?.id, equals('testElement'.toFhirString));
    });
  });
}
