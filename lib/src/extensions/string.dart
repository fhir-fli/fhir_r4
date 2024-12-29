import 'package:fhir_r4/fhir_r4.dart';

/// Extensions for the [String] class
extension StringExtensionForFHIR on String {
  /// Returns true if the string matches another string ignoring case
  bool equalsIgnoreCase(String? anotherString) {
    return this == anotherString ||
        (anotherString != null &&
            anotherString.length == length &&
            regionMatches(true, 0, anotherString, 0, length));
  }

  /// Returns true if the string matches another string
  bool regionMatches(
    // ignore: avoid_positional_boolean_parameters
    bool ignoreCase,
    int toffset,
    String other,
    int ooffset,
    int len,
  ) {
    // Check for invalid offsets or lengths
    if (toffset < 0 ||
        ooffset < 0 ||
        toffset + len > length ||
        ooffset + len > other.length) {
      return false;
    }

    final thisSubstring = substring(toffset, toffset + len);
    final otherSubstring = other.substring(ooffset, ooffset + len);

    if (ignoreCase) {
      return thisSubstring.toLowerCase() == otherSubstring.toLowerCase();
    } else {
      return thisSubstring == otherSubstring;
    }
  }

  /// Returns the string, empty if it contains '#' or the substring
  /// after the last '/'
  String hashTail() {
    return contains('#') ? '' : substring(lastIndexOf('/') + 1);
  }

  /// Changes the first character to uppercase
  bool isUpperCase() {
    return length == 1 && contains(RegExp(r'^[A-Z]$'));
  }

  /// Checks if the string is a valid URL
  bool isAbsoluteUrl() {
    if (!contains(':')) return false;

    final scheme = substring(0, indexOf(':'));
    final details = substring(indexOf(':') + 1);

    return (['http', 'https', 'urn', 'file'].contains(scheme) ||
            (scheme.isToken() && scheme == scheme.toLowerCase()) ||
            startsWithInList([
              'urn:iso:',
              'urn:iso-iec:',
              'urn:iso-cie:',
              'urn:iso-astm:',
              'urn:iso-ieee:',
              'urn:iec:',
            ])) &&
        details.isNotEmpty &&
        !details.contains(' '); // rfc5141
  }

  /// Checks if the string starts with any of the strings in the list
  bool startsWithInList(List<String?> list) {
    for (final l in list) {
      if (l != null && startsWith(l)) return true;
    }
    return false;
  }

  /// Checks if the string is in the list
  bool existsInList(Set<String?> list) {
    return list.contains(this);
  }

  /// Checks if the string is a valid token
  bool isToken() {
    if (isEmpty) return false;
    if (!this[0].isAlphabetic()) return false;

    for (var i = 1; i < length; i++) {
      final char = this[i];
      if (!(char.isAlphabetic() ||
          char.isDigit ||
          char == '_' ||
          char == '[' ||
          char == ']')) {
        return false;
      }
    }
    return true;
  }

  /// Checks if the string is alphabetic
  bool isAlphabetic() {
    final code = codeUnitAt(0);
    return (code >= 65 && code <= 90) ||
        (code >= 97 && code <= 122); // A-Z, a-z
  }

  /// Checks if the string is a digit
  bool get isDigit {
    final code = codeUnitAt(0);
    return code >= 48 && code <= 57; // 0-9
  }

  /// Changes the first character to lowercase
  String uncapitalize() {
    if (isEmpty) return this;
    if (length == 1) return toLowerCase();

    return substring(0, 1).toLowerCase() + substring(1);
  }

  /// Checks if the string is an absolute URL, if not, returns the string
  /// with the version namespace
  String sdNs(String? overrideVersionNs) {
    if (isAbsoluteUrl()) {
      return this;
    } else if (overrideVersionNs != null) {
      return [overrideVersionNs, this].pathURL();
    } else {
      return 'http://hl7.org/fhir/StructureDefinition/$this';
    }
  }

  /// Checks if the string is an absolute URL, if not, returns the string
  String escapeJson([
    // ignore: avoid_positional_boolean_parameters
    bool escapeUnicodeWhitespace = true,
  ]) {
    final b = StringBuffer();
    for (final c in runes) {
      switch (c) {
        case 0x0D:
          b.write(r'\r');
        case 0x0A:
          b.write(r'\n');
        case 0x09:
          b.write(r'\t');
        case 0x22:
          b.write(r'\"');
        case 0x5C:
          b.write(r'\\');
        case 0x20:
          b.write(' ');
        default:
          if ((c == 0x0D || c == 0x0A) ||
              (c.isWhitespace() && escapeUnicodeWhitespace)) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else if (c < 32) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else {
            b.write(String.fromCharCode(c));
          }
      }
    }
    return b.toString();
  }

