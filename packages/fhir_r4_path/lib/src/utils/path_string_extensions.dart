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
}
