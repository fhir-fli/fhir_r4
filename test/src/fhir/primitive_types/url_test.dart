import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirUrl Tests', () {
    test('Valid Url URI', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.value, equals(Uri.parse(validUrlString)));
      expect(canonical.toJson(), equals(validUrlString));
      expect(canonical.toYaml(), equals(validUrlString));
      expect(canonical.toString(), equals(validUrlString));
    });

    test('Valid Relative Url URI', () {
      const relativeUrlString = 'Patient/123';
      final canonical = FhirUrl(relativeUrlString);
      expect(canonical.value, equals(Uri.parse(relativeUrlString)));
      expect(canonical.toJson(), equals(relativeUrlString));
      expect(canonical.toYaml(), equals(relativeUrlString));
      expect(canonical.toString(), equals(relativeUrlString));
    });

    test('Invalid Url String', () {
      const invalidUrlString = 'invalid_uri';
      expect(
        FhirUrl(invalidUrlString).value.toString(),
        invalidUrlString,
      );
    });

    test('TryParse - Valid Url String', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl.tryParse(validUrlString);
      expect(canonical, isNotNull);
      expect(canonical!.value, equals(Uri.parse(validUrlString)));
    });

    test('TryParse - Non-String Input', () {
      final canonical = FhirUrl.tryParse(12345);
      expect(canonical, isNull);
    });

    test('FromJson - Valid Url String', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl.fromJson(validUrlString);
      expect(canonical.value, equals(Uri.parse(validUrlString)));
    });

    test('FromYaml - Valid Yaml String', () {
      const validYamlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl.fromYaml(validYamlString);
      expect(canonical.value, equals(Uri.parse(validYamlString)));
    });

    test('Equality - FhirUrl', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical1 = FhirUrl(validUrlString);
      final canonical2 = FhirUrl(validUrlString);
      expect(canonical1, equals(canonical2));
    });

    test('Equality - Uri', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == Uri.parse(validUrlString), isTrue);
    });

    test('Equality - String', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == validUrlString, isTrue);
    });

    test('Inequality - FhirUrl', () {
      const validUrlString1 = 'http://example.com/Patient/123';
      const validUrlString2 = 'http://example.com/Patient/456';
      final canonical1 = FhirUrl(validUrlString1);
      final canonical2 = FhirUrl(validUrlString2);
      expect(canonical1, isNot(equals(canonical2)));
    });

    test('HashCode', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.hashCode, equals(validUrlString.hashCode));
    });

    test('Clone', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      final clonedUrl = canonical.clone();
      expect(clonedUrl, equals(canonical));
      expect(clonedUrl.value, equals(Uri.parse(validUrlString)));
    });

    test('Set Element', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      final newElement = Element();
      final updatedUrl = canonical.setElement('dummy', newElement);
      expect(updatedUrl.value, equals(Uri.parse(validUrlString)));
    });

    test('CopyWith - No New Value', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      final copiedUrl = canonical.copyWith();
      expect(copiedUrl.value, equals(canonical.value));
    });

    test('CopyWith - New Value', () {
      const validUrlString = 'http://example.com/Patient/123';
      const newUrlString = 'http://example.com/Patient/456';
      final canonical = FhirUrl(validUrlString);
      final copiedUrl = canonical.copyWith(
        newValue: Uri.parse(newUrlString),
      );
      expect(copiedUrl.value, equals(Uri.parse(newUrlString)));
    });

    test('Path Segments', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.pathSegments, equals(<String>['Patient', '123']));
    });

    test('File Path', () {
      const validUrlString = 'file:///home/user/file.txt';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.toFilePath(), equals('/home/user/file.txt'));
    });

    test('Host', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.host, equals('example.com'));
    });

    test('User Info', () {
      const validUrlString = 'http://user:pass@example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.userInfo, equals('user:pass'));
    });

    test('Port', () {
      const validUrlString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.port, equals(8080));
    });

    test('Authority', () {
      const validUrlString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.authority, equals('example.com:8080'));
    });

    test('Query', () {
      const validUrlString = 'http://example.com/Patient/123?name=John';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.query, equals('name=John'));
    });

    test('Split Query String All', () {
      const query = 'name=John&age=30';
      final splitQuery = FhirUrl.splitQueryStringAll(query);
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
      final encoded = FhirUrl.encodeQueryComponent(text);
      expect(encoded, equals('name%3DJohn+Doe'));
    });

    test('Decode Query Component', () {
      const encodedText = 'name%3DJohn%20Doe';
      final decoded = FhirUrl.decodeQueryComponent(encodedText);
      expect(decoded, equals('name=John Doe'));
    });

    test('ToJson', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.toJson(), equals(validUrlString));
    });

    test('ToYaml', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.toYaml(), equals(validUrlString));
    });

    test('ToString', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.toString(), equals(validUrlString));
    });

    test('ToJsonString', () {
      const validUrlString = 'http://example.com/Patient/123';
      final canonical = FhirUrl(validUrlString);
      expect(canonical.toJsonString(), equals('"$validUrlString"'));
    });
  });
}