  /// Checks if the string is whitespace
  bool isWhiteSpace() {
    return [
      '\u0009',
      '\n',
      '\u000B',
      '\u000C',
      '\r',
      '\u0020',
      '\u0085',
      '\u00A0',
      '\u1680',
      '\u2000',
      '\u2001',
      '\u2002',
      '\u2003',
      '\u2004',
      '\u2005',
      '\u2006',
      '\u2007',
      '\u2008',
      '\u2009',
      '\u200A',
      '\u2028',
      '\u2029',
      '\u202F',
      '\u205F',
      '\u3000',
    ].contains(this);
  }

  /// Checks if the string is a valid integer
  bool get isInteger {
    if (trim().isEmpty) {
      return false;
    }

    final value = startsWith('-') ? substring(1) : this;
    if (value.isEmpty) {
      return false;
    }

    for (var i = 0; i < value.length; i++) {
      if (!RegExp(r'\d').hasMatch(value[i])) {
        return false;
      }
    }

    // Check bounds -2,147,483,648..2,147,483,647
    if (value.length > 10) {
      return false;
    }

    if (startsWith('-')) {
      if (value.length == 10 && value.compareTo('2147483648') > 0) {
        return false;
      }
    } else {
      if (value.length == 10 && value.compareTo('2147483647') > 0) {
        return false;
      }
    }

    return true;
  }

  /// Removes the Byte Order Mark (BOM) from the string
  String stripBOM() {
    return replaceAll('\uFEFF', '');
  }

  /// Checks if the string is empty
  bool noString() {
    return isEmpty;
  }

  /// Capitalizes the first character of the string
  String? capitalize() {
    if (isEmpty) return this;
    if (length == 1) return toUpperCase();

    return substring(0, 1).toUpperCase() + substring(1);
  }

