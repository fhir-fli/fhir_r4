/// Engine-owned String helpers for the FHIRPath engine. These are faithful
/// copies of the corresponding fhir_r4 `FhirStringExtension` members
/// (themselves ports of Java `org.hl7.fhir.utilities.Utilities`), duplicated
/// here so the engine does not depend on the FHIR model package for plain
/// string handling — including the lowBoundary/highBoundary and precision
/// string algorithms, which are FHIRPath function semantics.
///
/// NOT exported from the package umbrella on purpose: the fhir_r4 extension
/// declares the same member names on String, so exporting this one would
/// make every file that imports both packages ambiguous at the call sites.
/// Import this file directly where needed.
library;

/// Default low/high timezone bounds for the boundary functions (faithful
/// copies of fhir_r4's string_extensions constants).
const pathDefLowTimezone = '+14:00';
const pathDefHighTimezone = '-12:00';

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

  /// Changes the first character to uppercase
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

  /// Checks if the string starts with any of the strings in the list
  bool startsWithInList(List<String?> list) {
    for (final l in list) {
      if (l != null && startsWith(l)) return true;
    }
    return false;
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

  /// Returns true if the string matches another string ignoring case
  bool equalsIgnoreCase(String? anotherString) {
    return this == anotherString ||
        (anotherString != null &&
            anotherString.length == length &&
            regionMatches(true, 0, anotherString, 0, length));
  }

  /// Checks if the string is in the list
  bool existsInList(Set<String?> list) {
    return list.contains(this);
  }

  /// Returns the string, empty if it contains '#' or the substring
  /// after the last '/'
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

  /// Checks if the string is a valid date
  String lowBoundaryForDecimal(int precision) {
    var value = this;
    if (value.isEmpty) {
      throw Exception(
        'Unable to calculate lowBoundary for a null decimal string',
      );
    }
    final e =
        value.contains('e') ? value.substring(value.indexOf('e') + 1) : null;
    if (value.contains('e')) {
      value = value.substring(0, value.indexOf('e'));
    }
    if (value.isZero()) {
      return applyPrecision('-0.5000000000000000000000000', precision, true);
    } else if (value.startsWith('-')) {
      return '-${value.substring(1).highBoundaryForDecimal(precision)}'
          '${e ?? ''}';
    } else {
      if (value.contains('.')) {
        return applyPrecision(
              '${minusOne(value)}50000000000000000000000000000',
              precision,
              true,
            ) +
            (e ?? '');
      } else {
        return applyPrecision(
              '${minusOne(value)}.50000000000000000000000000000',
              precision,
              true,
            ) +
            (e ?? '');
      }
    }
  }

  /// Returns the upper boundary for a decimal
  String highBoundaryForDecimal(int precision) {
    var value = this;
    if (value.isEmpty) {
      throw Exception(
        'Unable to calculate highBoundary for a null decimal string',
      );
    }
    final e =
        value.contains('e') ? value.substring(value.indexOf('e') + 1) : null;
    if (value.contains('e')) {
      value = value.substring(0, value.indexOf('e'));
    }
    if (value.isZero()) {
      return applyPrecision(
            '0.50000000000000000000000000000',
            precision,
            false,
          ) +
          (e ?? '');
    } else if (value.startsWith('-')) {
      return '-${value.substring(1).lowBoundaryForDecimal(precision)}'
          '${e ?? ""}';
    } else {
      if (value.contains('.')) {
        return applyPrecision(
              '${value}50000000000000000000000000000',
              precision,
              false,
            ) +
            (e ?? '');
      } else {
        return applyPrecision(
              '$value.50000000000000000000000000000',
              precision,
              false,
            ) +
            (e ?? '');
      }
    }
  }

  /// Returns the decimal precision
  String lowBoundaryForDate(int precision) {
    final res = splitTimezone();
    final buffer = StringBuffer(res[0]);
    if (buffer.length == 4) buffer.write('-01');
    if (buffer.length == 7) buffer.write('-01');
    if (buffer.length == 10) buffer.write('T00:00');
    // An hour-only value (2014-01-01T08) never reaches the Java reference's
    // length chain: HAPI's DateTimeType parse normalises it to minute
    // precision (T08:00) first. Mirror that normalisation here (this is what
    // makes @2014-01-01T08.highBoundary(17) end 08:00:59.999, per the
    // official suite, rather than 08:59:59.999).
    if (buffer.length == 13) buffer.write(':00');
    if (buffer.length == 16) buffer.write(':00');
    if (buffer.length == 19) buffer.write('.000');

    final tz =
        (precision <= 10) ? '' : (res[1].isEmpty ? pathDefLowTimezone : res[1]);

    return buffer.toString().applyDatePrecision(precision) + tz;
  }

  /// Returns the precision for the date
  String highBoundaryForDate(int precision) {
    final res = splitTimezone();
    final buffer = StringBuffer(res[0]);

    if (buffer.length == 4) {
      buffer.write('-12');
    }
    if (buffer.length == 7) {
      final year = int.parse(buffer.toString().substring(0, 4));
      final month = int.parse(buffer.toString().substring(5, 7));
      buffer.write('-${dayCount(year, month)}');
    }
    if (buffer.length == 10) {
      buffer.write('T23:59');
    }
    // Hour-only normalisation — see lowBoundaryForDate.
    if (buffer.length == 13) {
      buffer.write(':00');
    }
    if (buffer.length == 16) {
      buffer.write(':59');
    }
    if (buffer.length == 19) {
      buffer.write('.999');
    }

    String timezone;
    if (precision <= 10) {
      timezone = '';
    } else {
      timezone = (res[1].isEmpty) ? pathDefHighTimezone : res[1];
    }

    return buffer.toString().applyDatePrecision(precision) + timezone;
  }

  /// Returns the decimal precision
  String lowBoundaryForTime(int precision) {
    final res = splitTimezone();
    final buffer = StringBuffer(res[0]);
    if (buffer.length == 2) buffer.write(':00');
    if (buffer.length == 5) buffer.write(':00');
    if (buffer.length == 8) buffer.write('.000');

    return buffer.toString().applyTimePrecision(precision) + res[1];
  }

  /// Returns the decimal precision
  String highBoundaryForTime(int precision) {
    final res = splitTimezone();
    final buffer = StringBuffer(res[0]);
    if (buffer.length == 2) buffer.write(':59');
    if (buffer.length == 5) buffer.write(':59');
    if (buffer.length == 8) buffer.write('.999');

    return buffer.toString().applyTimePrecision(precision) + res[1];
  }

  /// Returns the decimal precision
  int getDecimalPrecision() {
    var value = this;
    if (value.contains('e')) {
      value = value.substring(0, value.indexOf('e'));
    }
    if (value.contains('.')) {
      return value.split('.')[1].length;
    } else {
      return 0;
    }
  }

  /// Returns the precision for the date
  int getDatePrecision() {
    return splitTimezone()[0]
        .replaceAll('-', '')
        .replaceAll('T', '')
        .replaceAll(':', '')
        .replaceAll('.', '')
        .length;
  }

  /// Returns the precision for the time
  int getTimePrecision() {
    return splitTimezone()[0]
        .replaceAll('T', '')
        .replaceAll(':', '')
        .replaceAll('.', '')
        .length;
  }

  /// Checks if the string is an absolute URL, if not, returns the string
  String escapeXml() {
    if (isEmpty) {
      return '';
    }

    final buffer = StringBuffer();
    for (final char in split('')) {
      if (char == '<') {
        buffer.write('&lt;');
      } else if (char == '>') {
        buffer.write('&gt;');
      } else if (char == '&') {
        buffer.write('&amp;');
      } else if (char == '"') {
        buffer.write('&quot;');
      } else {
        buffer.write(char);
      }
    }
    return buffer.toString();
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

  /// Unescapes an XML string
  String? unescapeXml() {
    final buffer = StringBuffer();
    var i = 0;

    while (i < length) {
      if (this[i] == '&') {
        final entityBuffer = StringBuffer();
        i++;
        while (i < length && this[i] != ';') {
          entityBuffer.write(this[i]);
          i++;
        }
        final entity = entityBuffer.toString();
        if (entity == 'lt') {
          buffer.write('<');
        } else if (entity == 'gt') {
          buffer.write('>');
        } else if (entity == 'amp') {
          buffer.write('&');
        } else if (entity == 'quot') {
          buffer.write('"');
        } else if (entity == 'mu') {
          buffer.write(String.fromCharCode(956)); // Unicode for µ
        } else {
          throw Exception('Unknown XML entity "$entity"');
        }
      } else {
        buffer.write(this[i]);
      }
      i++;
    }

    return buffer.toString();
  }

  /// Applies the date precision
  String applyDatePrecision(int precision) {
    switch (precision) {
      case 4:
        return substring(0, 4);
      case 6:
      case 7:
        return substring(0, 7);
      case 8:
      case 10:
        return substring(0, 10);
      case 14:
        return substring(0, 17);
      case 17:
        return this;
      default:
        throw Exception(
          'Unsupported Date precision for boundary operation: $precision',
        );
    }
  }

  /// Applies the time precision
  String applyTimePrecision(int precision) {
    switch (precision) {
      case 2:
        return substring(0, 3);
      case 4:
        return substring(0, 6);
      case 6:
        return substring(0, 9);
      case 9:
        return this;
      default:
        throw Exception(
          'Unsupported Time precision for boundary operation: $precision',
        );
    }
  }

  String applyPrecision(String v, int p, bool down) {
    var nv = v;
    final dp = nv.indexOf('.');
    if (dp != -1) {
      nv = nv.substring(0, dp) + nv.substring(dp + 1);
    }

    String s;
    final d = p - v.getDecimalPrecision();
    if (d == 0) {
      s = nv;
    } else if (d > 0) {
      s = nv + List.filled(d, '0').join();
    } else {
      // NB: length of the ORIGINAL string (with its decimal point), per the
      // Java reference (Utilities.applyPrecision: `int l = v.length()`); the
      // dot is then compensated by the `ld--` below. Using the dot-stripped
      // length here double-counted the dot, truncating one digit too many
      // (1.587.lowBoundary(2) gave 1.5 instead of 1.58) and producing an
      // empty string at precision 0.
      final l = v.length;
      var ld = l + d;
      if (dp != -1) ld--;

      if (nv.codeUnitAt(ld) >= '5'.codeUnitAt(0) && !down) {
        s = nv.substring(0, ld - 1) +
            String.fromCharCode(nv.codeUnitAt(ld - 1) + 1);
      } else {
        s = nv.substring(0, ld);
      }
    }

    if (s.endsWith('.')) {
      s = s.substring(0, s.length - 1);
    }

    return dp == -1 || dp >= s.length
        ? s
        : '${s.substring(0, dp)}.${s.substring(dp)}';
  }

  /// Subtracts one from the string
  String minusOne(String value) {
    final chars = value.split('');
    for (var i = chars.length - 1; i >= 0; i--) {
      if (chars[i] == '0') {
        chars[i] = '9';
      } else if (chars[i] != '.') {
        chars[i] = String.fromCharCode(chars[i].codeUnitAt(0) - 1);
        break;
      }
    }
    return chars.join();
  }

  /// Returns the number of days in a month
  String dayCount(int year, int month) {
    switch (month) {
      case 1:
        return '31';
      case 2:
        return (year % 4 == 0 && (year % 400 == 0 || year % 100 != 0))
            ? '29'
            : '28';
      case 3:
        return '31';
      case 4:
        return '30';
      case 5:
        return '31';
      case 6:
        return '30';
      case 7:
        return '31';
      case 8:
        return '31';
      case 9:
        return '30';
      case 10:
        return '31';
      case 11:
        return '30';
      case 12:
        return '31';
      default:
        return '30'; // Default case to handle invalid month values
    }
  }

  /// Checks if the string is a valid date
  bool isZero() {
    return replaceAll('.', '').replaceAll('-', '').replaceAll('0', '').isEmpty;
  }

  /// Splits the timezone
  List<String> splitTimezone() {
    final res = <String>['', ''];

    if (contains('+')) {
      res[0] = substring(0, indexOf('+'));
      res[1] = substring(indexOf('+'));
    } else if (contains('-') &&
        contains('T') &&
        lastIndexOf('-') > indexOf('T')) {
      res[0] = substring(0, lastIndexOf('-'));
      res[1] = substring(lastIndexOf('-'));
    } else if (contains('Z')) {
      res[0] = substring(0, indexOf('Z'));
      res[1] = substring(indexOf('Z'));
    } else {
      res[0] = this;
      res[1] = '';
    }
    return res;
  }

}

/// Validation status of a decimal string (faithful copy of fhir_r4's
/// `PathDecimalStatus`, renamed to avoid a name clash when both packages are
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
