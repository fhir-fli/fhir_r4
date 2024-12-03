// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

class FhirPathUtilities {
  static bool isWhitespace(dynamic value) {
    if (value is String) {
      return isWhitespaceString(value);
    } else if (value is int) {
      return isWhitespaceInt(value);
    } else {
      return false;
    }
  }

  static bool isWhitespaceInt(int codeUnit) {
    return codeUnit == 0x20 ||
        codeUnit == 0x09 ||
        codeUnit == 0x0A ||
        codeUnit == 0x0D;
  }

  static bool isWhitespaceString(String ch) {
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
    ].contains(ch);
  }

  static bool isInteger(String string) {
    if (string.trim().isEmpty) {
      return false;
    }

    final value = string.startsWith('-') ? string.substring(1) : string;
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

    if (string.startsWith('-')) {
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

  static String? stripBOM(String? string) {
    return string?.replaceAll('\uFEFF', '');
  }

  static bool noString(String? v) {
    return v == null || v.isEmpty;
  }

  static String? capitalize(String? s) {
    if (s == null) return null;
    if (s.isEmpty) return s;
    if (s.length == 1) return s.toUpperCase();

    return s.substring(0, 1).toUpperCase() + s.substring(1);
  }

  static String? unescapeJson(String? json) {
    if (json == null) {
      return null;
    }
    final b = StringBuffer();
    var i = 0;
    while (i < json.length) {
      if (json[i] == r'\') {
        i++;
        final ch = json[i];
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
            final hex = json.substring(i + 1, i + 5);
            b.write(String.fromCharCode(int.parse(hex, radix: 16)));
            i += 4;
          default:
            throw Exception('Unknown JSON escape \\$ch');
        }
      } else {
        b.write(json[i]);
      }
      i++;
    }
    return b.toString();
  }

  static String escapeJson(
    String? value, [
    bool escapeUnicodeWhitespace = true,
  ]) {
    if (value == null) {
      return '';
    }

    final b = StringBuffer();
    for (final c in value.runes) {
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
              (isWhitespace(c) && escapeUnicodeWhitespace)) {
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
}
