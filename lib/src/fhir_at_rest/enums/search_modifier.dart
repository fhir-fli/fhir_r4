/// Define an enum for search modifiers
enum SearchModifier {
  /// Equal
  eq,

  /// Not equal
  ne,

  /// Greater than
  gt,

  /// Less than
  lt,

  /// Greater than or equal
  ge,

  /// Less than or equal
  le,

  /// Starts after (for date/time)
  sa,

  /// Ends before (for date/time)
  eb,

  /// Approximately (for date/time)
  ap,
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
