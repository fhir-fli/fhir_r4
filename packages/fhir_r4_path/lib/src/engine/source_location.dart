// Converted from Java to Dart

// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

class SourceLocation {
  SourceLocation(this.line, this.column);

  int line;
  int column;

  @override
  String toString() => '$line, $column';

  void newLine() {
    line++;
    column = 1;
  }

  bool checkChar(String ch, bool last13) {
    if (ch == '\r') {
      newLine();
      return true;
    } else if (ch == '\n') {
      if (!last13) {
        newLine();
      }
      return false;
    } else {
      column++;
      return false;
    }
  }

  SourceLocation copy() => SourceLocation(line, column);
}
