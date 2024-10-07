import 'package:json_annotation/json_annotation.dart';

/// The kind of operation to perform as a part of a property based filter.
enum FilterOperator {
  /// Display: Equals
  /// Definition: The specified property of the code equals the provided value.
  @JsonValue('=')
  equals,

  /// Display: Is A (by subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value, including the provided concept itself (include descendant codes and self).
  @JsonValue('is-a')
  is_a,

  /// Display: Descendent Of (by subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value, excluding the provided concept itself i.e. include descendant codes only).
  @JsonValue('descendent-of')
  descendent_of,

  /// Display: Not (Is A) (by subsumption)
  /// Definition: The specified property of the code does not have an is-a relationship with the provided value.
  @JsonValue('is-not-a')
  is_not_a,

  /// Display: Regular Expression
  /// Definition: The specified property of the code  matches the regex specified in the provided value.
  @JsonValue('regex')
  regex,

  /// Display: In Set
  /// Definition: The specified property of the code is in the set of codes or concepts specified in the provided value (comma separated list).
  @JsonValue('in')
  in_,

  /// Display: Not in Set
  /// Definition: The specified property of the code is not in the set of codes or concepts specified in the provided value (comma separated list).
  @JsonValue('not-in')
  not_in,

  /// Display: Generalizes (by Subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship from the concept Id provided as the value, including the provided concept itself (i.e. include ancestor codes and self).
  @JsonValue('generalizes')
  generalizes,

  /// Display: Exists
  /// Definition: The specified property of the code has at least one value (if the specified value is true; if the specified value is false, then matches when the specified property of the code has no values).
  @JsonValue('exists')
  exists,
  ;

  @override
  String toString() {
    switch (this) {
      case equals:
        return '=';
      case is_a:
        return 'is-a';
      case descendent_of:
        return 'descendent-of';
      case is_not_a:
        return 'is-not-a';
      case regex:
        return 'regex';
      case in_:
        return 'in';
      case not_in:
        return 'not-in';
      case generalizes:
        return 'generalizes';
      case exists:
        return 'exists';
    }
  }

  String toJson() => toString();
  FilterOperator fromString(String str) {
    switch (str) {
      case '=':
        return FilterOperator.equals;
      case 'is-a':
        return FilterOperator.is_a;
      case 'descendent-of':
        return FilterOperator.descendent_of;
      case 'is-not-a':
        return FilterOperator.is_not_a;
      case 'regex':
        return FilterOperator.regex;
      case 'in':
        return FilterOperator.in_;
      case 'not-in':
        return FilterOperator.not_in;
      case 'generalizes':
        return FilterOperator.generalizes;
      case 'exists':
        return FilterOperator.exists;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  FilterOperator fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
