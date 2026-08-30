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
List<String> splitEscaped(String value, String separator) {
  final parts = <String>[];
  final current = StringBuffer();
  var index = 0;
  while (index < value.length) {
    final char = value[index];
    if (char == r'\' && index + 1 < value.length) {
      // The backslash is consumed and whatever follows is data, whatever it
      // is. `\\` yields one backslash; `\,` yields a comma that does not split.
      current.write(value[index + 1]);
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
    if (char == r'\' && index + 1 < value.length) {
      buffer.write(value[index + 1]);
      index += 2;
      continue;
    }
    buffer.write(char);
    index++;
  }
  return buffer.toString();
}
