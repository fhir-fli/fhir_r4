/// The possible sort directions, ascending or descending.
enum SortDirection {
  /// Display: Ascending
  /// Definition: Sort by the value ascending, so that lower values appear first.
  ascending,

  /// Display: Descending
  /// Definition: Sort by the value descending, so that lower values appear last.
  descending,
  ;

  @override
  String toString() {
    switch (this) {
      case ascending:
        return 'ascending';
      case descending:
        return 'descending';
    }
  }

  String toJson() => toString();
  static SortDirection fromString(String str) {
    switch (str) {
      case 'ascending':
        return SortDirection.ascending;
      case 'descending':
        return SortDirection.descending;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SortDirection fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
