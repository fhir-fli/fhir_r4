import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirUrl Tests', () {
    test('Valid Canonical URI', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.value, equals(Uri.parse(validCanonicalString)));
      expect(canonical.toJson(), equals(validCanonicalString));
      expect(canonical.toYaml(), equals(validCanonicalString));
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('Valid Relative Canonical URI', () {
      const String relativeCanonicalString = 'Patient/123';
      final FhirUrl canonical = FhirUrl(relativeCanonicalString);
      expect(canonical.value, equals(Uri.parse(relativeCanonicalString)));
      expect(canonical.toJson(), equals(relativeCanonicalString));
      expect(canonical.toYaml(), equals(relativeCanonicalString));
      expect(canonical.toString(), equals(relativeCanonicalString));
    });

    test('Invalid Canonical String', () {
      const String invalidCanonicalString = 'invalid_uri';
      expect(
          () => FhirUrl(invalidCanonicalString),
          throwsA(isA<FormatException>().having(
              (FormatException e) => e.message,
              'message',
              equals('Invalid Canonical String: $invalidCanonicalString'))));
    });

    test('TryParse - Valid Canonical String', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl? canonical = FhirUrl.tryParse(validCanonicalString);
      expect(canonical, isNotNull);
      expect(canonical!.value, equals(Uri.parse(validCanonicalString)));
    });

    test('TryParse - Invalid Canonical String', () {
      const String invalidCanonicalString = 'invalid_uri';
      final FhirUrl? canonical = FhirUrl.tryParse(invalidCanonicalString);
      expect(canonical, isNull);
    });

    test('TryParse - Non-String Input', () {
      final FhirUrl? canonical = FhirUrl.tryParse(12345);
      expect(canonical, isNull);
    });

    test('FromJson - Valid Canonical String', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl.fromJson(validCanonicalString);
      expect(canonical.value, equals(Uri.parse(validCanonicalString)));
    });

    test('FromJson - Invalid Canonical String', () {
      const String invalidCanonicalString = 'invalid_uri';
      expect(
          () => FhirUrl.fromJson(invalidCanonicalString),
          throwsA(isA<FormatException>().having(
              (FormatException e) => e.message,
              'message',
              equals('Invalid Canonical String: $invalidCanonicalString'))));
    });

    test('FromYaml - Valid Yaml String', () {
      const String validYamlString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl.fromYaml(validYamlString);
      expect(canonical.value, equals(Uri.parse(validYamlString)));
    });

    test('FromYaml - Invalid Yaml String', () {
      const String invalidYamlString = 'invalid_uri';
      expect(
          () => FhirUrl.fromYaml(invalidYamlString),
          throwsA(isA<FormatException>().having(
              (FormatException e) => e.message,
              'message',
              equals('Invalid Canonical String: $invalidYamlString'))));
    });

    test('Equality - FhirUrl', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical1 = FhirUrl(validCanonicalString);
      final FhirUrl canonical2 = FhirUrl(validCanonicalString);
      expect(canonical1, equals(canonical2));
    });

    test('Equality - Uri', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == Uri.parse(validCanonicalString), isTrue);
    });

    test('Equality - String', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == validCanonicalString, isTrue);
    });

    test('Inequality - FhirUrl', () {
      const String validCanonicalString1 = 'http://example.com/Patient/123';
      const String validCanonicalString2 = 'http://example.com/Patient/456';
      final FhirUrl canonical1 = FhirUrl(validCanonicalString1);
      final FhirUrl canonical2 = FhirUrl(validCanonicalString2);
      expect(canonical1, isNot(equals(canonical2)));
    });

    test('HashCode', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.hashCode, equals(validCanonicalString.hashCode));
    });

    test('Clone', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      final FhirUrl clonedCanonical = canonical.clone();
      expect(clonedCanonical, equals(canonical));
      expect(clonedCanonical.value, equals(Uri.parse(validCanonicalString)));
    });

    test('Set Element', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      final Element newElement = Element();
      final FhirUrl updatedCanonical =
          canonical.setElement('dummy', newElement);
      expect(updatedCanonical.value, equals(Uri.parse(validCanonicalString)));
    });

    test('CopyWith - No New Value', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      final FhirUrl copiedCanonical = canonical.copyWith();
      expect(copiedCanonical.value, equals(canonical.value));
    });

    test('CopyWith - New Value', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      const String newCanonicalString = 'http://example.com/Patient/456';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      final FhirUrl copiedCanonical = canonical.copyWith(
        newValue: Uri.parse(newCanonicalString),
      );
      expect(copiedCanonical.value, equals(Uri.parse(newCanonicalString)));
    });

    test('Path Segments', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.pathSegments, equals(<String>['Patient', '123']));
    });

    test('File Path', () {
      const String validCanonicalString = 'file:///home/user/file.txt';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.toFilePath(), equals('/home/user/file.txt'));
    });

    test('Host', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.host, equals('example.com'));
    });

    test('User Info', () {
      const String validCanonicalString =
          'http://user:pass@example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.userInfo, equals('user:pass'));
    });

    test('Port', () {
      const String validCanonicalString = 'http://example.com:8080/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.port, equals(8080));
    });

    test('Authority', () {
      const String validCanonicalString = 'http://example.com:8080/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.authority, equals('example.com:8080'));
    });

    test('Query', () {
      const String validCanonicalString =
          'http://example.com/Patient/123?name=John';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.query, equals('name=John'));
    });

    test('Split Query String All', () {
      const String query = 'name=John&age=30';
      final Map<String, List<String>> splitQuery =
          FhirUrl.splitQueryStringAll(query);
      expect(
          splitQuery,
          equals(<String, List<String>>{
            'name': <String>['John'],
            'age': <String>['30']
          }));
    });

    test('Encode Query Component', () {
      const String text = 'name=John Doe';
      final String encoded = FhirUrl.encodeQueryComponent(text);
      expect(encoded, equals('name%3DJohn%20Doe'));
    });

    test('Decode Query Component', () {
      const String encodedText = 'name%3DJohn%20Doe';
      final String decoded = FhirUrl.decodeQueryComponent(encodedText);
      expect(decoded, equals('name=John Doe'));
    });

    test('ToJson', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.toJson(), equals(validCanonicalString));
    });

    test('ToYaml', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.toYaml(), equals(validCanonicalString));
    });

    test('ToString', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('ToJsonString', () {
      const String validCanonicalString = 'http://example.com/Patient/123';
      final FhirUrl canonical = FhirUrl(validCanonicalString);
      expect(canonical.toJsonString(), equals('"$validCanonicalString"'));
    });
  });
}
