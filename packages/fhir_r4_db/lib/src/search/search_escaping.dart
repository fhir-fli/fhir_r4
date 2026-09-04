/// FHIR's own escaping layer for search values.
///
/// R4 3.1.1.4.19: `$`, `,` and `|` are separator characters, so a literal one
/// inside a value is prefixed with a backslash, and a literal backslash is
/// doubled. This sits on top of URL percent-encoding and is applied after the
/// server has percent-decoded the parameter.
///
/// The spec's own example: `code=a,b` asks for either code `a` or code `b`,
/// while `code=a\,b` asks for the single code `a,b`. Splitting raw does not
/// merely miss the record, it returns the WRONG ones, which is worse.
library;

/// Splits [value] on [separator], treating a backslash as an escape.
///
/// Only the escape of THIS separator is consumed; every other escape
/// (`\|`, `\$`, `\\`, and `\,` when splitting on `|`) is carried through
/// unchanged for the next level, and [unescapeValue] removes the rest at
/// the end. Consuming every escape at the first split — which this used to
/// do — turned `code=a\|b` into `a|b` before the `|` split, which then read
/// it as system `a`, code `b`: R4B 3.1.1.4.19 says it is the single code
/// `a|b`.
List<String> splitEscaped(String value, String separator) {
  final parts = <String>[];
  final current = StringBuffer();
  var index = 0;
  while (index < value.length) {
    final char = value[index];
    if (char == r'\' && index + 1 < value.length) {
      final next = value[index + 1];
      if (next == separator) {
        current.write(next);
      } else {
        current
          ..write(char)
          ..write(next);
      }
      index += 2;
      continue;
    }
    if (char == separator) {
      parts.add(current.toString());
      current.clear();
      index++;
      continue;
    }
    current.write(char);
    index++;
  }
  parts.add(current.toString());
  return parts;
}

/// Strips the escaping from a value that is compared whole rather than split.
///
/// Without this a value keeps its backslashes all the way into the comparison,
/// so a name containing an escaped comma would never match the stored text.
String unescapeValue(String value) {
  final buffer = StringBuffer();
  var index = 0;
  while (index < value.length) {
    final char = value[index];
    if (char == r'\') {
      // R4B 3.1.1.4.19: `$`, `,`, `|` and `\` itself are the characters a
      // backslash may escape; "The parameter value xx\xx is illegal". A
      // backslash before anything else, or at the end, is a malformed
      // value, and the caller reports it as one.
      final next = index + 1 < value.length ? value[index + 1] : null;
      if (next == null || !r'$,|\'.contains(next)) {
        throw FormatException(
          r'A backslash may only escape $, comma, | or another backslash',
          value,
          index,
        );
      }
      buffer.write(next);
      index += 2;
      continue;
    }
    buffer.write(char);
    index++;
  }
  return buffer.toString();
}
