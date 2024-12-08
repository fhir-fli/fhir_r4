import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('FhirUuid Tests', () {
    const validUuidString = '550e8400-e29b-41d4-a716-446655440000';
    const invalidUuidString = 'invalid-uuid';
    const anotherValidUuid = 'e7dd2a50-2b3e-4bcd-b2f0-31c65794eb84';
    final validUuidValue = UuidValue.fromString(validUuidString);
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirUuid creation and validation
    test('FhirUuid from String value', () {
      final fhirUuid = FhirUuid(validUuidString);
      expect(fhirUuid.value, equals(validUuidValue));
      expect(fhirUuid.toString(), equals(validUuidString));
      expect(fhirUuid.toJson()['value'], equals(validUuidString));
    });

    test('FhirUuid fromUuid with UuidValue', () {
      final fhirUuid = FhirUuid.fromUuid(validUuidValue);
      expect(fhirUuid.value, equals(validUuidValue));
      expect(fhirUuid.toString(), equals(validUuidString));
      expect(fhirUuid.toJson()['value'], equals(validUuidString));
    });

    test('FhirUuid tryParse with valid UUID', () {
      final fhirUuid = FhirUuid.tryParse(validUuidString);
      expect(fhirUuid?.value, equals(validUuidValue));
      expect(fhirUuid?.toString(), equals(validUuidString));
      expect(fhirUuid?.toJson()['value'], equals(validUuidString));
    });

    test('FhirUuid tryParse with invalid UUID', () {
      final fhirUuid = FhirUuid.tryParse(invalidUuidString);
      expect(fhirUuid, isNull);
    });

    test('FhirUuid fromJson with valid String', () {
      final fhirUuid = FhirUuid.fromJson({'value': validUuidString});
      expect(fhirUuid.value, equals(validUuidValue));
      expect(fhirUuid.toJson()['value'], equals(validUuidString));
    });

    test('FhirUuid fromJson with invalid input throws FormatException', () {
      expect(
        () => FhirUuid.fromJson({'value': 123}),
        throwsA(isA<TypeError>()),
      );
    });

    test('FhirUuid fromYaml with valid YAML', () {
      final fhirUuid = FhirUuid.fromYaml('value: $validUuidString');
      expect(fhirUuid.value, equals(validUuidValue));
      expect(fhirUuid.toJson()['value'], equals(validUuidString));
    });

    // UUID generation factories
    test('FhirUuid.v1 generates a valid UUID', () {
      final fhirUuid = FhirUuid.v1();
      expect(Uuid.isValidUUID(fromString: fhirUuid.toString()), isTrue);
    });

    test('FhirUuid.v4 generates a valid UUID', () {
      final fhirUuid = FhirUuid.v4();
      expect(Uuid.isValidUUID(fromString: fhirUuid.toString()), isTrue);
    });

    test('FhirUuid.v5 generates a valid UUID based on namespace and name', () {
      final fhirUuid = FhirUuid.v5(namespace: validUuidString, name: 'name');
      expect(Uuid.isValidUUID(fromString: fhirUuid.toString()), isTrue);
    });

    // Equality and comparison tests
    test('FhirUuid equality with another FhirUuid', () {
      final fhirUuid1 = FhirUuid(validUuidString);
      final fhirUuid2 = FhirUuid(validUuidString);
      expect(fhirUuid1 == fhirUuid2, isTrue);
      expect(fhirUuid1.equals(fhirUuid2), isTrue);
    });

    test('FhirUuid equality with a UuidValue', () {
      final fhirUuid = FhirUuid(validUuidString);
      expect(fhirUuid.value == validUuidValue, isTrue);
    });

    test('FhirUuid equality with a valid String UUID', () {
      final fhirUuid = FhirUuid(validUuidString);
      // ignore: unrelated_type_equality_checks
      expect(fhirUuid == validUuidString, isTrue);
    });

    test('FhirUuid inequality with a different UUID', () {
      final fhirUuid = FhirUuid(validUuidString);
      // ignore: unrelated_type_equality_checks
      expect(fhirUuid == anotherValidUuid, isFalse);
    });

    // Utility methods for UUID parsing and un-parsing
    test('FhirUuid isValidUuid returns true for valid UUID', () {
      expect(FhirUuid.isValidUuid(validUuidString), isTrue);
    });

    test('FhirUuid isValidUuid returns false for invalid UUID', () {
      expect(FhirUuid.isValidUuid(invalidUuidString), isFalse);
    });

    test('FhirUuid parseUuid parses a UUID into a list of bytes', () {
      final uuidBytes = FhirUuid.parseUuid(validUuidString);
      expect(uuidBytes, isNotEmpty);
      expect(Uuid.unparse(uuidBytes), equals(validUuidString));
    });

    test('FhirUuid unparseUuid unparses a list of bytes into a UUID string',
        () {
      final uuidBytes = FhirUuid.parseUuid(validUuidString);
      final uuidString = FhirUuid.unparseUuid(uuidBytes);
      expect(uuidString, equals(validUuidString));
    });

    // FhirUuid-specific methods inherited from PrimitiveType
    test('FhirUuid clone', () {
      final originalUuid = FhirUuid(validUuidString);
      final clonedUuid = originalUuid.clone();
      expect(clonedUuid.value, equals(validUuidValue));
      expect(clonedUuid == originalUuid, isTrue);
      expect(clonedUuid.hashCode, equals(originalUuid.hashCode));
    });

    test('FhirUuid copyWith new value', () {
      final originalUuid = FhirUuid(validUuidString);
      final copiedUuid = originalUuid.copyWith(
        newValue: UuidValue.fromString(anotherValidUuid),
      );
      expect(copiedUuid.value, equals(UuidValue.fromString(anotherValidUuid)));
      expect(
        originalUuid.value,
        equals(validUuidValue),
      ); // Original should remain unchanged
    });

    test('FhirUuid with Element', () {
      final fhirUuid = FhirUuid(validUuidString, element: element);
      expect(fhirUuid.element?.id, equals('testElement'.toFhirString));
    });

    test('FhirUuid toJsonString', () {
      final fhirUuid = FhirUuid(validUuidString);
      expect(fhirUuid.toJsonString(), equals('{"value":"$validUuidString"}'));
    });
  });
}
