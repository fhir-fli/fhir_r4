import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void xhtmlTest() {
  group('FhirXhtml Tests', () {
    const validXhtml = '''
      <div xmlns="http://www.w3.org/1999/xhtml">
        <p>Hello, FHIR!</p>
      </div>
    ''';

    const invalidXhtmlNoNamespace = '''
      <div>
        <p>Hello, FHIR!</p>
      </div>
    ''';

    const invalidXhtmlWrongRoot = '''
      <body xmlns="http://www.w3.org/1999/xhtml">
        <p>Hello, FHIR!</p>
      </body>
    ''';

    const jsonXhtml = '''
      <div xmlns="http://www.w3.org/1999/xhtml">
        <p>JSON content</p>
      </div>
    ''';

    const yamlXhtml = '''
      <div xmlns="http://www.w3.org/1999/xhtml">
        <p>YAML content</p>
      </div>
    ''';

    const validStyleXhtml = '''
      <div xmlns="http://www.w3.org/1999/xhtml">
        <p style="font-weight:bold;">Valid style</p>
      </div>
    ''';

    String normalizeWhitespace(String input) {
      return input.replaceAll(RegExp(r'\s+'), ' ').trim();
    }

    // Basic FhirXhtml creation and validation
    test('FhirXhtml fromYaml with valid XHTML', () {
      final fhirXhtml = FhirXhtml.fromYaml('value: $yamlXhtml');
      const expectedXhtml = '<div xmlns="http://www.w3.org/1999/xhtml">\n'
          '        <p>YAML content</p>\n'
          '      </div>';

      // Normalize whitespace before comparison
      expect(
        normalizeWhitespace(fhirXhtml.toString()),
        equals(normalizeWhitespace(expectedXhtml)),
      );
    });

    test('FhirXhtml from String value with invalid XHTML (no namespace)', () {
      expect(
        () => FhirXhtml(invalidXhtmlNoNamespace),
        throwsFormatException,
      );
    });

    test('FhirXhtml from String value with invalid XHTML (wrong root)', () {
      expect(
        () => FhirXhtml(invalidXhtmlWrongRoot),
        throwsFormatException,
      );
    });

    test('FhirXhtml with valid style attribute', () {
      final fhirXhtml = FhirXhtml(validStyleXhtml);
      expect(
        normalizeWhitespace(fhirXhtml.value!),
        equals(normalizeWhitespace(validStyleXhtml)),
      );
    });

    // JSON and YAML tests
    test('FhirXhtml fromJson with valid XHTML', () {
      final fhirXhtml = FhirXhtml.fromJson({'value': jsonXhtml});
      expect(
        normalizeWhitespace(fhirXhtml.value!),
        equals(normalizeWhitespace(jsonXhtml)),
      );
      expect(
        normalizeWhitespace(fhirXhtml.toJson()['value'] as String),
        equals(normalizeWhitespace(jsonXhtml)),
      );
    });

    test('FhirXhtml fromJson with invalid XHTML throws FormatException', () {
      expect(
        () => FhirXhtml.fromJson({'value': invalidXhtmlWrongRoot}),
        throwsFormatException,
      );
    });

    test('FhirXhtml fromYaml with valid XHTML', () {
      final fhirXhtml = FhirXhtml.fromYaml('value: $yamlXhtml');
      const expectedXhtml = yamlXhtml;
      expect(
        normalizeWhitespace(fhirXhtml.toString()),
        equals(normalizeWhitespace(expectedXhtml)),
      );
      expect(
        normalizeWhitespace(fhirXhtml.value!),
        equals(normalizeWhitespace(expectedXhtml)),
      );
      expect(
        normalizeWhitespace(fhirXhtml.toJson()['value'] as String),
        equals(normalizeWhitespace(yamlXhtml)),
      );
    });

    // tryParse tests
    test('FhirXhtml tryParse with valid XHTML', () {
      final fhirXhtml = FhirXhtml.tryParse(validXhtml);
      expect(
        normalizeWhitespace(fhirXhtml?.value ?? ''),
        equals(normalizeWhitespace(validXhtml)),
      );
    });

    test('FhirXhtml tryParse with invalid XHTML returns null', () {
      final fhirXhtml = FhirXhtml.tryParse(invalidXhtmlWrongRoot);
      expect(fhirXhtml, isNull);
    });

    test('FhirXhtml tryParse with null input returns null', () {
      final fhirXhtml = FhirXhtml.tryParse(null);
      expect(fhirXhtml, isNull);
    });

    // Equality and hashCode tests
    test('FhirXhtml equality with another FhirXhtml', () {
      final fhirXhtml1 = FhirXhtml(validXhtml);
      final fhirXhtml2 = FhirXhtml(validXhtml);
      expect(fhirXhtml1 == fhirXhtml2, isTrue);
      expect(fhirXhtml1.equals(fhirXhtml2), isTrue);
    });

    test('FhirXhtml equality with a String', () {
      final fhirXhtml = FhirXhtml(validXhtml);
      // ignore: unrelated_type_equality_checks
      expect(fhirXhtml == validXhtml, isTrue);
    });

    test('FhirXhtml inequality with a different XHTML String', () {
      final fhirXhtml = FhirXhtml(validXhtml);
      // ignore: unrelated_type_equality_checks
      expect(fhirXhtml == 'Different XHTML', isFalse);
    });

    // Cloning and copying
    test('FhirXhtml clone', () {
      final originalXhtml = FhirXhtml(validXhtml);
      final clonedXhtml = originalXhtml.clone();
      expect(clonedXhtml.value, equals(validXhtml));
      expect(clonedXhtml == originalXhtml, isTrue);
      expect(clonedXhtml.hashCode, equals(originalXhtml.hashCode));
    });

    test('FhirXhtml copyWith new value', () {
      final originalXhtml = FhirXhtml(validXhtml);
      final copiedXhtml = originalXhtml.copyWith(newValue: jsonXhtml);
      expect(copiedXhtml.value, equals(jsonXhtml));
      expect(originalXhtml.value, equals(validXhtml));
    });

    test('FhirXhtml with valid style attribute', () {
      final fhirXhtml = FhirXhtml(validStyleXhtml);
      expect(
        normalizeWhitespace(fhirXhtml.value!), // Normalize whitespace
        equals(normalizeWhitespace(validStyleXhtml)),
      );
    });

    test('FhirXhtml toJsonString', () {
      final fhirXhtml = FhirXhtml(validXhtml);
      final jsonString = fhirXhtml.toJsonString();
      final expectedString = jsonEncode({'value': validXhtml});

      expect(jsonString, equals(expectedString));
    });
  });
}
