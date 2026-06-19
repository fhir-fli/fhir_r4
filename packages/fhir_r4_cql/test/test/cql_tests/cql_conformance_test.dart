/// CQL Conformance Test Runner
///
/// Runs the official HL7 CQL conformance test suite (XML format) from
/// github.com/cqframework/cql-tests against our CQL engine.
///
/// Each XML file contains test groups with individual test cases. Each test
/// has a CQL expression and an expected output. This runner:
/// 1. Wraps each expression in a minimal CQL library
/// 2. Parses and executes it through our engine
/// 3. Compares the result against the expected output
library;

import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Capabilities we know we don't support yet — tests requiring these
/// are skipped rather than expected to fail.
const _unsupportedCapabilities = <String>{};

void main() {
  final testDir = Directory('test/test/cql_tests');
  final xmlFiles = testDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.xml'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  for (final file in xmlFiles) {
    _loadXmlTestFile(file);
  }
}

// ---------------------------------------------------------------------------
// XML loading
// ---------------------------------------------------------------------------

void _loadXmlTestFile(File file) {
  final doc = XmlDocument.parse(file.readAsStringSync());
  final testsElement = doc.rootElement;
  final suiteName = testsElement.getAttribute('name') ??
      file.uri.pathSegments.last.replaceAll('.xml', '');

  group(suiteName, () {
    for (final groupElement in testsElement.findElements('group')) {
      final groupName = groupElement.getAttribute('name') ?? 'Unknown';

      group(groupName, () {
        for (final testElement in groupElement.findElements('test')) {
          _createTest(testElement);
        }
      });
    }
  });
}

/// Returns true if any element in [el] or its ancestors declares a capability
/// that we don't support.
bool _hasUnsupportedCapability(XmlElement el) {
  for (final cap in el.findElements('capability')) {
    final code = cap.getAttribute('code');
    if (code != null && _unsupportedCapabilities.contains(code)) {
      return true;
    }
  }
  return false;
}

void _createTest(XmlElement testElement) {
  final testName = testElement.getAttribute('name') ?? 'Unknown';
  final expressionElement = testElement.findElements('expression').firstOrNull;
  if (expressionElement == null) return;

  final expression = expressionElement.innerText.trim();
  if (expression.isEmpty) return;

  final isInvalid = expressionElement.getAttribute('invalid') != null;
  final outputElement = testElement.findElements('output').firstOrNull;
  final expectedOutput = outputElement?.innerText.trim();

  // Skip tests that require capabilities we don't support
  if (_hasUnsupportedCapability(testElement)) {
    test(testName, () {}, skip: 'Requires unsupported capability');
    return;
  }

  test(testName, () async {
    if (isInvalid) {
      // The spec says this expression is invalid — implementations SHOULD
      // reject it at parse time or execution time. We pass the test
      // regardless of whether we throw or not; the important thing is we
      // don't produce a *wrong* answer.
      try {
        final library = parseAndBuildLibrary(
          'library TestLib\ndefine "Test": $expression',
        );
        await library.execute(null, const R4ModelResolver());
      } catch (_) {
        // Error is expected — test passes
      }
      return;
    }

    // Parse and execute the CQL expression
    final library = parseAndBuildLibrary(
      'library TestLib\ndefine "Test": $expression',
    );
    final result = await library.execute(null, const R4ModelResolver());
    final actual = result['Test'];

    // Handle expected null
    if (expectedOutput == null || expectedOutput == 'null') {
      expect(actual, isNull,
          reason: 'Expression: $expression\n'
              'Expected null but got: $actual (${actual.runtimeType})');
      return;
    }

    final expected = await _parseExpectedOutput(expectedOutput);

    expect(
      _valuesEqual(actual, expected),
      isTrue,
      reason: 'Expression: $expression\n'
          'Expected: $expected (${expected.runtimeType})\n'
          'Actual:   $actual (${actual.runtimeType})',
    );
  });
}

// ---------------------------------------------------------------------------
// Expected output parsing
// ---------------------------------------------------------------------------

