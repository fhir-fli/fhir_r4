/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
enum SearchEntryMode {
  /// Display: Match
  /// Definition: This resource matched the search specification.
  match,

  /// Display: Include
  /// Definition: This resource is returned because it is referred to from another resource in the search set.
  include,

  /// Display: Outcome
  /// Definition: An OperationOutcome that provides additional information about the processing of a search.
  outcome,
  ;

  @override
  String toString() {
    switch (this) {
      case match:
        return 'match';
      case include:
        return 'include';
      case outcome:
        return 'outcome';
    }
  }

  /// Returns a [String] from a [SearchEntryMode] enum.
  String toJson() => toString();

  /// Returns a [SearchEntryMode] from a [String] enum.
  static SearchEntryMode fromString(String str) {
    switch (str) {
      case 'match':
        return SearchEntryMode.match;
      case 'include':
        return SearchEntryMode.include;
      case 'outcome':
        return SearchEntryMode.outcome;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SearchEntryMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SearchEntryMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