  /// Unescapes a JSON string
  String? unescapeJson() {
    final b = StringBuffer();
    var i = 0;
    while (i < length) {
      if (this[i] == r'\') {
        i++;
        final ch = this[i];
        switch (ch) {
          case '"':
            b.write('"');
          case r'\':
            b.write(r'\');
          case '/':
            b.write('/');
          case 'b':
            b.write('\b');
          case 'f':
            b.write('\f');
          case 'n':
            b.write('\n');
          case 'r':
            b.write('\r');
          case 't':
            b.write('\t');
          case 'u':
            final hex = substring(i + 1, i + 5);
            b.write(String.fromCharCode(int.parse(hex, radix: 16)));
            i += 4;
          default:
            throw Exception('Unknown JSON escape \\$ch');
        }
      } else {
        b.write(this[i]);
      }
      i++;
    }
    return b.toString();
  }

  /// Checks if the string is a valid decimal
  bool isDecimal({
    bool allowExponent = false,
    bool allowLeadingZero = false,
  }) {
    final status = checkDecimal(
      allowExponent: allowExponent,
      allowLeadingZero: allowLeadingZero,
    );
    return status == DecimalStatus.ok || status == DecimalStatus.range;
  }

  /// Checks if the string is a valid decimal
  DecimalStatus checkDecimal({
    bool allowExponent = false,
    bool allowLeadingZero = false,
  }) {
    if (trim().isEmpty) {
      return DecimalStatus.blank;
    }

    // Check for leading zeros
    if (!allowLeadingZero) {
      if (startsWith('0') && this != '0' && !startsWith('0.')) {
        return DecimalStatus.syntax;
      }
      if (startsWith('-0') && this != '-0' && !startsWith('-0.')) {
        return DecimalStatus.syntax;
      }
      if (startsWith('+0') && this != '+0' && !startsWith('+0.')) {
        return DecimalStatus.syntax;
      }
    }

    // Check for trailing dot
    if (endsWith('.')) {
      return DecimalStatus.syntax;
    }

    var havePeriod = false;
    var haveExponent = false;
    var haveSign = false;
    var haveDigits = false;

    var preDecLength = 0;
    var postDecLength = 0;
    var exponentLength = 0;
    var length = 0;

    for (var i = 0; i < this.length; i++) {
      final char = this[i];

      if (char == '.') {
        if (!haveDigits || havePeriod || haveExponent) {
          return DecimalStatus.syntax;
        }
        havePeriod = true;
        preDecLength = length;
        length = 0;
      } else if (char == '-' || char == '+') {
        if (haveDigits || haveSign) return DecimalStatus.syntax;
        haveSign = true;
      } else if (char == 'e' || char == 'E') {
        if (!haveDigits || haveExponent || !allowExponent) {
          return DecimalStatus.syntax;
        }
        haveExponent = true;
        haveSign = false;
        haveDigits = false;
        if (havePeriod) {
          postDecLength = length;
        } else {
          preDecLength = length;
        }
        length = 0;
      } else if (!RegExp(r'\d').hasMatch(char)) {
        return DecimalStatus.syntax;
      } else {
        haveDigits = true;
        length++;
      }
    }

    if (haveExponent && !haveDigits) return DecimalStatus.syntax;

    if (haveExponent) {
      exponentLength = length;
    } else if (havePeriod) {
      postDecLength = length;
    } else {
      preDecLength = length;
    }

    // Bounds checking
    if (exponentLength > 4) return DecimalStatus.range;
    if (preDecLength + postDecLength > 18) return DecimalStatus.range;

    return DecimalStatus.ok;
  }

  /// Returns `true` if the [String] represents a [PrimitiveType].
  bool get isFhirPrimitive => const {
        'base64binary',
        'fhirbase64binary',
        'fhir.base64binary',
        'bool',
        'boolean',
        'fhirboolean',
        'fhir.boolean',
        'canonical',
        'fhircanonical',
        'code',
        'fhircode',
        'fhir.code',
        'date',
        'fhirdate',
        'fhir.date',
        'datetime',
        'fhirdatetime',
        'fhir.datetime',
        'double',
        'decimal',
        'fhirdecimal',
        'fhir.decimal',
        'num',
        'id',
        'fhirid',
        'instant',
        'fhirinstant',
        'int',
        'integer',
        'fhirinteger',
        'fhir.integer',
        'integer64',
        'fhirinteger64',
        'markdown',
        'fhirmarkdown',
        'oid',
        'fhiroid',
        'positiveint',
        'fhirpositiveint',
        'string',
        'fhirstring',
        'fhir.string',
        'time',
        'fhirtime',
        'fhir.time',
        'unsignedint',
        'fhirunsignedint',
        'uri',
        'fhiruri',
        'fhir.uri',
        'url',
        'fhirurl',
        'uuid',
        'fhiruuid',
        'xhtml',
        'fhirxhtml',
        'http://hl7.org/fhirpath/system.string',
      }.contains(toLowerCase());

  /// Returns `true` if the [String] represents a [DataType].
  bool get isFhirDataType {
    return <String>{
      'address',
      'age',
      'annotation',
      'attachment',
      'codeableconcept',
      'codeablereference',
      'coding',
      'contactdetail',
      'contactpoint',
      'contributor',
      'count',
      'datarequirement',
      'distance',
      'duration',
      'fhirduration',
      'dosage',
      'elementdefinition',
      'expression',
      'extension',
      'fhirextension',
      'humanname',
      'identifier',
      'marketingstatus',
      'meta',
      'fhirmeta',
      'money',
      'narrative',
      'parameterdefinition',
      'period',
      'population',
      'prodcharacteristic',
      'productshelflife',
      'quantity',
      'range',
      'ratio',
      'ratiorange',
      'reference',
      'relatedartifact',
      'sampleddata',
      'signature',
      'timing',
      'triggerdefinition',
      'usagecontext',
    }.contains(toLowerCase());
  }

  /// Returns `true` if the [String] represents a [Quantity].
  bool get isFhirQuantity {
    return <String>{
      'age',
      'count',
      'distance',
      'duration',
      'fhirduration',
    }.contains(toLowerCase());
  }

  /// Returns `true` if the [String] represents a [BackboneType].
  bool get isFhirBackboneType {
    return <String>{
      'dosage',
      'elementdefinition',
      'marketingstatus',
      'population',
      'prodcharacteristic',
      'productshelflife',
      'timing',
    }.contains(toLowerCase());
  }

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirResourceType =>
      R4ResourceType.typesAsStrings.contains(this) ||
      toLowerCase().contains('tright') ||
      toLowerCase().contains('tleft');

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isBackboneElement => this == 'BackboneElement';
}

/// Status for the decimal
enum DecimalStatus {
  /// blank
  blank,

  /// syntax
  syntax,

  /// range
  range,

  /// ok
  ok,
}

/// Extensions for the [List<String?>] class
extension FhirPathStringsExtension on List<String?> {
  /// Returns the string with the path URL
  String pathURL() {
    final s = StringBuffer();
    var d = false;
    for (final arg in this) {
      if (arg != null) {
        if (!d) {
          d = !arg.noString();
        } else if (!s.toString().endsWith('/') && !arg.startsWith('/')) {
          s.write('/');
        }
        s.write(arg);
      }
    }
    return s.toString();
  }
}

/// Extensions on [String] to provide additional functionality.
extension ExtensionsForFhirString on FhirString {
  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirPrimitive => value?.isFhirPrimitive ?? false;

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirResourceType =>
      value != null &&
      (R4ResourceType.typesAsStrings.contains(value) ||
          value!.toLowerCase().contains('tright') ||
          value!.toLowerCase().contains('tleft'));

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isBackboneElement => value == 'BackboneElement';
}
