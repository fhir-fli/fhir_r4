import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirUri Tests', () {
    test('Valid Uri URI', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.value, equals(Uri.parse(validUriString)));
      expect(canonical.toJson(), equals(validUriString));
      expect(canonical.toYaml(), equals(validUriString));
      expect(canonical.toString(), equals(validUriString));
    });

    test('Valid Relative Uri URI', () {
      const relativeUriString = 'Patient/123';
      final canonical = FhirUri(relativeUriString);
      expect(canonical.value, equals(Uri.parse(relativeUriString)));
      expect(canonical.toJson(), equals(relativeUriString));
      expect(canonical.toYaml(), equals(relativeUriString));
      expect(canonical.toString(), equals(relativeUriString));
    });

    test('Invalid Uri String', () {
      const invalidUriString = 'invalid_uri';
      expect(
        FhirUri(invalidUriString).value.toString(),
        invalidUriString,
      );
    });

    test('TryParse - Valid Uri String', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri.tryParse(validUriString);
      expect(canonical, isNotNull);
      expect(canonical!.value, equals(Uri.parse(validUriString)));
    });

    test('TryParse - Non-String Input', () {
      final canonical = FhirUri.tryParse(12345);
      expect(canonical, isNull);
    });

    test('FromJson - Valid Uri String', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri.fromJson(validUriString);
      expect(canonical.value, equals(Uri.parse(validUriString)));
    });

    test('FromYaml - Valid Yaml String', () {
      const validYamlString = 'http://example.com/Patient/123';
      final canonical = FhirUri.fromYaml(validYamlString);
      expect(canonical.value, equals(Uri.parse(validYamlString)));
    });

    test('Equality - FhirUri', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical1 = FhirUri(validUriString);
      final canonical2 = FhirUri(validUriString);
      expect(canonical1, equals(canonical2));
    });

    test('Equality - Uri', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == Uri.parse(validUriString), isTrue);
    });

    test('Equality - String', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == validUriString, isTrue);
    });

    test('Inequality - FhirUri', () {
      const validUriString1 = 'http://example.com/Patient/123';
      const validUriString2 = 'http://example.com/Patient/456';
      final canonical1 = FhirUri(validUriString1);
      final canonical2 = FhirUri(validUriString2);
      expect(canonical1, isNot(equals(canonical2)));
    });

    test('HashCode', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.hashCode, equals(validUriString.hashCode));
    });

    test('Clone', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      final clonedUri = canonical.clone();
      expect(clonedUri, equals(canonical));
      expect(clonedUri.value, equals(Uri.parse(validUriString)));
    });

    test('Set Element', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      final newElement = Element();
      final updatedUri = canonical.setElement('dummy', newElement);
      expect(updatedUri.value, equals(Uri.parse(validUriString)));
    });

    test('CopyWith - No New Value', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      final copiedUri = canonical.copyWith();
      expect(copiedUri.value, equals(canonical.value));
    });

    test('CopyWith - New Value', () {
      const validUriString = 'http://example.com/Patient/123';
      const newUriString = 'http://example.com/Patient/456';
      final canonical = FhirUri(validUriString);
      final copiedUri = canonical.copyWith(
        newValue: Uri.parse(newUriString),
      );
      expect(copiedUri.value, equals(Uri.parse(newUriString)));
    });

    test('Path Segments', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.pathSegments, equals(<String>['Patient', '123']));
    });

    test('File Path', () {
      const validUriString = 'file:///home/user/file.txt';
      final canonical = FhirUri(validUriString);
      expect(canonical.toFilePath(), equals('/home/user/file.txt'));
    });

    test('Host', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.host, equals('example.com'));
    });

    test('User Info', () {
      const validUriString = 'http://user:pass@example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.userInfo, equals('user:pass'));
    });

    test('Port', () {
      const validUriString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.port, equals(8080));
    });

    test('Authority', () {
      const validUriString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.authority, equals('example.com:8080'));
    });

    test('Query', () {
      const validUriString = 'http://example.com/Patient/123?name=John';
      final canonical = FhirUri(validUriString);
      expect(canonical.query, equals('name=John'));
    });

    test('Split Query String All', () {
      const query = 'name=John&age=30';
      final splitQuery = FhirUri.splitQueryStringAll(query);
      expect(
        splitQuery,
        equals(<String, List<String>>{
          'name': <String>['John'],
          'age': <String>['30'],
        }),
      );
    });

    test('Encode Query Component', () {
      const text = 'name=John Doe';
      final encoded = FhirUri.encodeQueryComponent(text);
      expect(encoded, equals('name%3DJohn+Doe'));
    });

    test('Decode Query Component', () {
      const encodedText = 'name%3DJohn%20Doe';
      final decoded = FhirUri.decodeQueryComponent(encodedText);
      expect(decoded, equals('name=John Doe'));
    });

    test('ToJson', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.toJson(), equals(validUriString));
    });

    test('ToYaml', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.toYaml(), equals(validUriString));
    });

    test('ToString', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.toString(), equals(validUriString));
    });

    test('ToJsonString', () {
      const validUriString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validUriString);
      expect(canonical.toJsonString(), equals('"$validUriString"'));
    });
  });
}
