// ignore_for_file: public_member_api_docs, avoid_positional_bool_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

class FHIRLexer {
  FHIRLexer({
    String? source,
    String? name,
    this.cursor = 0,
    this.metadataFormat = false,
    this.allowDoubleQuotes = false,
  })  : source = source == null ? '' : source.stripBOM(),
        name = name ?? '??' {
    currentLocation = SourceLocation(1, 1);
    next();
  }

  FHIRLexer.fromPosition(String source, int cursor)
      : this(source: source, cursor: cursor);

  // ignore: avoid_positional_boolean_parameters
  FHIRLexer.withDoubleQuotes(String source, int cursor, bool allowDoubleQuotes)
      : this(
          source: source,
          cursor: cursor,
          allowDoubleQuotes: allowDoubleQuotes,
        );

  String source;
  int cursor;
  int currentStart = 0;
  String? current;
  List<String> comments = [];
  late SourceLocation currentLocation;
  late SourceLocation currentStartLocation;
  int id = 0;
  String name;
  bool liquidMode = false;
  SourceLocation? commentLocation;
  bool metadataFormat;
  bool allowDoubleQuotes;

  bool isConstant() => FHIRPathConstant.isFHIRPathConstant(current!);

  bool isFixedName() => FHIRPathConstant.isFHIRPathFixedName(current!);

  bool isStringConstant() => FHIRPathConstant.isFHIRPathStringConstant(
        current!,
      );

  String take() {
    if (current == null) {
      throw error('No current token');
    }
    final s = current!;
    next();
    return s;
  }

  int takeInt() {
    final s = current!;
    if (!s.isInteger) {
      throw error(r'Found $current expecting an integer');
    }
    next();
    return int.parse(s);
  }

