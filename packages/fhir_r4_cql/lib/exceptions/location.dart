class Location {
  final int startLine;
  final int startChar;
  final int endLine;
  final int endChar;

  Location(this.startLine, this.startChar, this.endLine, this.endChar);

  int getStartLine() => startLine;
  int getStartChar() => startChar;
  int getEndLine() => endLine;
  int getEndChar() => endChar;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Location) return false;

    return startLine == other.startLine &&
        startChar == other.startChar &&
        endLine == other.endLine &&
        endChar == other.endChar;
  }

  bool includes(Location other) {
    return startLine <= other.startLine &&
        (startLine < other.startLine || startChar <= other.startChar) &&
        endLine >= other.endLine &&
        (endLine > other.endLine || endChar >= other.endChar);
  }

  @override
  int get hashCode => Object.hash(startLine, startChar, endLine, endChar);

  @override
  String toString() =>
      "Location{ startLine=$startLine, startChar=$startChar, endLine=$endLine, endChar=$endChar }";

  String toLocator() {
    return startLine == endLine && startChar == endChar
        ? "$startLine:$startChar"
        : "$startLine:$startChar-$endLine:$endChar";
  }

  static Location fromLocator(String? locator) {
    if (locator == null || locator.isEmpty) {
      throw ArgumentError("locator required");
    }

    final locations = locator.split("-");
    int startLine = 0, startChar = 0, endLine = 0, endChar = 0;

    for (var i = 0; i < locations.length; i++) {
      final ranges = locations[i].split(":");
      if (ranges.length != 2) {
        throw FormatException("Invalid locator format: $locator");
      }
      final line = int.parse(ranges[0]);
      final char = int.parse(ranges[1]);
      if (i == 0) {
        startLine = line;
        startChar = char;
      } else {
        endLine = line;
        endChar = char;
      }
    }

    if (locations.length == 1) {
      endLine = startLine;
      endChar = startChar;
    }

    return Location(startLine, startChar, endLine, endChar);
  }
}
