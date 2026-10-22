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
        normalizeWhitespace(fhirXhtml.valueString!),
        equals(normalizeWhitespace(validStyleXhtml)),
      );
    });

    // JSON and YAML tests
    test('FhirXhtml fromJson with valid XHTML', () {
      final fhirXhtml = FhirXhtml.fromJson({'value': jsonXhtml});
      expect(
        normalizeWhitespace(fhirXhtml.valueString!),
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
        normalizeWhitespace(fhirXhtml.valueString!),
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
        normalizeWhitespace(fhirXhtml?.valueString ?? ''),
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
      expect(clonedXhtml.valueString, equals(validXhtml));
      expect(clonedXhtml == originalXhtml, isTrue);
      expect(clonedXhtml.hashCode, equals(originalXhtml.hashCode));
    });

    test('FhirXhtml copyWith new value', () {
      final originalXhtml = FhirXhtml(validXhtml);
      final copiedXhtml = originalXhtml.copyWith(newValue: jsonXhtml);
      expect(copiedXhtml.valueString, equals(jsonXhtml));
      expect(originalXhtml.valueString, equals(validXhtml));
    });

    test('FhirXhtml with valid style attribute', () {
      final fhirXhtml = FhirXhtml(validStyleXhtml);
      expect(
        normalizeWhitespace(fhirXhtml.valueString!), // Normalize whitespace
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

/// FHIR's txt-1 and txt-2 on Narrative.div, as HL7's validator applies them
/// (hapifhir/org.hl7.fhir.core at 430c03b: XhtmlValidator's element and
/// attribute lists, a div root, InstanceValidator.isActiveScheme on links,
/// FHIRPathEngine.checkForContent).
void narrativeRulesTest() {
  String div(String inner, {String root = 'div'}) =>
      '<$root xmlns="http://www.w3.org/1999/xhtml">$inner</$root>';

  group('narrative rules', () {
    test('elements HL7 allows that were refused are accepted', () {
      for (final inner in const [
        '<p>H<sub>2</sub>O</p>',
        '<address>Clinic</address>',
        '<p><kbd>Ctrl</kbd></p>',
        '<p><bdo dir="rtl">x</bdo></p>',
        'Clinic map<map name="m"><area shape="rect" coords="0,0,1,1" '
            'href="#a" '
            'alt="x"/></map>',
        '<table summary="s" frame="box" rules="all"><tr><td nowrap="nowrap" '
            'headers="h" scope="row" axis="a">x</td></tr></table>',
        '<a href="#x" rel="next" hreflang="en">x</a>',
        '<p><img src="#i" longdesc="#d" usemap="#m" alt="x"/></p>',
      ]) {
        expect(FhirXhtml.narrativeProblems(div(inner)), isEmpty, reason: inner);
        expect(FhirXhtml(div(inner)).valueString, div(inner));
      }
    });

    test('a javascript: or vbscript: link is refused', () {
      for (final href in const [
        'javascript:alert(1)',
        ' JavaScript:alert(1)',
        'vbscript:msgbox(1)',
      ]) {
        final xhtml = div('<a href="$href">x</a>');
        expect(FhirXhtml.narrativeProblems(xhtml), isNotEmpty, reason: href);
        expect(() => FhirXhtml(xhtml), throwsFormatException);
      }
      expect(
        FhirXhtml.narrativeProblems(div('<a href="https://hl7.org">x</a>')),
        isEmpty,
      );
    });

    test('the root must be a div', () {
      expect(
        FhirXhtml.narrativeProblems(div('x', root: 'p')),
        contains(contains('not <div>')),
      );
      expect(() => FhirXhtml(div('x', root: 'span')), throwsFormatException);
    });

    test('an attribute is allowed only where HL7 lists it', () {
      for (final inner in const [
        '<span href="#x">x</span>',
        '<p src="x.png">x</p>',
        '<td border="1">x</td>',
        '<p height="3">x</p>',
        '<p name="n">x</p>',
        '<p onclick="alert(1)">x</p>',
      ]) {
        expect(FhirXhtml.narrativeProblems(div(inner)), isNotEmpty,
            reason: inner);
      }
    });

    test('elements outside the list are refused', () {
      for (final name in const ['script', 'iframe', 'form', 'u', 'object']) {
        expect(
          FhirXhtml.narrativeProblems(div('<$name>x</$name>')),
          contains(contains('<$name>')),
        );
      }
    });

    test('there must be text or an image (txt-2)', () {
      expect(FhirXhtml.narrativeProblems(div(' ')), isNotEmpty);
      expect(FhirXhtml.narrativeProblems(div('<p> </p><br/>')), isNotEmpty);
      expect(FhirXhtml.narrativeProblems(div('<img src="#i"/>')), isEmpty);
    });

    test('a DOCTYPE is refused', () {
      expect(
        FhirXhtml.narrativeProblems('<!DOCTYPE div>${div('x')}'),
        contains(contains('DOCTYPE')),
      );
    });

    test('xml:lang, xml:space and lang are allowed', () {
      expect(
        FhirXhtml.narrativeProblems(
          div('<p xml:lang="en" lang="en"><pre xml:space="preserve">x</pre>'
              '</p>'),
        ),
        isEmpty,
      );
    });
  });
}

void main() {
  xhtmlTest();
  narrativeRulesTest();
}
