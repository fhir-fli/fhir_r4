// import 'package:fhir_mapping/fhir_mapping.dart';

// class FHIRLexer {
//   FHIRLexer(this.source, [this.name = '??']) {
//     currentLocation = SourceLocation(1, 1);
//     next();
//   }

//   final String source;
//   int cursor = 0;
//   int currentStart = 0;
//   String? current;
//   List<String> comments = [];
//   late SourceLocation currentLocation;
//   late SourceLocation currentStartLocation;
//   int id = 0;
//   final String name;

//   String getCurrent() => current ?? '';

//   SourceLocation getCurrentLocation() => currentLocation;

//   SourceLocation getCurrentStartLocation() => currentStartLocation;

//   int getCurrentStart() => currentStart;

//   String getSource() => source;

//   int nextId() {
//     id++;
//     return id;
//   }

//   bool isConstant() {
//     return current != null &&
//         (current!.startsWith("'") ||
//             current!.startsWith('"') ||
//             current!.startsWith('@') ||
//             current!.startsWith('%') ||
//             current!.startsWith('-') ||
//             current!.startsWith('+') ||
//             RegExp('^[0-9]').hasMatch(current!) ||
//             current == 'true' ||
//             current == 'false' ||
//             current == '{}');
//   }

//   bool isStringConstant() {
//     return current != null &&
//         (current!.startsWith("'") ||
//             current!.startsWith('"') ||
//             current!.startsWith('`'));
//   }

//   bool isFixedName() => current != null && current!.startsWith('`');

//   bool isToken() {
//     if (current == null || current!.isEmpty) return false;

//     if (current!.startsWith(r'\\$')) return true;

//     if (current == '*' || current == '**') return true;

//     final firstChar = current![0];
//     if (_isLetter(firstChar)) {
//       for (var i = 1; i < current!.length; i++) {
//         final ch = current![i];
//         if (!(_isLetter(ch) || _isDigit(ch))) {
//           return false;
//         }
//       }
//       return true;
//     }
//     return false;
//   }

//   bool isOp() {
//     return Operation.fromCode(current) != null;
//   }

//   String take() {
//     final s = current!;
//     next();
//     return s;
//   }

//   int takeInt() {
//     final s = current!;
//     final result = int.tryParse(s);
//     if (result == null) {
//       throw error('Found "\$current" expecting an integer');
//     }
//     next();
//     return result;
//   }

//   FHIRLexerException error(String msg, [String? location]) {
//     return FHIRLexerException(
//       'Error in \$name at \${location ?? currentLocation.toString()}: \$msg',
//     );
//   }

//   void next() {
//     _skipWhitespaceAndComments();
//     current = null;
//     currentStart = cursor;
//     currentStartLocation = currentLocation.copy();

