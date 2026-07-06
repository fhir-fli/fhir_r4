import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('Primitive type validation - isValueAValidPrimitive', () {
    group('string', () {
      test('valid string value', () {
        expect(isValueAValidPrimitive('string', 'hello'), isTrue);
      });

      test('empty string is valid', () {
        expect(isValueAValidPrimitive('string', ''), isTrue);
      });

      test('non-string value is invalid', () {
        expect(isValueAValidPrimitive('string', 123), isFalse);
      });

      test('boolean value is invalid for string', () {
        expect(isValueAValidPrimitive('string', true), isFalse);
      });

      test('null value is invalid for string', () {
        expect(isValueAValidPrimitive('string', null), isFalse);
      });
    });

    group('boolean', () {
      test('true is valid', () {
        expect(isValueAValidPrimitive('boolean', true), isTrue);
      });

      test('false is valid', () {
        expect(isValueAValidPrimitive('boolean', false), isTrue);
      });

      test('string "true" is invalid', () {
        expect(isValueAValidPrimitive('boolean', 'true'), isFalse);
      });

      test('integer 1 is invalid', () {
        expect(isValueAValidPrimitive('boolean', 1), isFalse);
      });
    });

    group('integer', () {
      test('positive integer is valid', () {
        expect(isValueAValidPrimitive('integer', 42), isTrue);
      });

      test('zero is valid', () {
        expect(isValueAValidPrimitive('integer', 0), isTrue);
      });

      test('negative integer is valid', () {
        expect(isValueAValidPrimitive('integer', -10), isTrue);
      });

      test('double is invalid for integer', () {
        expect(isValueAValidPrimitive('integer', 3.14), isFalse);
      });

      test('string is invalid for integer', () {
        expect(isValueAValidPrimitive('integer', '42'), isFalse);
      });
    });

    group('positiveInt', () {
      test('positive value is valid', () {
        expect(isValueAValidPrimitive('positiveInt', 1), isTrue);
      });

      test('large positive value is valid', () {
        expect(isValueAValidPrimitive('positiveInt', 999999), isTrue);
      });

      test('zero is invalid for positiveInt', () {
        // FhirPositiveInt requires > 0
        expect(isValueAValidPrimitive('positiveInt', 0), isFalse);
      });

      test('negative value is invalid for positiveInt', () {
        expect(isValueAValidPrimitive('positiveInt', -1), isFalse);
      });

      test('string is invalid for positiveInt', () {
        expect(isValueAValidPrimitive('positiveInt', '5'), isFalse);
      });
    });

    group('unsignedInt', () {
      test('zero is valid for unsignedInt', () {
        expect(isValueAValidPrimitive('unsignedInt', 0), isTrue);
      });

      test('positive value is valid for unsignedInt', () {
        expect(isValueAValidPrimitive('unsignedInt', 100), isTrue);
      });

      test('negative value is invalid for unsignedInt', () {
        expect(isValueAValidPrimitive('unsignedInt', -1), isFalse);
      });

      test('string is invalid for unsignedInt', () {
        expect(isValueAValidPrimitive('unsignedInt', '0'), isFalse);
      });
    });

    group('decimal', () {
      test('integer value is valid for decimal', () {
        expect(isValueAValidPrimitive('decimal', 42), isTrue);
      });

      test('double value is valid for decimal', () {
        expect(isValueAValidPrimitive('decimal', 3.14159), isTrue);
      });

      test('negative decimal is valid', () {
        expect(isValueAValidPrimitive('decimal', -0.5), isTrue);
      });

      test('zero is valid for decimal', () {
        expect(isValueAValidPrimitive('decimal', 0), isTrue);
      });

      test('string is invalid for decimal', () {
        expect(isValueAValidPrimitive('decimal', '3.14'), isFalse);
      });
    });

    group('date', () {
      test('full date is valid', () {
        expect(isValueAValidPrimitive('date', '2024-01-15'), isTrue);
      });

      test('year-month is valid', () {
        expect(isValueAValidPrimitive('date', '2024-01'), isTrue);
      });

      test('year only is valid', () {
        expect(isValueAValidPrimitive('date', '2024'), isTrue);
      });

      test('non-string is invalid for date', () {
        expect(isValueAValidPrimitive('date', 20240115), isFalse);
      });

      test('invalid date format is invalid', () {
        expect(isValueAValidPrimitive('date', 'not-a-date'), isFalse);
      });

      test('empty string is invalid for date', () {
        expect(isValueAValidPrimitive('date', ''), isFalse);
      });
    });

    group('dateTime', () {
      test('full dateTime with timezone is valid', () {
        expect(
          isValueAValidPrimitive('dateTime', '2024-01-15T10:30:00Z'),
          isTrue,
        );
      });

      test('dateTime with offset is valid', () {
        expect(
          isValueAValidPrimitive('dateTime', '2024-01-15T10:30:00+05:00'),
          isTrue,
        );
      });

      test('date-only is valid for dateTime', () {
        expect(isValueAValidPrimitive('dateTime', '2024-01-15'), isTrue);
      });

      test('year only is valid for dateTime', () {
        expect(isValueAValidPrimitive('dateTime', '2024'), isTrue);
      });

      test('non-string is invalid for dateTime', () {
        expect(isValueAValidPrimitive('dateTime', 12345), isFalse);
      });

      test('invalid dateTime is invalid', () {
        expect(isValueAValidPrimitive('dateTime', 'abc'), isFalse);
      });
    });

    group('instant', () {
      test('valid instant with Z timezone', () {
        expect(
          isValueAValidPrimitive('instant', '2024-01-15T10:30:00Z'),
          isTrue,
        );
      });

      test('valid instant with offset', () {
        expect(
          isValueAValidPrimitive('instant', '2024-01-15T10:30:00.000+05:00'),
          isTrue,
        );
      });

      test('non-string is invalid for instant', () {
        expect(isValueAValidPrimitive('instant', 12345), isFalse);
      });
    });

    group('uri', () {
      test('valid absolute URI', () {
        expect(
          isValueAValidPrimitive('uri', 'http://example.com/fhir'),
          isTrue,
        );
      });

      test('valid relative URI', () {
        expect(isValueAValidPrimitive('uri', 'Patient/123'), isTrue);
      });

      test('valid URN', () {
        expect(
          isValueAValidPrimitive('uri', 'urn:oid:2.16.840.1.113883'),
          isTrue,
        );
      });

      test('non-string is invalid for uri', () {
        expect(isValueAValidPrimitive('uri', 123), isFalse);
      });
    });

    group('url', () {
      test('valid URL', () {
        expect(
          isValueAValidPrimitive('url', 'https://example.com/fhir/Patient'),
          isTrue,
        );
      });

      test('non-string is invalid for url', () {
        expect(isValueAValidPrimitive('url', 123), isFalse);
      });
    });

    group('code', () {
      test('valid code value', () {
        expect(isValueAValidPrimitive('code', 'active'), isTrue);
      });

      test('code with hyphens is valid', () {
        expect(isValueAValidPrimitive('code', 'entered-in-error'), isTrue);
      });

      test('non-string is invalid for code', () {
        expect(isValueAValidPrimitive('code', 123), isFalse);
      });
    });

    group('id', () {
      test('valid id', () {
        expect(isValueAValidPrimitive('id', 'example-123'), isTrue);
      });

      test('non-string is invalid for id', () {
        expect(isValueAValidPrimitive('id', 123), isFalse);
      });
    });

    group('base64Binary', () {
      test('valid base64 string', () {
        expect(isValueAValidPrimitive('base64Binary', 'SGVsbG8='), isTrue);
      });

      test('non-string is invalid for base64Binary', () {
        expect(isValueAValidPrimitive('base64Binary', 123), isFalse);
      });
    });

    group('canonical', () {
      test('valid canonical URL', () {
        expect(
          isValueAValidPrimitive(
            'canonical',
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
          isTrue,
        );
      });

      test('non-string is invalid for canonical', () {
        expect(isValueAValidPrimitive('canonical', 123), isFalse);
      });
    });

    group('markdown', () {
      test('valid markdown string', () {
        expect(
          isValueAValidPrimitive('markdown', '# Heading\n\nSome **bold** text'),
          isTrue,
        );
      });

      test('non-string is invalid for markdown', () {
        expect(isValueAValidPrimitive('markdown', 123), isFalse);
      });
    });

    group('oid', () {
      test('valid OID', () {
        expect(
          isValueAValidPrimitive('oid', 'urn:oid:2.16.840.1.113883'),
          isTrue,
        );
      });

      test('non-string is invalid for oid', () {
        expect(isValueAValidPrimitive('oid', 123), isFalse);
      });
    });

    group('uuid', () {
      test('valid UUID (plain format)', () {
        expect(
          isValueAValidPrimitive(
            'uuid',
            '550e8400-e29b-41d4-a716-446655440000',
          ),
          isTrue,
        );
      });

      test('non-string is invalid for uuid', () {
        expect(isValueAValidPrimitive('uuid', 123), isFalse);
      });

      test('invalid uuid string is invalid', () {
        expect(isValueAValidPrimitive('uuid', 'not-a-uuid'), isFalse);
      });
    });

    group('time', () {
      test('valid time', () {
        expect(isValueAValidPrimitive('time', '14:30:00'), isTrue);
      });

      test('non-string is invalid for time', () {
        expect(isValueAValidPrimitive('time', 1430), isFalse);
      });
    });

    group('integer64', () {
      test('valid integer64 as string', () {
        expect(
          isValueAValidPrimitive('integer64', '9223372036854775807'),
          isTrue,
        );
      });

      test('invalid integer64 string', () {
        expect(isValueAValidPrimitive('integer64', 'not-a-number'), isFalse);
      });

      test('non-string non-BigInt is invalid for integer64', () {
        expect(isValueAValidPrimitive('integer64', 123), isFalse);
      });
    });

    group('case insensitivity', () {
      test('isPrimitiveType is case insensitive', () {
        expect(isPrimitiveType('String'), isTrue);
        expect(isPrimitiveType('STRING'), isTrue);
        expect(isPrimitiveType('Boolean'), isTrue);
        expect(isPrimitiveType('DateTime'), isTrue);
        expect(isPrimitiveType('PositiveInt'), isTrue);
        expect(isPrimitiveType('UnsignedInt'), isTrue);
      });

      test('non-primitive types return false', () {
        expect(isPrimitiveType('Patient'), isFalse);
        expect(isPrimitiveType('HumanName'), isFalse);
        expect(isPrimitiveType('Reference'), isFalse);
      });
    });

    group('isComparablePrimitive', () {
      test('numeric types are comparable', () {
        expect(isComparablePrimitive('integer'), isTrue);
        expect(isComparablePrimitive('decimal'), isTrue);
        expect(isComparablePrimitive('positiveInt'), isTrue);
        expect(isComparablePrimitive('unsignedInt'), isTrue);
      });

      test('date types are comparable', () {
        expect(isComparablePrimitive('date'), isTrue);
        expect(isComparablePrimitive('dateTime'), isTrue);
        expect(isComparablePrimitive('instant'), isTrue);
        expect(isComparablePrimitive('time'), isTrue);
      });

      test('string types are not comparable', () {
        expect(isComparablePrimitive('string'), isFalse);
        expect(isComparablePrimitive('code'), isFalse);
        expect(isComparablePrimitive('uri'), isFalse);
      });
    });
  });

  group('Primitive validation via structure validation', () {
    test('validates string primitive in structure', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('valid-id', 'valid-id', path: 'Patient.id'),
        );

      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );
      final elements = {'Patient.id': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });

    test('validates boolean primitive value true in structure', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.active')
            ..key = ValueNode('active', 'active')
            ..value = LiteralNode(true, 'true', path: 'Patient.active'),
        );

      final element = ElementDefinition(
        path: 'Patient.active'.toFhirString,
        type: [ElementDefinitionType(code: 'boolean'.toFhirUri)],
      );
      final elements = {'Patient.active': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('rejects non-boolean value for boolean field', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.active')
            ..key = ValueNode('active', 'active')
            ..value = LiteralNode('true', '"true"', path: 'Patient.active'),
        );

      final element = ElementDefinition(
        path: 'Patient.active'.toFhirString,
        type: [ElementDefinitionType(code: 'boolean'.toFhirUri)],
      );
      final elements = {'Patient.active': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isTrue,
      );
    });

    test('rejects string value for integer field', () async {
      final node = ObjectNode(path: 'TestResource')
        ..children.add(
          PropertyNode(path: 'TestResource.count')
            ..key = ValueNode('count', 'count')
            ..value = LiteralNode(
              'not-a-number',
              '"not-a-number"',
              path: 'TestResource.count',
            ),
        );

      final element = ElementDefinition(
        path: 'TestResource.count'.toFhirString,
        type: [ElementDefinitionType(code: 'integer'.toFhirUri)],
      );
      final elements = {'TestResource.count': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'TestResource',
        resourceCache: resourceCache,
      );

      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isTrue,
      );
    });

    test('validates date format in structure', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.birthDate')
            ..key = ValueNode('birthDate', 'birthDate')
            ..value = LiteralNode(
              '1980-01-01',
              '"1980-01-01"',
              path: 'Patient.birthDate',
            ),
        );

      final element = ElementDefinition(
        path: 'Patient.birthDate'.toFhirString,
        type: [ElementDefinitionType(code: 'date'.toFhirUri)],
      );
      final elements = {'Patient.birthDate': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('validates decimal value in structure', () async {
      final node = ObjectNode(path: 'Quantity')
        ..children.add(
          PropertyNode(path: 'Quantity.value')
            ..key = ValueNode('value', 'value')
            ..value = LiteralNode(3.14, '3.14', path: 'Quantity.value'),
        );

      final element = ElementDefinition(
        path: 'Quantity.value'.toFhirString,
        type: [ElementDefinitionType(code: 'decimal'.toFhirUri)],
      );
      final elements = {'Quantity.value': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Quantity',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('validates array of primitive values', () async {
      final node = ObjectNode(path: 'HumanName')
        ..children.add(
          PropertyNode(path: 'HumanName.given')
            ..key = ValueNode('given', 'given')
            ..value = (ArrayNode(path: 'HumanName.given')
              ..children.addAll([
                LiteralNode('John', '"John"', path: 'HumanName.given[0]'),
                LiteralNode(
                  'Michael',
                  '"Michael"',
                  path: 'HumanName.given[1]',
                ),
              ])),
        );

      final element = ElementDefinition(
        path: 'HumanName.given'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );
      final elements = {'HumanName.given': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'HumanName',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });
  });

  group('Primitive validation via FhirValidationEngine', () {
    late FhirValidationEngine validator;

    setUp(() {
      validator = FhirValidationEngine();
    });

    test('validates Patient with valid birthDate', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'test-patient',
          'birthDate': '1990-06-15',
        },
      );

      expect(results, isNotNull);
      // Should not have date format errors
      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('not a valid date'),
        ),
        isEmpty,
      );
    });

    test('validates Patient with boolean active field', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'test-patient',
          'active': true,
        },
      );

      expect(results, isNotNull);
      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('rejects Patient with non-boolean active field', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'test-patient',
          'active': 'yes',
        },
      );

      expect(results, isNotNull);
      // The engine should detect either an invalid primitive type or a binding
      // error for a non-boolean value in a boolean field
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });
  });
}
