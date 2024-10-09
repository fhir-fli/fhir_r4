import 'package:json_annotation/json_annotation.dart';

/// If field is a list, how to manage the source.
enum StructureMapSourceListMode {
  /// Display: First
  /// Definition: Only process this rule for the first in the list.
  @JsonValue('first')
  first,

  /// Display: All but the first
  /// Definition: Process this rule for all but the first.
  @JsonValue('not_first')
  not_first,

  /// Display: Last
  /// Definition: Only process this rule for the last in the list.
  @JsonValue('last')
  last,

  /// Display: All but the last
  /// Definition: Process this rule for all but the last.
  @JsonValue('not_last')
  not_last,

  /// Display: Enforce only one
  /// Definition: Only process this rule is there is only item.
  @JsonValue('only_one')
  only_one,
  ;

  @override
  String toString() {
    switch (this) {
      case first:
        return 'first';
      case not_first:
        return 'not_first';
      case last:
        return 'last';
      case not_last:
        return 'not_last';
      case only_one:
        return 'only_one';
    }
  }

  String toJson() => toString();
  static StructureMapSourceListMode fromString(String str) {
    switch (str) {
      case 'first':
        return StructureMapSourceListMode.first;
      case 'not_first':
        return StructureMapSourceListMode.not_first;
      case 'last':
        return StructureMapSourceListMode.last;
      case 'not_last':
        return StructureMapSourceListMode.not_last;
      case 'only_one':
        return StructureMapSourceListMode.only_one;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static StructureMapSourceListMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
