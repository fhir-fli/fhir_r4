// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'java.dart';

class FHIRLexer {
  FHIRLexer(String source, String? name)
      : source = FhirPathUtilities.stripBOM(source)!,
        name = name ?? '??' {
    currentLocation = SourceLocation(1, 1);
    next();
  }

  FHIRLexer.withCursor(String source, int i)
      : source = FhirPathUtilities.stripBOM(source)!,
        cursor = i,
        name = '??' {
    currentLocation = SourceLocation(1, 1);
    next();
  }

  FHIRLexer.withCursorAndQuotes(
    String source,
    this.cursor,
    this.allowDoubleQuotes,
  )   : source = FhirPathUtilities.stripBOM(source)!,
        name = '??' {
    currentLocation = SourceLocation(1, 1);
    next();
  }

  FHIRLexer.full(
    String source,
    String? name,
    this.metadataFormat,
    this.allowDoubleQuotes,
  )   : source = FhirPathUtilities.stripBOM(source)!,
        name = name ?? '??' {
    currentLocation = SourceLocation(1, 1);
    next();
  }

  String source;
  int cursor = 0;
  int currentStart = 0;
  String? current;
  List<String> comments = [];
  late SourceLocation currentLocation;
  late SourceLocation currentStartLocation;
  int id = 0;
  String name;
  bool liquidMode = false;
  SourceLocation? commentLocation;
  bool metadataFormat = false;
  bool allowDoubleQuotes = false;

  String? getCurrent() => current;
  SourceLocation getCurrentLocation() => currentLocation;

  bool isConstant() => FHIRPathConstant.isFHIRPathConstant(current!);

  bool isFixedName() => FHIRPathConstant.isFHIRPathFixedName(current!);

  bool isStringConstant() => FHIRPathConstant.isFHIRPathStringConstant(
        current!,
      );

  String take() {
    final s = current!;
    next();
    return s;
  }

  int takeInt() {
    final s = current!;
    if (!FhirPathUtilities.isInteger(s)) {
      throw error(r'Found $current expecting an integer');
    }
    next();
    return int.parse(s);
  }

  bool isToken() {
    if (FhirPathUtilities.noString(current)) return false;

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
      'Error @${location ?? currentLocation.toString()}: $msg',
      loc ?? currentLocation,
    );
  }

  void next() {
    skipWhitespaceAndComments();
    current = null;
    currentStart = cursor;
    currentStartLocation = currentLocation;
    if (cursor < source.length) {
      final ch = source[cursor];
      if (['!', '>', '<', ':', '-', '='].contains(ch)) {
        cursor++;
        if (cursor < source.length &&
                ['=', '~', '-'].contains(source[cursor]) ||
            (ch == '-' && source[cursor] == '>')) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch == '.') {
        cursor++;
        if (cursor < source.length && source[cursor] == '.') {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else if (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) {
        // '0'-'9'
        cursor++;
        var dotted = false;
        while (cursor < source.length &&
            ((source[cursor].codeUnitAt(0) >= 48 &&
                    source[cursor].codeUnitAt(0) <= 57) ||
                (source[cursor] == '.' && !dotted))) {
          if (source[cursor] == '.') dotted = true;
          cursor++;
        }
        if (source[cursor - 1] == '.') cursor--;
        current = source.substring(currentStart, cursor);
      } else if ((ch.codeUnitAt(0) >= 97 &&
              ch.codeUnitAt(0) <= 122) || // 'a'-'z'
          (ch.codeUnitAt(0) >= 65 && ch.codeUnitAt(0) <= 90)) {
        // 'A'-'Z'
        while (cursor < source.length &&
            ((source[cursor].codeUnitAt(0) >= 65 &&
                    source[cursor].codeUnitAt(0) <= 90) ||
                (source[cursor].codeUnitAt(0) >= 97 &&
                    source[cursor].codeUnitAt(0) <= 122) ||
                (source[cursor].codeUnitAt(0) >= 48 &&
                    source[cursor].codeUnitAt(0) <= 57) ||
                source[cursor] == '_')) {
          cursor++;
        }
        current = source.substring(currentStart, cursor);
      } else {
        // Handle other character cases here similar to the Java code.
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
        commentLocation ??= currentLocation.copy();
        final start = cursor + 2;
        while (cursor < source.length &&
            !(source[cursor] == '\r' || source[cursor] == '\n')) {
          cursor++;
        }
        comments.add(source.substring(start, cursor).trim());
      } else if (FhirPathUtilities.isWhitespace(source[cursor])) {
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
        source.substring(cursor, cursor + 3) == '///';
  }

  bool isOp() {
    return FpOperation.fromCode(current!) != null;
  }

  bool done() {
    return currentStart >= source.length;
  }

  int nextId() => ++id;

  SourceLocation getCurrentStartLocation() => currentStartLocation;

  bool hasComments() => comments.isNotEmpty;

  List<String> getComments() => comments;

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
              'Unknown FHIRPath character escape \\${s[i]}',
              currentLocation,
            );
        }
      } else {
        b.write(ch);
      }
      i++;
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
              'Unknown FHIRPath character escape \\${s[i]}',
              currentLocation,
            );
        }
      } else {
        b.write(ch);
      }
      i++;
    }
    return b.toString();
  }

  void skipToken(String token) {
    if (getCurrent() == token) next();
  }

  String takeDottedToken() {
    final b = StringBuffer()..write(take());
    while (!done() && getCurrent() == '.') {
      b
        ..write(take())
        ..write(take());
    }
    return b.toString();
  }

  int getCurrentStart() => currentStart;

  String getSource() => source;

  bool isLiquidMode() => liquidMode;

  SourceLocation? getCommentLocation() => commentLocation;

  bool isMetadataFormat() => metadataFormat;

  List<String> cloneComments() {
    return List.from(getComments());
  }

  String? tokenWithTrailingComment(String token) {
    final line = getCurrentLocation().line;
    this.token(token);
    if (getComments().isNotEmpty && getCommentLocation()!.line == line) {
      return getFirstComment();
    }
    return null;
  }

  bool isAllowDoubleQuotes() => allowDoubleQuotes;
}
