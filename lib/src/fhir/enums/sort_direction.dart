import 'package:json_annotation/json_annotation.dart';

/// The possible sort directions, ascending or descending.
enum SortDirection {
  /// Display: Ascending
  /// Definition: Sort by the value ascending, so that lower values appear first.
  @JsonValue('ascending')
  ascending,
  /// Display: Descending
  /// Definition: Sort by the value descending, so that lower values appear last.
  @JsonValue('descending')
  descending,
;

@override
  String toString() {
      switch(this) {
        case ascending: return 'ascending';
        case descending: return 'descending';
      }
      }
String toJson() => toString();
  SortDirection fromString(String str) {
    switch(str) {
      case 'ascending': return SortDirection.ascending;
      case 'descending': return SortDirection.descending;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SortDirection fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