//     if (cursor < source.length) {
//       final ch = source[cursor];
//       if ('!><:-='.contains(ch)) {
//         cursor++;
//         if (cursor < source.length &&
//             ('=~-'.contains(source[cursor]) ||
//                 (ch == '-' && source[cursor] == '>'))) {
//           cursor++;
//         }
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '.') {
//         cursor++;
//         if (cursor < source.length && source[cursor] == '.') cursor++;
//         current = source.substring(currentStart, cursor);
//       } else if (ch.isDigit) {
//         cursor++;
//         var dotted = false;
//         while (cursor < source.length &&
//             (source[cursor].isDigit || (source[cursor] == '.' && !dotted))) {
//           if (source[cursor] == '.') dotted = true;
//           cursor++;
//         }
//         if (cursor > currentStart + 1 && source[cursor - 1] == '.') cursor--;
//         current = source.substring(currentStart, cursor);
//       } else if (ch.isLetter) {
//         // Recognize entire FHIRPath chains, like src.title.exists().not()
//         while (cursor < source.length &&
//             (source[cursor].isLetter ||
//                 source[cursor].isDigit ||
//                 source[cursor] == '_' ||
//                 source[cursor] == '.' ||
//                 source[cursor] == '(' ||
//                 source[cursor] == ')' ||
//                 source[cursor] == '!' ||
//                 source[cursor] == '<' ||
//                 source[cursor] == '>' ||
//                 source[cursor] == '=')) {
//           cursor++;
//         }
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '%') {
//         cursor++;
//         if (cursor < source.length && source[cursor] == '`') {
//           cursor++;
//           while (cursor < source.length && source[cursor] != '`') {
//             cursor++;
//           }
//           cursor++;
//         } else {
//           while (cursor < source.length &&
//               (source[cursor].isLetter ||
//                   source[cursor].isDigit ||
//                   source[cursor] == ':' ||
//                   source[cursor] == '-')) {
//             cursor++;
//           }
//         }
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '/') {
//         cursor++;
//         if (cursor < source.length && source[cursor] == '/') {
//           throw error("This shouldn't happen?");
//         }
//         current = source.substring(currentStart, cursor);
//       } else if (ch == r'\\$') {
//         cursor++;
//         while (cursor < source.length && source[cursor].isLetter) {
//           cursor++;
//         }
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '{') {
//         cursor++;
//         if (cursor < source.length && source[cursor] == '}') cursor++;
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '"') {
//         cursor++;
//         var escape = false;
//         while (cursor < source.length && (escape || source[cursor] != '"')) {
//           if (escape) {
//             escape = false;
//           } else {
//             escape = source[cursor] == r'\';
//           }
//           cursor++;
//         }
//         if (cursor == source.length) {
//           throw error('Unterminated string');
//         }
//         cursor++;
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '`') {
//         cursor++;
//         var escape = false;
//         while (cursor < source.length && (escape || source[cursor] != '`')) {
//           if (escape) {
//             escape = false;
//           } else {
//             escape = source[cursor] == r'\';
//           }
//           cursor++;
//         }
//         if (cursor == source.length) {
//           throw error('Unterminated string');
//         }
//         cursor++;
//         current = source.substring(currentStart, cursor);
//       } else if (ch == "'") {
//         cursor++;
//         var escape = false;
//         while (cursor < source.length && (escape || source[cursor] != "'")) {
//           if (escape) {
//             escape = false;
//           } else {
//             escape = source[cursor] == r'\';
//           }
//           cursor++;
//         }
//         if (cursor == source.length) {
//           throw error('Unterminated string');
//         }
//         cursor++;
//         current = source.substring(currentStart, cursor);
//       } else if (ch == '@') {
//         final start = cursor;
//         cursor++;
//         while (cursor < source.length && _isDateChar(source[cursor], start))
//         {
//           cursor++;
//         }
//         current = source.substring(currentStart, cursor);
//       } else {
//         cursor++;
//         current = source.substring(currentStart, cursor);
//       }
//     }
//   }

//   void _skipWhitespaceAndComments() {
//     bool done = false;

//     while (cursor < source.length && !done) {
//       if (source.startsWith('///', cursor)) {
//         cursor += 3;
//         final start = cursor;
//         while (cursor < source.length &&
//             source[cursor] != '\n' &&
//             source[cursor] != '\r') {
//           cursor++;
//         }
//         comments.add(source.substring(start, cursor).trim());
//         print("Captured '///' comment: \${comments.last}");
//       } else if (source.startsWith('//', cursor)) {
//         cursor += 2;
//         final start = cursor;
//         while (cursor < source.length &&
//             source[cursor] != '\n' &&
//             source[cursor] != '\r') {
//           cursor++;
//         }
//         comments.add(source.substring(start, cursor).trim());
//         print("Captured '//' comment: \${comments.last}");
//       } else if (source.startsWith('/*', cursor)) {
//         final start = cursor + 2;
//         cursor += 2;
//         while (cursor < source.length - 1 && !source.startsWith('*/', cursor)) {
//           cursor++;
//         }
//         comments.add(source.substring(start, cursor).trim());
//         cursor += 2; // Skip past '*/'
//         print("Captured '/* ... */' comment: \${comments.last}");
//       } else if (_isWhitespace(source[cursor])) {
//         cursor++;
//       } else {
//         done = true;
//       }
//     }
//   }

//   bool _isDateChar(String ch, int start) {
//     final eot = source[start + 1] == 'T' ? 10 : 20;
//     return '-:T+Z'.contains(ch) ||
//         _isDigit(ch) ||
//         (cursor - start == eot &&
//             ch == '.' &&
//             cursor < source.length - 1 &&
//             _isDigit(source[cursor + 1]));
//   }

//   bool done() {
//     return currentStart >= source.length;
//   }

//   bool hasComments() {
//     return comments.isNotEmpty;
//   }

//   List<String> getComments() => comments;

//   String getAllComments() {
//     final allComments = comments.join('\n');
//     comments.clear(); // Clear comments only after they're retrieved
//     print("Captured comments: \$allComments");
//     return allComments;
//   }

//   String? getFirstComment() {
//     if (hasComments()) {
//       final s = comments.first;
//       comments.removeAt(0);
//       return s;
//     }
//     return null;
//   }

//   bool hasToken(String kw) {
//     return !done() && kw == current;
//   }

//   bool hasTokenMultiple(List<String> names) {
//     if (done()) return false;
//     for (final s in names) {
//       if (s == current) return true;
//     }
//     return false;
//   }

//   void token(String kw) {
//     if (kw != current) {
//       throw error('Found "\$current" expecting "\$kw"');
//     }
//     next();
//   }

//   String readConstant(String desc) {
//     if (!isStringConstant()) {
//       throw error('Found \$current expecting "[\$desc]"');
//     }
//     return processConstant(take());
//   }

//   String readFixedName(String desc) {
//     if (!isFixedName()) {
//       throw error('Found \$current expecting "[\$desc]"');
//     }
//     return processFixedName(take());
//   }

//   String processConstant(String s) {
//     final b = StringBuffer();
//     var i = 1;
//     while (i < s.length - 1) {
//       final ch = s[i];
//       if (ch == r'\') {
//         i++;
//         switch (s[i]) {
//           case 't':
//             b.write('\t');
//             break;
//           case 'r':
//             b.write('\r');
//             break;
//           case 'n':
//             b.write('\n');
//             break;
//           case 'f':
//             b.write('\f');
//             break;
//           case "'":
//             b.write("'");
//             break;
//           case '"':
//             b.write('"');
//             break;
//           case '`':
//             b.write('`');
//             break;
//           case r'\':
//             b.write(r'\');
//             break;
//           case '/':
//             b.write('/');
//             break;
//           case 'u':
//             i++;
//             final uc = int.parse(s.substring(i, i + 4), radix: 16);
//             b.writeCharCode(uc);
//             i += 4;
//             break;
//           default:
//             throw FHIRLexerException('Unknown character escape \\\${s[i]}');
//         }
//       } else {
//         b.write(ch);
//         i++;
//       }
//     }
//     return b.toString();
//   }

//   String processFixedName(String s) {
//     final b = StringBuffer();
//     var i = 1;
//     while (i < s.length - 1) {
//       final ch = s[i];
//       if (ch == r'\') {
//         i++;
//         switch (s[i]) {
//           case 't':
//             b.write('\t');
//             break;
//           case 'r':
//             b.write('\r');
//             break;
//           case 'n':
//             b.write('\n');
//             break;
//           case 'f':
//             b.write('\f');
//             break;
//           case "'":
//             b.write("'");
//             break;
//           case '"':
//             b.write('"');
//             break;
//           case '`':
//             b.write('`');
//             break;
//           case r'\':
//             b.write(r'\');
//             break;
//           case '/':
//             b.write('/');
//             break;
//           case 'u':
//             i++;
//             final uc = int.parse(s.substring(i, i + 4), radix: 16);
//             b.writeCharCode(uc);
//             i += 4;
//             break;
//           default:
//             throw FHIRLexerException('Unknown character escape \\\${s[i]}');
//         }
//       } else {
//         b.write(ch);
//         i++;
//       }
//     }
//     return b.toString();
//   }

//   void skipToken(String token) {
//     if (getCurrent() == token) next();
//   }

//   String takeDottedToken() {
//     final b = StringBuffer();
//     b.write(take());
//     while (!done() && getCurrent() == '.') {
//       b.write(take());
//       b.write(take());
//     }
//     return b.toString();
//   }

//   void setCurrent(String current) {
//     this.current = current;
//   }

//   bool _isLetter(String s) => RegExp(r'[A-Za-z]').hasMatch(s);

//   bool _isDigit(String s) => RegExp(r'[0-9]').hasMatch(s);

//   bool _isWhitespace(String s) => RegExp(r'\s').hasMatch(s);
// }

// class SourceLocation {
//   SourceLocation(this.line, this.column);
//   int line;
//   int column;

//   SourceLocation copy() => SourceLocation(line, column);

//   @override
//   String toString() => '\$line, \$column';

//   void _newLine() {
//     line += 1;
//     column = 1;
//   }

//   bool checkChar(String ch, bool last13) {
//     if (ch == '\r') {
//       _newLine();
//       return true;
//     } else if (ch == '\n') {
//       if (!last13) {
//         _newLine();
//       }
//       return false;
//     } else {
//       column += 1;
//       return false;
//     }
//   }
// }

// enum Operation {
//   Equals,
//   Equivalent,
//   NotEquals,
//   NotEquivalent,
//   LessThan,
//   Greater,
//   LessOrEqual,
//   GreaterOrEqual,
//   Is,
//   As,
//   Union,
//   Or,
//   And,
//   Xor,
//   Implies,
//   Times,
//   DivideBy,
//   Plus,
//   Minus,
//   Concatenate,
//   Div,
//   Mod,
//   In,
//   Contains,
//   MemberOf;

//   static Operation? fromCode(String? name) {
//     if (name == null || name.isEmpty) return null;
//     switch (name) {
//       case '=':
//         return Operation.Equals;
//       case '~':
//         return Operation.Equivalent;
//       case '!=':
//         return Operation.NotEquals;
//       case '!~':
//         return Operation.NotEquivalent;
//       case '>':
//         return Operation.Greater;
//       case '<':
//         return Operation.LessThan;
//       case '>=':
//         return Operation.GreaterOrEqual;
//       case '<=':
//         return Operation.LessOrEqual;
//       case '|':
//         return Operation.Union;
//       case 'or':
//         return Operation.Or;
//       case 'and':
//         return Operation.And;
//       case 'xor':
//         return Operation.Xor;
//       case 'is':
//         return Operation.Is;
//       case 'as':
//         return Operation.As;
//       case '*':
//         return Operation.Times;
//       case '/':
//         return Operation.DivideBy;
//       case '+':
//         return Operation.Plus;
//       case '-':
//         return Operation.Minus;
//       case '&':
//         return Operation.Concatenate;
//       case 'implies':
//         return Operation.Implies;
//       case 'div':
//         return Operation.Div;
//       case 'mod':
//         return Operation.Mod;
//       case 'in':
//         return Operation.In;
//       case 'contains':
//         return Operation.Contains;
//       case 'memberOf':
//         return Operation.MemberOf;
//       default:
//         return null;
//     }
//   }

//   String toCode() {
//     switch (this) {
//       case Operation.Equals:
//         return '=';
//       case Operation.Equivalent:
//         return '~';
//       case Operation.NotEquals:
//         return '!=';
//       case Operation.NotEquivalent:
//         return '!~';
//       case Operation.Greater:
//         return '>';
//       case Operation.LessThan:
//         return '<';
//       case Operation.GreaterOrEqual:
//         return '>=';
//       case Operation.LessOrEqual:
//         return '<=';
//       case Operation.Union:
//         return '|';
//       case Operation.Or:
//         return 'or';
//       case Operation.And:
//         return 'and';
//       case Operation.Xor:
//         return 'xor';
//       case Operation.Is:
//         return 'is';
//       case Operation.As:
//         return 'as';
//       case Operation.Times:
//         return '*';
//       case Operation.DivideBy:
//         return '/';
//       case Operation.Plus:
//         return '+';
//       case Operation.Minus:
//         return '-';
//       case Operation.Concatenate:
//         return '&';
//       case Operation.Implies:
//         return 'implies';
//       case Operation.Div:
//         return 'div';
//       case Operation.Mod:
//         return 'mod';
//       case Operation.In:
//         return 'in';
//       case Operation.Contains:
//         return 'contains';
//       case Operation.MemberOf:
//         return 'memberOf';
//     }
//   }
// }
