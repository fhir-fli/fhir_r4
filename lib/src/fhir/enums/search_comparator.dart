import 'package:json_annotation/json_annotation.dart';

/// What Search Comparator Codes are supported in search.
enum SearchComparator {
  /// Display: Equals
  /// Definition: the value for the parameter in the resource is equal to the provided value.
  @JsonValue('eq')
  eq,

  /// Display: Not Equals
  /// Definition: the value for the parameter in the resource is not equal to the provided value.
  @JsonValue('ne')
  ne,

  /// Display: Greater Than
  /// Definition: the value for the parameter in the resource is greater than the provided value.
  @JsonValue('gt')
  gt,

  /// Display: Less Than
  /// Definition: the value for the parameter in the resource is less than the provided value.
  @JsonValue('lt')
  lt,

  /// Display: Greater or Equals
  /// Definition: the value for the parameter in the resource is greater or equal to the provided value.
  @JsonValue('ge')
  ge,

  /// Display: Less of Equal
  /// Definition: the value for the parameter in the resource is less or equal to the provided value.
  @JsonValue('le')
  le,

  /// Display: Starts After
  /// Definition: the value for the parameter in the resource starts after the provided value.
  @JsonValue('sa')
  sa,

  /// Display: Ends Before
  /// Definition: the value for the parameter in the resource ends before the provided value.
  @JsonValue('eb')
  eb,

  /// Display: Approximately
  /// Definition: the value for the parameter in the resource is approximately the same to the provided value.
  @JsonValue('ap')
  ap,
  ;

  @override
  String toString() {
    switch (this) {
      case eq:
        return 'eq';
      case ne:
        return 'ne';
      case gt:
        return 'gt';
      case lt:
        return 'lt';
      case ge:
        return 'ge';
      case le:
        return 'le';
      case sa:
        return 'sa';
      case eb:
        return 'eb';
      case ap:
        return 'ap';
    }
  }

  String toJson() => toString();
  static SearchComparator fromString(String str) {
    switch (str) {
      case 'eq':
        return SearchComparator.eq;
      case 'ne':
        return SearchComparator.ne;
      case 'gt':
        return SearchComparator.gt;
      case 'lt':
        return SearchComparator.lt;
      case 'ge':
        return SearchComparator.ge;
      case 'le':
        return SearchComparator.le;
      case 'sa':
        return SearchComparator.sa;
      case 'eb':
        return SearchComparator.eb;
      case 'ap':
        return SearchComparator.ap;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SearchComparator fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
