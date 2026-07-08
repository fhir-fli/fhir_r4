import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('generateNewUuidString', () {
    test('returns a non-empty string', () {
      final id = generateNewUuidString();
      expect(id, isNotEmpty);
    });

    test('returns a valid UUID v4 format', () {
      final id = generateNewUuidString();
      // UUID v4: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
      final uuidRegex = RegExp(
        '^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-'
        r'[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
      );
      expect(uuidRegex.hasMatch(id), isTrue, reason: 'UUID: $id');
    });

    test('returns unique values on successive calls', () {
      final ids = <String>{};
      for (var i = 0; i < 100; i++) {
        ids.add(generateNewUuidString());
      }
      expect(ids.length, 100);
    });

    test('has correct length (36 characters with hyphens)', () {
      final id = generateNewUuidString();
      expect(id.length, 36);
    });
  });

  group('generateNewUuidFhirString', () {
    test('returns a FhirString', () {
      final fhirString = generateNewUuidFhirString();
      expect(fhirString, isA<FhirString>());
    });

    test('FhirString value is a valid UUID', () {
      final fhirString = generateNewUuidFhirString();
      final value = fhirString.valueString!;
      final uuidRegex = RegExp(
        '^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-'
        r'[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
      );
      expect(uuidRegex.hasMatch(value), isTrue, reason: 'UUID: $value');
    });

    test('successive calls return unique values', () {
      final ids = <String>{};
      for (var i = 0; i < 50; i++) {
        ids.add(generateNewUuidFhirString().valueString!);
      }
      expect(ids.length, 50);
    });
  });

  group('generateRandomId', () {
    test('returns string of default length 16', () {
      final id = generateRandomId();
      expect(id.length, 16);
    });

    test('respects custom length', () {
      final id = generateRandomId(length: 32);
      expect(id.length, 32);
    });

    test('returns unique values', () {
      final ids = <String>{};
      for (var i = 0; i < 100; i++) {
        ids.add(generateRandomId());
      }
      expect(ids.length, 100);
    });

    test('numbers only when letters disabled', () {
      final id = generateRandomId(length: 20, includeLetters: false);
      expect(id, matches(RegExp(r'^[0-9]+$')));
    });

    test('lowercase letters only', () {
      final id = generateRandomId(
        length: 20,
        includeNumbers: false,
        includeUppercase: false,
      );
      expect(id, matches(RegExp(r'^[a-z]+$')));
    });

    test('uppercase letters only', () {
      final id = generateRandomId(
        length: 20,
        includeNumbers: false,
        includeLowercase: false,
      );
      expect(id, matches(RegExp(r'^[A-Z]+$')));
    });

    test('includes special characters when enabled', () {
      // Generate enough characters to statistically include specials
      final id = generateRandomId(
        length: 200,
        includeSpecialCharacters: true,
      );
      // At least one special character should be present
      expect(
        id.contains(RegExp(r'[!@#$%^&*()\[\]{}|;:,.<>?/+\-=_]')),
        isTrue,
        reason: 'Expected special characters in: $id',
      );
    });

    test('throws when no character types selected', () {
      expect(
        () => generateRandomId(
          includeLetters: false,
          includeNumbers: false,
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('length of 1 returns single character', () {
      final id = generateRandomId(length: 1);
      expect(id.length, 1);
    });

    test('default includes letters and numbers', () {
      // Generate a long enough string that both should appear
      final id = generateRandomId(length: 200);
      expect(id.contains(RegExp('[a-zA-Z]')), isTrue);
      expect(id.contains(RegExp('[0-9]')), isTrue);
    });
  });

  group('DateTimeToVersionId', () {
    test('converts DateTime to versionId format', () {
      final dt = DateTime.utc(2024, 3, 15, 10, 30, 45);
      final versionId = dt.toVersionId();
      // Colons should be replaced with dots
      expect(versionId.contains(':'), isFalse);
      expect(versionId, contains('.'));
      // Should still contain the date part
      expect(versionId, contains('2024'));
    });

    test('replaces all colons with dots', () {
      final dt = DateTime.utc(2024, 1, 1, 12, 30, 45);
      final iso = dt.toIso8601String();
      final versionId = dt.toVersionId();
      expect(
        versionId,
        iso.replaceAll(':', '.'),
      );
    });
  });
}
