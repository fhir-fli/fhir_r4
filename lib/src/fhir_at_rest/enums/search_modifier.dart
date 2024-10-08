// Define an enum for search modifiers
enum SearchModifier {
  eq, // Equal
  ne, // Not equal
  gt, // Greater than
  lt, // Less than
  ge, // Greater than or equal
  le, // Less than or equal
  sa, // Starts after (for date/time)
  eb, // Ends before (for date/time)
  ap, // Approximately (for date/time)
  ;

  @override
  String toString() {
    switch (this) {
      case SearchModifier.eq:
        return 'eq';
      case SearchModifier.ne:
        return 'ne';
      case SearchModifier.gt:
        return 'gt';
      case SearchModifier.lt:
        return 'lt';
      case SearchModifier.ge:
        return 'ge';
      case SearchModifier.le:
        return 'le';
      case SearchModifier.sa:
        return 'sa';
      case SearchModifier.eb:
        return 'eb';
      case SearchModifier.ap:
        return 'ap';
    }
  }
}