  bool isToken() {
    if (current?.noString() ?? true) return false;

    if (current!.startsWith(r'$')) return true;

    if (current == '*' || current == '**') return true;

    if ((current!.codeUnitAt(0) >= 65 && current!.codeUnitAt(0) <= 90) ||
        (current!.codeUnitAt(0) >= 97 && current!.codeUnitAt(0) <= 122)) {
      for (var i = 1; i < current!.length; i++) {
        if (!((current![i].codeUnitAt(0) >= 65 &&
                current![i].codeUnitAt(0) <= 90) ||
            (current![i].codeUnitAt(0) >= 97 &&
                current![i].codeUnitAt(0) <= 122) ||
            (current![i].codeUnitAt(0) >= 48 &&
                current![i].codeUnitAt(0) <= 57))) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  FHIRLexerException error(
    String msg, [
    String? location,
    SourceLocation? loc,
  ]) {
    return FHIRLexerException(
      message: 'Error @${location ?? currentLocation.toString()}: $msg',
      location: loc ?? currentLocation,
    );
  }

  void next() {
    // Debugging: Start of next() function

    skipWhitespaceAndComments();

    current = null;
    currentStart = cursor;
    currentStartLocation = currentLocation;

    if (cursor < source.length) {
      var ch = source[cursor];

      if (['!', '>', '<', ':', '=', '-'].contains(ch)) {
        cursor++;
        if (cursor < source.length &&
            (['=', '~', '-'].contains(source[cursor]) ||
                (ch == '-' && source[cursor] == '>'))) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '.') {
        cursor++;
        if (cursor < source.length && source[cursor] == '.') {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch.codeUnitAt(0).between_0_9) {
        cursor++;
        var dotted = false;
        while (cursor < source.length &&
            (source[cursor].codeUnitAt(0).between_0_9 ||
                (source[cursor] == '.') && !dotted)) {
          if (source[cursor] == '.') {
            dotted = true;
          }
          cursor++;
        }
        if (source[cursor - 1] == '.') {
          cursor--;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch.codeUnitAt(0).between_a_z || ch.codeUnitAt(0).between_A_Z) {
        while (cursor < source.length &&
            (source[cursor].codeUnitAt(0).between_A_Z ||
                source[cursor].codeUnitAt(0).between_a_z ||
                source[cursor].codeUnitAt(0).between_0_9 ||
                source[cursor] == '_')) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '%') {
        cursor++;
        if (cursor < source.length && (source[cursor] == '`')) {
          cursor++;
          while (cursor < source.length && (source[cursor] != '`')) {
            cursor++;
          }
          cursor++;
        } else {
          while (cursor < source.length &&
              (source[cursor].codeUnitAt(0).between_A_Z ||
                  source[cursor].codeUnitAt(0).between_a_z ||
                  source[cursor].codeUnitAt(0).between_0_9 ||
                  source[cursor] == ':' ||
                  source[cursor] == '-' ||
                  source[cursor] == '_')) {
            cursor++;
          }
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '/') {
        cursor++;
        if (cursor < source.length && (source[cursor] == '/')) {
          cursor += 2;
          current = source.substring(currentStart, cursor);
        } else {
          current = source.substring(currentStart, cursor);
        }
      } else if (ch == r'$') {
        cursor++;
        while (cursor < source.length &&
            source[cursor].codeUnitAt(0).between_a_z) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '{') {
        cursor++;
        ch = source[cursor];
        if (ch == '}') {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '"' && allowDoubleQuotes) {
        cursor++;
        var escape = false;
        while (cursor < source.length && (escape || source[cursor] != '"')) {
          if (escape) {
            escape = false;
          } else {
            escape = (source[cursor] == r'\');
          }
          cursor++;
        }
        if (cursor == source.length) throw error('Unterminated string');
        cursor++;
        current = '"${source.substring(currentStart + 1, cursor - 1)}"';
      } else if (ch == '`') {
        cursor++;
        var escape = false;
        while (cursor < source.length && (escape || source[cursor] != '`')) {
          if (escape) {
            escape = false;
          } else {
            escape = (source[cursor] == r'\');
          }
          cursor++;
        }
        if (cursor == source.length) throw error('Unterminated string');
        cursor++;
        current = '`${source.substring(currentStart + 1, cursor - 1)}`';
      } else if (ch == "'") {
        cursor++;
        final ech = ch;
        var escape = false;
        while (cursor < source.length && (escape || source[cursor] != ech)) {
          if (escape) {
            escape = false;
          } else {
            escape = (source[cursor] == r'\');
          }
          cursor++;
        }
        if (cursor == source.length) throw error('Unterminated string');
        cursor++;
        current = source.substring(currentStart, cursor);
        if (ech == "'") {
          current = "'${current!.substring(1, current!.length - 1)}'";
        }
      } else if (ch == '|' && liquidMode) {
        cursor++;
        ch = source[cursor];
        if (ch == '|') cursor++;
        current = source.substring(currentStart, cursor);
      } else if (ch == '@') {
        final start = cursor;
        cursor++;
        while (cursor < source.length && isDateChar(source[cursor], start)) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else {
        cursor++;
        current = source.substring(currentStart, cursor);
      }
    }
  }

  void skipWhitespaceAndComments() {
    comments.clear();
    commentLocation = null;
    var last13 = false;
    var done = false;

    while (cursor < source.length && !done) {
      if (cursor < source.length - 1 &&
          source.substring(cursor, cursor + 2) == '//' &&
          !isMetadataStart()) {
        // Single-line comment
        commentLocation ??= currentLocation.copy();
        final start = cursor + 2;
        while (cursor < source.length &&
            !(source[cursor] == '\r' || source[cursor] == '\n')) {
          cursor++;
        }
        comments.add(source.substring(start, cursor).trim());
      } else if (cursor < source.length - 1 &&
          source.substring(cursor, cursor + 2) == '/*') {
        // Multi-line comment
        commentLocation ??= currentLocation.copy();
        final start = cursor + 2;
        while (cursor < source.length - 1 &&
            source.substring(cursor, cursor + 2) != '*/') {
          last13 = currentLocation.checkChar(source[cursor], last13);
          cursor++;
        }
        if (cursor >= source.length - 1) {
          throw error('Unfinished comment');
        } else {
          comments.add(source.substring(start, cursor).trim());
          cursor += 2;
        }
      } else if (isWhitespace(source[cursor])) {
        // Whitespace handling
        last13 = currentLocation.checkChar(source[cursor], last13);
        cursor++;
      } else {
        done = true;
      }
    }
  }

  bool isMetadataStart() {
    return metadataFormat &&
        cursor < source.length - 2 &&
        '///' == source.substring(cursor, cursor + 3);
  }

  bool isDateChar(String ch, int start) {
    final eot = source[start + 1] == 'T' ? 10 : 20;

    return ch == '-' ||
        ch == ':' ||
        ch == 'T' ||
        ch == '+' ||
        ch == 'Z' ||
        ch.isDigit ||
        (cursor - start == eot &&
            ch == '.' &&
            cursor < source.length - 1 &&
            source[cursor + 1].isDigit);
  }

  bool isOp() {
    final isOperation = FpOperation.fromCode(current) != null;
    return isOperation;
  }

  bool done() {
    final isDone = currentStart >= source.length;

    return isDone;
  }

  int nextId() => ++id;

  bool hasComments() => comments.isNotEmpty;

  String getAllComments() {
    final b = StringBuffer();
    comments
      ..forEach(b.writeln)
      ..clear();
    return b.toString();
  }

  String? getFirstComment() {
    if (hasComments()) {
      final s = comments.removeAt(0);
      return s;
    }
    return null;
  }

  bool hasToken(String kw) {
    return !done() && kw == current;
  }

  bool hasTokenList(List<String> names) {
    if (done()) return false;
    for (final s in names) {
      if (s == current) return true;
    }
    return false;
  }

  void token(String kw) {
    if (kw != current) {
      throw error('Found "$current" expecting "$kw"');
    }
    next();
  }

  String readConstant(String desc) {
    if (!isStringConstant()) {
      throw error('Found $current expecting "[$desc]"');
    }
    return processConstant(take());
  }

  String readFixedName(String desc) {
    if (!isFixedName()) {
      throw error('Found $current expecting "[$desc]"');
    }
    return processFixedName(take());
  }

  String processConstant(String s) {
    final b = StringBuffer();
    var i = 1;
    while (i < s.length - 1) {
      final ch = s[i];
      if (ch == r'\') {
        i++;
        switch (s[i]) {
          case 't':
            b.write('\t');
          case 'r':
            b.write('\r');
          case 'n':
            b.write('\n');
          case 'f':
            b.write('\f');
          case "'":
            b.write("'");
          case '"':
            b.write('"');
          case '`':
            b.write('`');
          case r'\':
            b.write(r'\');
          case '/':
            b.write('/');
          case 'u':
            i++;
            final uc = int.parse(s.substring(i, i + 4), radix: 16);
            b.write(String.fromCharCode(uc));
            i += 4;
          default:
            throw FHIRLexerException(
              message: 'Unknown FHIRPath character escape \\${s[i]}',
              location: currentLocation,
            );
        }
      } else {
        b.write(ch);
        i++;
      }
    }
    return b.toString();
  }

  String processFixedName(String s) {
    final b = StringBuffer();
    var i = 1;
    while (i < s.length - 1) {
      final ch = s[i];
      if (ch == r'\') {
        i++;
        switch (s[i]) {
          case 't':
            b.write('\t');
          case 'r':
            b.write('\r');
          case 'n':
            b.write('\n');
          case 'f':
            b.write('\f');
          case "'":
            b.write("'");
          case '"':
            b.write('"');
          case r'\':
            b.write(r'\');
          case '/':
            b.write('/');
          case 'u':
            i++;
            final uc = int.parse(s.substring(i, i + 4), radix: 32);
            b.write(String.fromCharCode(uc));
            i += 4;
          default:
            throw FHIRLexerException(
              message: 'Unknown FHIRPath character escape \\${s[i]}',
              location: currentLocation,
            );
        }
      } else {
        b.write(ch);
        i++;
      }
    }
    return b.toString();
  }

  void skipToken(String token) {
    if (current == token) next();
  }

  String takeDottedToken() {
    final b = StringBuffer()..write(take());
    while (!done() && current == '.') {
      b
        ..write(take())
        ..write(take());
    }
    return b.toString();
  }

  List<String> cloneComments() {
    return List.from(comments);
  }

  String? tokenWithTrailingComment(String token) {
    final line = currentLocation.line;
    this.token(token);
    if (comments.isNotEmpty && commentLocation!.line == line) {
      return getFirstComment();
    }
    return null;
  }
}
