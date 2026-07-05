/// Engine-owned String helpers for the FHIRPath engine (lexer, expression
/// printing). These are faithful copies of the corresponding fhir_r4
/// `FhirStringExtension` members (themselves ports of Java
/// `org.hl7.fhir.utilities.Utilities`), duplicated here so the engine does
/// not depend on the FHIR model package for plain string handling.
///
/// NOT exported from the package umbrella on purpose: the fhir_r4 extension
/// declares the same member names on String, so exporting this one would
/// make every file that imports both packages ambiguous at the call sites.
/// Import this file directly where needed.
extension PathStringExtensions on String {
  /// Checks if the string is a digit
  bool get isDigit {
    final code = codeUnitAt(0);
    return code >= 48 && code <= 57; // 0-9
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

  /// Checks if the string is a single whitespace character
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

  /// Escapes the string for use inside a JSON string literal
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
              ((c == 0x20 || c == 0x09) && escapeUnicodeWhitespace)) {
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

  /// Removes the Byte Order Mark (BOM) from the string
  String stripBOM() {
    return replaceAll('\uFEFF', '');
  }

  /// Checks if the string is empty
  bool noString() {
    return isEmpty;
  }

  /// Checks if the string is a single uppercase letter
  bool isUpperCase() {
    return length == 1 && contains(RegExp(r'^[A-Z]$'));
  }

  /// Checks if the string is alphabetic
  bool isAlphabetic() {
    final code = codeUnitAt(0);
    return (code >= 65 && code <= 90) ||
        (code >= 97 && code <= 122); // A-Z, a-z
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

  /// Checks if the string starts with any entry of [list]
  bool startsWithInList(List<String?> list) {
    for (final l in list) {
      if (l != null && startsWith(l)) return true;
    }
    return false;
  }

  /// Checks if the string is an absolute URL
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

  /// Java-style regionMatches
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

  /// Java-style equalsIgnoreCase
  bool equalsIgnoreCase(String? anotherString) {
    return this == anotherString ||
        (anotherString != null &&
            anotherString.length == length &&
            regionMatches(true, 0, anotherString, 0, length));
  }

  /// Checks if the string exists in [list]
  bool existsInList(Set<String?> list) {
    return list.contains(this);
  }

  /// The tail of a canonical URL (the part after the last `/`), or '' when
  /// the URL carries a fragment
  String hashTail() {
    return contains('#') ? '' : substring(lastIndexOf('/') + 1);
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
    return status == PathDecimalStatus.ok || status == PathDecimalStatus.range;
  }

  /// Checks if the string is a valid decimal
  PathDecimalStatus checkDecimal({
    bool allowExponent = false,
    bool allowLeadingZero = false,
  }) {
    if (trim().isEmpty) {
      return PathDecimalStatus.blank;
    }

    // Check for leading zeros
    if (!allowLeadingZero) {
      if (startsWith('0') && this != '0' && !startsWith('0.')) {
        return PathDecimalStatus.syntax;
      }
      if (startsWith('-0') && this != '-0' && !startsWith('-0.')) {
        return PathDecimalStatus.syntax;
      }
      if (startsWith('+0') && this != '+0' && !startsWith('+0.')) {
        return PathDecimalStatus.syntax;
      }
    }

    // Check for trailing dot
    if (endsWith('.')) {
      return PathDecimalStatus.syntax;
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
          return PathDecimalStatus.syntax;
        }
        havePeriod = true;
        preDecLength = length;
        length = 0;
      } else if (char == '-' || char == '+') {
        if (haveDigits || haveSign) return PathDecimalStatus.syntax;
        haveSign = true;
      } else if (char == 'e' || char == 'E') {
        if (!haveDigits || haveExponent || !allowExponent) {
          return PathDecimalStatus.syntax;
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
        return PathDecimalStatus.syntax;
      } else {
        haveDigits = true;
        length++;
      }
    }

    if (haveExponent && !haveDigits) return PathDecimalStatus.syntax;

    if (haveExponent) {
      exponentLength = length;
    } else if (havePeriod) {
      postDecLength = length;
    } else {
      preDecLength = length;
    }

    // Bounds checking
    if (exponentLength > 4) return PathDecimalStatus.range;
    if (preDecLength + postDecLength > 18) return PathDecimalStatus.range;

    return PathDecimalStatus.ok;
  }
}

/// Validation status of a decimal string (faithful copy of fhir_r4's
/// `DecimalStatus`, renamed to avoid a name clash when both packages are
/// imported).
enum PathDecimalStatus {
  /// blank
  blank,

  /// syntax
  syntax,

  /// range
  range,

  /// ok
  ok,
}
