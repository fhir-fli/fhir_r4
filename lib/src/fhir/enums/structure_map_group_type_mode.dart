import 'package:json_annotation/json_annotation.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
enum StructureMapGroupTypeMode {
  /// Display: Not a Default
  /// Definition: This group is not a default group for the types.
  @JsonValue('none')
  none,

  /// Display: Default for Type Combination
  /// Definition: This group is a default mapping group for the specified types and for the primary source type.
  @JsonValue('types')
  types,

  /// Display: Default for type + combination
  /// Definition: This group is a default mapping group for the specified types.
  @JsonValue('type-and-types')
  type_and_types,
  ;

  @override
  String toString() {
    switch (this) {
      case none:
        return 'none';
      case types:
        return 'types';
      case type_and_types:
        return 'type-and-types';
    }
  }

  String toJson() => toString();
  static StructureMapGroupTypeMode fromString(String str) {
    switch (str) {
      case 'none':
        return StructureMapGroupTypeMode.none;
      case 'types':
        return StructureMapGroupTypeMode.types;
      case 'type-and-types':
        return StructureMapGroupTypeMode.type_and_types;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static StructureMapGroupTypeMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
