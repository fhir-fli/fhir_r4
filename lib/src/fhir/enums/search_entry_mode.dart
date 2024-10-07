import 'package:json_annotation/json_annotation.dart';

/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
enum SearchEntryMode {
  /// Display: Match
  /// Definition: This resource matched the search specification.
  @JsonValue('match')
  match,

  /// Display: Include
  /// Definition: This resource is returned because it is referred to from another resource in the search set.
  @JsonValue('include')
  include,

  /// Display: Outcome
  /// Definition: An OperationOutcome that provides additional information about the processing of a search.
  @JsonValue('outcome')
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

  String toJson() => toString();
  SearchEntryMode fromString(String str) {
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

  SearchEntryMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
