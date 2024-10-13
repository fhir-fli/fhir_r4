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

  /// Returns a [String] from a [SortDirection] enum.
  String toJson() => toString();

  /// Returns a [SortDirection] from a [String] enum.
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

  /// Returns a [SortDirection] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SortDirection fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