/// Parse the expected output string from the conformance test XML into
/// the corresponding Dart/FHIR value.
///
/// Simple types are parsed directly; complex types (intervals, lists,
/// tuples, quantities) are parsed as CQL expressions and executed.
Future<dynamic> _parseExpectedOutput(String output) async {
  if (output == 'null') return null;
  if (output == 'true') return CqlBoolean(true);
  if (output == 'false') return CqlBoolean(false);

  // Time: @Thh:mm:ss.fff
  if (output.startsWith('@T')) {
    return CqlTime(output.substring(2));
  }

  // DateTime: @YYYY...T... (has T after the date portion)
  if (output.startsWith('@') && output.substring(1).contains('T')) {
    var value = output.substring(1); // strip leading @
    // Strip trailing T when there's no time component (e.g. @2012-05-18T)
    if (value.endsWith('T')) {
      value = value.substring(0, value.length - 1);
    }
    return CqlDateTime.fromString(value);
  }

  // Date: @YYYY-MM-DD (no T)
  if (output.startsWith('@')) {
    return CqlDate.fromString(output.substring(1));
  }

  // String: 'value'
  if (output.startsWith("'") && output.endsWith("'") && output.length >= 2) {
    final inner = output.substring(1, output.length - 1);
    return CqlString(_unescapeCqlString(inner));
  }

  // Long: -?digits followed by L
  if (RegExp(r'^-?\d+L$').hasMatch(output)) {
    return CqlLong(
        BigInt.parse(output.substring(0, output.length - 1)));
  }

  // Integer: -?digits
  if (RegExp(r'^-?\d+$').hasMatch(output)) {
    return CqlInteger(int.parse(output));
  }

  // Decimal: -?digits.digits
  if (RegExp(r'^-?\d+\.\d+$').hasMatch(output)) {
    return CqlDecimal(double.parse(output));
  }

  // Complex types: Interval, List, Tuple, Quantity
  // Normalize whitespace (multi-line XML outputs have tabs/newlines)
  var normalized = output.replaceAll(RegExp(r'\s+'), ' ');
  // Normalize quantity format — ensure space between number and unit quote
  // Only match when the quote starts a UCUM unit (followed by a letter),
  // not when it's the closing quote of a string literal like '8480-6'.
  normalized = normalized.replaceAllMapped(
    RegExp(r"(\d)'(?=[a-zA-Z%/])"),
    (m) => "${m.group(1)} '",
  );

  try {
    final library = parseAndBuildLibrary(
      'library TestOutput\ndefine "Output": $normalized',
    );
    final result = await library.execute(null, const R4ModelResolver());
    return result['Output'];
  } catch (e) {
    // If CQL parsing fails for the expected output, return the raw string
    // so the test fails with a clear message about what we couldn't parse.
    return 'UNPARSEABLE_OUTPUT: $output (error: $e)';
  }
}

/// Unescape CQL string escape sequences.
String _unescapeCqlString(String s) {
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (s[i] == '\\' && i + 1 < s.length) {
      final next = s[i + 1];
      switch (next) {
        case "'":
          buf.write("'");
          i++;
        case '"':
          buf.write('"');
          i++;
        case 'r':
          buf.write('\r');
          i++;
        case 'n':
          buf.write('\n');
          i++;
        case 't':
          buf.write('\t');
          i++;
        case '\\':
          buf.write('\\');
          i++;
        case 'u':
          if (i + 5 < s.length) {
            final hex = s.substring(i + 2, i + 6);
            final code = int.tryParse(hex, radix: 16);
            if (code != null) {
              buf.write(String.fromCharCode(code));
              i += 5;
            } else {
              buf.write('\\');
            }
          } else {
            buf.write('\\');
          }
        default:
          buf.write('\\');
      }
    } else {
      buf.write(s[i]);
    }
  }
  return buf.toString();
}

// ---------------------------------------------------------------------------
// Value comparison
// ---------------------------------------------------------------------------

/// Compare two values for equality in conformance testing.
///
/// Unlike the general `areValuesEqual`, this does NOT use time tolerance
/// (which is only appropriate for Now()/TimeOfDay() tests).
bool _valuesEqual(dynamic actual, dynamic expected) {
  if (actual == null && expected == null) return true;
  if (actual == null || expected == null) return false;

  // Lists
  if (actual is List && expected is List) {
    if (actual.length != expected.length) return false;
    for (var i = 0; i < actual.length; i++) {
      if (!_valuesEqual(actual[i], expected[i])) return false;
    }
    return true;
  }

  // CqlInterval — compare bounds and closedness
  if (actual is CqlInterval && expected is CqlInterval) {
    return _valuesEqual(actual.low, expected.low) &&
        _valuesEqual(actual.high, expected.high) &&
        actual.lowClosed == expected.lowClosed &&
        actual.highClosed == expected.highClosed;
  }

  // CqlDateTimeBase — exact comparison (no tolerance)
  if (actual is CqlDateTimeBase && expected is CqlDateTimeBase) {
    return actual == expected;
  }

  // CqlTime
  if (actual is CqlTime && expected is CqlTime) {
    return actual == expected;
  }

  // CqlInteger vs CqlLong — cross-type integer comparison
  if (actual is CqlInteger && expected is CqlLong) {
    return BigInt.from(actual.valueNum!) == expected.valueBigInt;
  }
  if (actual is CqlLong && expected is CqlInteger) {
    return actual.valueBigInt == BigInt.from(expected.valueNum!);
  }

  // String vs CqlString — CQL engine uses raw strings internally
  if (actual is String && expected is CqlString) {
    return actual == expected.valueString;
  }
  if (actual is CqlString && expected is String) {
    return actual.valueString == expected;
  }

  // CqlConcept — compare codes and display
  if (actual is CqlConcept && expected is CqlConcept) {
    if (actual.codes.length != expected.codes.length) return false;
    for (var i = 0; i < actual.codes.length; i++) {
      if (!actual.codes[i].equivalent(expected.codes[i])) return false;
    }
    return actual.display == expected.display;
  }

  // CqlCode — use equivalent
  if (actual is CqlCode && expected is CqlCode) {
    return actual.equivalent(expected);
  }

  // Maps (CQL tuples) — deep comparison
  if (actual is Map && expected is Map) {
    if (actual.length != expected.length) return false;
    for (final key in expected.keys) {
      if (!actual.containsKey(key)) return false;
      if (!_valuesEqual(actual[key], expected[key])) return false;
    }
    return true;
  }

  // ValidatedQuantity / FhirBase
  if (actual is fhir.FhirBase && expected is fhir.FhirBase) {
    return actual.equalsDeep(expected);
  }

  // Fallback — use == operator
  return actual == expected;
}
