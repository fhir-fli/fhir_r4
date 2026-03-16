import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensionForFHIR', () {
    group('toLowerSnakeCase', () {
      test('converts camelCase to snake_case', () {
        expect('camelCase'.toLowerSnakeCase(), 'camel_case');
      });

      test('converts PascalCase to snake_case', () {
        expect('PascalCase'.toLowerSnakeCase(), 'pascal_case');
      });

      test('converts multi-word camelCase', () {
        expect('myLongVariableName'.toLowerSnakeCase(), 'my_long_variable_name');
      });

      test('replaces spaces with underscores', () {
        expect('hello world'.toLowerSnakeCase(), 'hello_world');
      });

      test('replaces hyphens with underscores', () {
        expect('hello-world'.toLowerSnakeCase(), 'hello_world');
      });

      test('already snake_case stays the same', () {
        expect('already_snake'.toLowerSnakeCase(), 'already_snake');
      });

      test('single word lowercased', () {
        expect('Hello'.toLowerSnakeCase(), 'hello');
      });
    });

    group('equalsIgnoreCase', () {
      test('same case strings match', () {
        expect('hello'.equalsIgnoreCase('hello'), isTrue);
      });

      test('different case strings match', () {
        expect('Hello'.equalsIgnoreCase('hello'), isTrue);
        expect('HELLO'.equalsIgnoreCase('hello'), isTrue);
      });

      test('different strings do not match', () {
        expect('hello'.equalsIgnoreCase('world'), isFalse);
      });

      test('null returns false', () {
        expect('hello'.equalsIgnoreCase(null), isFalse);
      });

      test('different length strings do not match', () {
        expect('hi'.equalsIgnoreCase('hello'), isFalse);
      });
    });

    group('regionMatches', () {
      test('matching regions return true', () {
        expect('hello world'.regionMatches(false, 6, 'world', 0, 5), isTrue);
      });

      test('case-insensitive matching', () {
        expect('Hello'.regionMatches(true, 0, 'hello', 0, 5), isTrue);
      });

      test('case-sensitive mismatch', () {
        expect('Hello'.regionMatches(false, 0, 'hello', 0, 5), isFalse);
      });

      test('invalid offsets return false', () {
        expect('hi'.regionMatches(false, 5, 'hi', 0, 2), isFalse);
        expect('hello'.regionMatches(false, 0, 'hi', 5, 2), isFalse);
      });
    });

    group('hashTail', () {
      test('returns substring after last slash', () {
        expect('http://example.org/fhir/Patient'.hashTail(), 'Patient');
      });

      test('returns empty string when # present', () {
        expect('http://example.org#fragment'.hashTail(), '');
      });

      test('returns full string when no slash', () {
        expect('Patient'.hashTail(), 'Patient');
      });
    });

    group('isUpperCase', () {
      test('uppercase single char returns true', () {
        expect('A'.isUpperCase(), isTrue);
        expect('Z'.isUpperCase(), isTrue);
      });

      test('lowercase single char returns false', () {
        expect('a'.isUpperCase(), isFalse);
      });

      test('multi-char string returns false', () {
        expect('AB'.isUpperCase(), isFalse);
      });
    });

    group('isAbsoluteUrl', () {
      test('http URL is absolute', () {
        expect('http://example.org'.isAbsoluteUrl(), isTrue);
      });

      test('https URL is absolute', () {
        expect('https://example.org/fhir'.isAbsoluteUrl(), isTrue);
      });

      test('urn is absolute', () {
        expect('urn:oid:2.16.840'.isAbsoluteUrl(), isTrue);
      });

      test('relative path is not absolute', () {
        expect('Patient/123'.isAbsoluteUrl(), isFalse);
      });

      test('empty string is not absolute', () {
        expect(''.isAbsoluteUrl(), isFalse);
      });

      test('URL with spaces is not absolute', () {
        expect('http://example.org/bad path'.isAbsoluteUrl(), isFalse);
      });

      test('URL with empty details is not absolute', () {
        expect('http:'.isAbsoluteUrl(), isFalse);
      });
    });

    group('startsWithInList', () {
      test('returns true when matches', () {
        expect(
          'urn:iso:std'.startsWithInList(['urn:iso:', 'urn:iec:']),
          isTrue,
        );
      });

      test('returns false when no match', () {
        expect(
          'http://example.org'.startsWithInList(['urn:iso:', 'urn:iec:']),
          isFalse,
        );
      });

      test('handles null entries in list', () {
        expect(
          'test'.startsWithInList([null, 'test']),
          isTrue,
        );
      });
    });

    group('existsInList', () {
      test('returns true when string is in set', () {
        expect('a'.existsInList({'a', 'b', 'c'}), isTrue);
      });

      test('returns false when not in set', () {
        expect('d'.existsInList({'a', 'b', 'c'}), isFalse);
      });
    });

    group('isToken', () {
      test('valid token', () {
        expect('Patient'.isToken(), isTrue);
        expect('my_field'.isToken(), isTrue);
      });

      test('empty string is not a token', () {
        expect(''.isToken(), isFalse);
      });

      test('starts with digit is not a token', () {
        expect('1abc'.isToken(), isFalse);
      });

      test('brackets allowed in token', () {
        expect('field[0]'.isToken(), isTrue);
      });
    });

    group('isAlphabetic', () {
      test('letter returns true', () {
        expect('a'.isAlphabetic(), isTrue);
        expect('Z'.isAlphabetic(), isTrue);
      });

      test('digit returns false', () {
        expect('1'.isAlphabetic(), isFalse);
      });
    });

    group('isDigit', () {
      test('digit returns true', () {
        expect('0'.isDigit, isTrue);
        expect('9'.isDigit, isTrue);
      });

      test('letter returns false', () {
        expect('a'.isDigit, isFalse);
      });
    });

    group('uncapitalize', () {
      test('lowercases first character', () {
        expect('Hello'.uncapitalize(), 'hello');
      });

      test('empty string returns empty', () {
        expect(''.uncapitalize(), '');
      });

      test('single char', () {
        expect('A'.uncapitalize(), 'a');
      });

      test('already lowercase stays same', () {
        expect('hello'.uncapitalize(), 'hello');
      });
    });

    group('capitalize', () {
      test('uppercases first character', () {
        expect('hello'.capitalize(), 'Hello');
      });

      test('empty string returns empty', () {
        expect(''.capitalize(), '');
      });

      test('single char', () {
        expect('a'.capitalize(), 'A');
      });
    });

    group('isZero', () {
      test('all zeros returns true', () {
        expect('0.00'.isZero(), isTrue);
        expect('0'.isZero(), isTrue);
        expect('-0.0'.isZero(), isTrue);
      });

      test('non-zero returns false', () {
        expect('1.0'.isZero(), isFalse);
        expect('0.01'.isZero(), isFalse);
      });
    });

    group('isWhiteSpace', () {
      test('space is whitespace', () {
        expect(' '.isWhiteSpace(), isTrue);
      });

      test('tab is whitespace', () {
        expect('\t'.isWhiteSpace(), isTrue);
      });

      test('newline is whitespace', () {
        expect('\n'.isWhiteSpace(), isTrue);
      });

      test('letter is not whitespace', () {
        expect('a'.isWhiteSpace(), isFalse);
      });
    });

    group('isInteger', () {
      test('valid integers', () {
        expect('0'.isInteger, isTrue);
        expect('42'.isInteger, isTrue);
        expect('-1'.isInteger, isTrue);
        expect('2147483647'.isInteger, isTrue);
        expect('-2147483648'.isInteger, isTrue);
      });

      test('invalid integers', () {
        expect(''.isInteger, isFalse);
        expect('3.14'.isInteger, isFalse);
        expect('abc'.isInteger, isFalse);
        expect('-'.isInteger, isFalse);
      });

      test('out of range integers', () {
        expect('2147483648'.isInteger, isFalse);
        expect('-2147483649'.isInteger, isFalse);
        expect('99999999999'.isInteger, isFalse);
      });
    });

    group('stripBOM', () {
      test('removes BOM character', () {
        expect('\uFEFFhello'.stripBOM(), 'hello');
      });

      test('no-op when no BOM', () {
        expect('hello'.stripBOM(), 'hello');
      });
    });

    group('noString', () {
      test('empty string returns true', () {
        expect(''.noString(), isTrue);
      });

      test('non-empty string returns false', () {
        expect('x'.noString(), isFalse);
      });
    });

    group('escapeXml', () {
      test('escapes special XML characters', () {
        expect('<tag>'.escapeXml(), '&lt;tag&gt;');
        expect('a & b'.escapeXml(), 'a &amp; b');
        expect('"quoted"'.escapeXml(), '&quot;quoted&quot;');
      });

      test('empty string returns empty', () {
        expect(''.escapeXml(), '');
      });

      test('no special chars returns same', () {
        expect('hello'.escapeXml(), 'hello');
      });
    });

    group('escapeJson', () {
      test('escapes control characters', () {
        expect('line\nnew'.escapeJson(), r'line\nnew');
        expect('tab\there'.escapeJson(), r'tab\there');
        expect('cr\rhere'.escapeJson(), r'cr\rhere');
      });

      test('escapes quotes and backslash', () {
        expect('"test"'.escapeJson(), r'\"test\"');
        expect(r'back\slash'.escapeJson(), r'back\\slash');
      });
    });

    group('isDecimal', () {
      test('valid decimals', () {
        expect('3.14'.isDecimal(), isTrue);
        expect('0'.isDecimal(), isTrue);
        expect('-1.5'.isDecimal(), isTrue);
        expect('0.0'.isDecimal(), isTrue);
      });

      test('invalid decimals', () {
        expect(''.isDecimal(), isFalse);
        expect('abc'.isDecimal(), isFalse);
        expect('1.'.isDecimal(), isFalse);
        expect('.5'.isDecimal(), isFalse);
      });

      test('exponents only allowed when flag set', () {
        expect('1e5'.isDecimal(), isFalse);
        expect('1e5'.isDecimal(allowExponent: true), isTrue);
      });

      test('leading zeros rejected unless allowed', () {
        expect('01'.isDecimal(), isFalse);
        expect('01'.isDecimal(allowLeadingZero: true), isTrue);
      });
    });

    group('checkDecimal', () {
      test('blank returns blank status', () {
        expect('  '.checkDecimal(), DecimalStatus.blank);
      });

      test('syntax error returns syntax', () {
        expect('abc'.checkDecimal(), DecimalStatus.syntax);
        expect('1.'.checkDecimal(), DecimalStatus.syntax);
      });

      test('valid returns ok', () {
        expect('123'.checkDecimal(), DecimalStatus.ok);
        expect('1.5'.checkDecimal(), DecimalStatus.ok);
      });
    });

    group('isFhirPrimitive', () {
      test('known FHIR primitive types return true', () {
        expect('string'.isFhirPrimitive, isTrue);
        expect('boolean'.isFhirPrimitive, isTrue);
        expect('integer'.isFhirPrimitive, isTrue);
        expect('decimal'.isFhirPrimitive, isTrue);
        expect('uri'.isFhirPrimitive, isTrue);
        expect('date'.isFhirPrimitive, isTrue);
        expect('datetime'.isFhirPrimitive, isTrue);
        expect('fhirstring'.isFhirPrimitive, isTrue);
      });

      test('non-primitive types return false', () {
        expect('Patient'.isFhirPrimitive, isFalse);
        expect('HumanName'.isFhirPrimitive, isFalse);
      });
    });

    group('fhirPrimitiveToDartType', () {
      test('maps boolean to bool', () {
        expect('boolean'.fhirPrimitiveToDartType, 'bool');
      });

      test('maps string to String', () {
        expect('string'.fhirPrimitiveToDartType, 'String');
      });

      test('maps integer to int', () {
        expect('integer'.fhirPrimitiveToDartType, 'int');
      });

      test('maps decimal to double', () {
        expect('decimal'.fhirPrimitiveToDartType, 'double');
      });

      test('maps instant to DateTime', () {
        expect('instant'.fhirPrimitiveToDartType, 'DateTime');
      });

      test('throws for unknown type', () {
        expect(() => 'Patient'.fhirPrimitiveToDartType, throwsException);
      });
    });

    group('toNamedDartType', () {
      test('maps standard names', () {
        expect('string'.toNamedDartType, 'FhirString');
        expect('boolean'.toNamedDartType, 'FhirBoolean');
        expect('uri'.toNamedDartType, 'FhirUri');
        expect('integer'.toNamedDartType, 'FhirInteger');
        expect('decimal'.toNamedDartType, 'FhirDecimal');
      });

      test('maps renamed types', () {
        expect('duration'.toNamedDartType, 'FhirDuration');
        expect('list'.toNamedDartType, 'FhirList');
        expect('group'.toNamedDartType, 'FhirGroup');
        expect('endpoint'.toNamedDartType, 'FhirEndpoint');
        expect('meta'.toNamedDartType, 'FhirMeta');
        expect('extension'.toNamedDartType, 'FhirExtension');
      });

      test('returns self for unknown type', () {
        expect('SomeCustomType'.toNamedDartType, 'SomeCustomType');
      });
    });

    group('isFhirDataType', () {
      test('known data types return true', () {
        expect('address'.isFhirDataType, isTrue);
        expect('codeableconcept'.isFhirDataType, isTrue);
        expect('humanname'.isFhirDataType, isTrue);
        expect('quantity'.isFhirDataType, isTrue);
        expect('period'.isFhirDataType, isTrue);
      });

      test('non-data types return false', () {
        expect('patient'.isFhirDataType, isFalse);
        expect('observation'.isFhirDataType, isFalse);
      });
    });

    group('isFhirResourceType', () {
      test('known resource types return true', () {
        expect('Patient'.isFhirResourceType, isTrue);
        expect('Observation'.isFhirResourceType, isTrue);
      });

      test('non-resource types return false', () {
        expect('FakeResource'.isFhirResourceType, isFalse);
      });
    });

    group('fhirFieldToDartName', () {
      test('reserved words get underscore suffix', () {
        expect('extension'.fhirFieldToDartName, 'extension_');
        expect('class'.fhirFieldToDartName, 'class_');
        expect('abstract'.fhirFieldToDartName, 'abstract_');
        expect('import'.fhirFieldToDartName, 'import_');
      });

      test('non-reserved words stay the same', () {
        expect('name'.fhirFieldToDartName, 'name');
        expect('status'.fhirFieldToDartName, 'status');
      });
    });

    group('isBackboneElement', () {
      test('returns true for BackboneElement', () {
        expect('BackboneElement'.isBackboneElement, isTrue);
      });

      test('returns false for other types', () {
        expect('Patient'.isBackboneElement, isFalse);
      });
    });

    group('isLetter', () {
      test('single letter returns true', () {
        expect('a'.isLetter, isTrue);
        expect('Z'.isLetter, isTrue);
      });

      test('digit returns false', () {
        expect('1'.isLetter, isFalse);
      });

      test('multi-char returns false', () {
        expect('ab'.isLetter, isFalse);
      });
    });

    group('isWhitespace (get)', () {
      test('whitespace string returns true', () {
        expect('   '.isWhitespace, isTrue);
        expect('\t'.isWhitespace, isTrue);
      });

      test('non-whitespace returns false', () {
        expect('abc'.isWhitespace, isFalse);
      });
    });

    group('getDecimalPrecision', () {
      test('integer has zero precision', () {
        expect('42'.getDecimalPrecision(), 0);
      });

      test('decimal has correct precision', () {
        expect('3.14'.getDecimalPrecision(), 2);
        expect('1.0'.getDecimalPrecision(), 1);
        expect('0.12345'.getDecimalPrecision(), 5);
      });

      test('ignores exponent part', () {
        expect('1.5e10'.getDecimalPrecision(), 1);
      });
    });

    group('getDatePrecision', () {
      test('year only', () {
        expect('2024'.getDatePrecision(), 4);
      });

      test('year-month', () {
        expect('2024-03'.getDatePrecision(), 6);
      });

      test('full date', () {
        expect('2024-03-15'.getDatePrecision(), 8);
      });
    });

    group('splitTimezone', () {
      test('splits positive timezone', () {
        final result = '2024-03-15T10:30:00+05:30'.splitTimezone();
        expect(result[0], '2024-03-15T10:30:00');
        expect(result[1], '+05:30');
      });

      test('splits Z timezone', () {
        final result = '2024-03-15T10:30:00Z'.splitTimezone();
        expect(result[0], '2024-03-15T10:30:00');
        expect(result[1], 'Z');
      });

      test('no timezone', () {
        final result = '2024-03-15'.splitTimezone();
        expect(result[0], '2024-03-15');
        expect(result[1], '');
      });

      test('splits negative timezone after T', () {
        final result = '2024-03-15T10:30:00-05:00'.splitTimezone();
        expect(result[0], '2024-03-15T10:30:00');
        expect(result[1], '-05:00');
      });
    });

    group('dayCount', () {
      test('January has 31 days', () {
        expect(''.dayCount(2024, 1), '31');
      });

      test('February leap year has 29 days', () {
        expect(''.dayCount(2024, 2), '29');
      });

      test('February non-leap year has 28 days', () {
        expect(''.dayCount(2023, 2), '28');
      });

      test('April has 30 days', () {
        expect(''.dayCount(2024, 4), '30');
      });

      test('century non-leap year (1900)', () {
        expect(''.dayCount(1900, 2), '28');
      });

      test('century leap year (2000)', () {
        expect(''.dayCount(2000, 2), '29');
      });
    });

    group('sdNs', () {
      test('absolute URL returned as-is', () {
        const url = 'http://hl7.org/fhir/StructureDefinition/Patient';
        expect(url.sdNs(null), url);
      });

      test('relative name gets default namespace', () {
        expect(
          'Patient'.sdNs(null),
          'http://hl7.org/fhir/StructureDefinition/Patient',
        );
      });

      test('relative name with override namespace', () {
        expect(
          'MyType'.sdNs('http://custom.org'),
          'http://custom.org/MyType',
        );
      });
    });

    group('unescapeJson', () {
      test('unescapes backslash sequences', () {
        expect(r'hello\nworld'.unescapeJson(), 'hello\nworld');
        expect(r'tab\there'.unescapeJson(), 'tab\there');
        expect(r'quote\"here'.unescapeJson(), 'quote"here');
      });

      test('unescapes unicode', () {
        expect(r'char\u0041'.unescapeJson(), 'charA');
      });
    });

    group('unescapeXml', () {
      test('unescapes XML entities', () {
        expect('&lt;tag&gt;'.unescapeXml(), '<tag>');
        expect('a &amp; b'.unescapeXml(), 'a & b');
        expect('&quot;x&quot;'.unescapeXml(), '"x"');
      });

      test('throws on unknown entity', () {
        expect(() => '&unknown;'.unescapeXml(), throwsException);
      });
    });
  });

  group('FhirPathStringsExtension', () {
    group('pathURL', () {
      test('joins path segments with slashes', () {
        expect(
          ['http://example.org', 'fhir', 'Patient'].pathURL(),
          'http://example.org/fhir/Patient',
        );
      });

      test('handles null entries', () {
        expect(
          ['http://example.org', null, 'Patient'].pathURL(),
          'http://example.org/Patient',
        );
      });

      test('avoids double slashes', () {
        expect(
          ['http://example.org/', '/fhir'].pathURL(),
          'http://example.org//fhir',
        );
      });
    });
  });

  group('ExtensionsForFhirString', () {
    test('isFhirPrimitive on FhirString', () {
      expect('boolean'.toFhirString.isFhirPrimitive, isTrue);
      expect('Patient'.toFhirString.isFhirPrimitive, isFalse);
    });

    test('isFhirResourceType on FhirString', () {
      expect('Patient'.toFhirString.isFhirResourceType, isTrue);
      expect('FakeType'.toFhirString.isFhirResourceType, isFalse);
    });

    test('isBackboneElement on FhirString', () {
      expect('BackboneElement'.toFhirString.isBackboneElement, isTrue);
      expect('Patient'.toFhirString.isBackboneElement, isFalse);
    });
  });
}
