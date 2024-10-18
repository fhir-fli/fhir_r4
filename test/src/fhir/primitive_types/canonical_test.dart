import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirCanonical Tests', () {
    test('Valid Canonical URI', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.value, equals(Uri.parse(validCanonicalString)));
      expect(canonical.toJson(), equals({'value': validCanonicalString}));
      expect(canonical.toYaml(), equals('value: "$validCanonicalString"'));
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('Valid Relative Canonical URI', () {
      const relativeCanonicalString = 'Patient/123';
      final canonical = FhirCanonical(relativeCanonicalString);
      expect(canonical.value, equals(Uri.parse(relativeCanonicalString)));
      expect(canonical.toJson(), equals({'value': relativeCanonicalString}));
      expect(canonical.toYaml(), equals('value: $relativeCanonicalString'));
      expect(canonical.toString(), equals(relativeCanonicalString));
    });

    test('TryParse - Valid Canonical String', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical.tryParse(validCanonicalString);
      expect(canonical, isNotNull);
      expect(canonical!.value, equals(Uri.parse(validCanonicalString)));
    });

    test('TryParse - Non-String Input', () {
      final canonical = FhirCanonical.tryParse(12345);
      expect(canonical, isNull);
    });

    test('FromJson - Valid Canonical String', () {
      final canonical =
          FhirCanonical.fromJson({'value': 'http://example.com/Patient/123'});
      expect(
        canonical.value,
        equals(Uri.parse('http://example.com/Patient/123')),
      );
    });

    test('FromJson - Null Value Throws Exception', () {
      expect(
        () => FhirCanonical.fromJson({'value': null}),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains('Invalid input for FhirCanonical: value is null'),
          ),
        ),
      );
    });

    test('FromYaml - Valid Yaml String', () {
      const validYamlString = 'http://example.com/Patient/123';
      final canonical =
          FhirCanonical.fromYaml('value: "http://example.com/Patient/123"');
      expect(canonical.value, equals(Uri.parse(validYamlString)));
    });

    test('Equality - FhirCanonical', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical1 = FhirCanonical(validCanonicalString);
      final canonical2 = FhirCanonical(validCanonicalString);
      expect(canonical1, equals(canonical2));
    });

    test('Equality - Uri', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == Uri.parse(validCanonicalString), isTrue);
    });

    test('Equality - String', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == validCanonicalString, isTrue);
    });

    test('Inequality - FhirCanonical', () {
      const validCanonicalString1 = 'http://example.com/Patient/123';
      const validCanonicalString2 = 'http://example.com/Patient/456';
      final canonical1 = FhirCanonical(validCanonicalString1);
      final canonical2 = FhirCanonical(validCanonicalString2);
      expect(canonical1, isNot(equals(canonical2)));
    });

    test('Clone', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      final clonedCanonical = canonical.clone();
      expect(clonedCanonical, equals(canonical));
      expect(clonedCanonical.value, equals(Uri.parse(validCanonicalString)));
    });

    test('Set Element', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      final newElement = Element();
      final updatedCanonical = canonical.setElement('dummy', newElement);
      expect(updatedCanonical.value, equals(Uri.parse(validCanonicalString)));
    });

    test('CopyWith - No New Value', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      final copiedCanonical = canonical.copyWith();
      expect(copiedCanonical.value, equals(canonical.value));
    });

    test('CopyWith - New Value', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      const newCanonicalString = 'http://example.com/Patient/456';
      final canonical = FhirCanonical(validCanonicalString);
      final copiedCanonical = canonical.copyWith(
        newValue: Uri.parse(newCanonicalString),
      );
      expect(copiedCanonical.value, equals(Uri.parse(newCanonicalString)));
    });

    test('Path Segments', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.pathSegments, equals(<String>['Patient', '123']));
    });

    test('File Path', () {
      const validCanonicalString = 'file:///home/user/file.txt';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.toFilePath(), equals('/home/user/file.txt'));
    });

    test('Host', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.host, equals('example.com'));
    });

    test('User Info', () {
      const validCanonicalString = 'http://user:pass@example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.userInfo, equals('user:pass'));
    });

    test('Port', () {
      const validCanonicalString = 'http://example.com:8080/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.port, equals(8080));
    });

    test('Authority', () {
      const validCanonicalString = 'http://example.com:8080/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.authority, equals('example.com:8080'));
    });

    test('Query', () {
      const validCanonicalString = 'http://example.com/Patient/123?name=John';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.query, equals('name=John'));
    });

    test('Split Query String All', () {
      const query = 'name=John&age=30';
      final splitQuery = FhirCanonical.splitQueryStringAll(query);
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
      final encoded = FhirCanonical.encodeQueryComponent(text);
      expect(encoded, equals('name%3DJohn+Doe'));
    });

    test('Decode Query Component', () {
      const encodedText = 'name%3DJohn%20Doe';
      final decoded = FhirCanonical.decodeQueryComponent(encodedText);
      expect(decoded, equals('name=John Doe'));
    });

    test('ToJson', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.toJson(), equals({'value': validCanonicalString}));
    });

    test('ToYaml', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.toYaml(), equals('value: "$validCanonicalString"'));
    });

    test('ToString', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('ToJsonString', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirCanonical(validCanonicalString);
      expect(
        canonical.toJsonString(),
        equals('{"value":"$validCanonicalString"}'),
      );
    });
  });
}
