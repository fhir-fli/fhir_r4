import 'package:json_annotation/json_annotation.dart';

/// The type of a property value.
enum PropertyTypeEnum {
  /// Display: code (internal reference)
  /// Definition: The property value is a code that identifies a concept defined in the code system.
  @JsonValue('code')
  code,

  /// Display: Coding (external reference)
  /// Definition: The property  value is a code defined in an external code system. This may be used for translations, but is not the intent.
  @JsonValue('Coding')
  Coding,

  /// Display: string
  /// Definition: The property value is a string.
  @JsonValue('string')
  string,

  /// Display: integer
  /// Definition: The property value is a string (often used to assign ranking values to concepts for supporting score assessments).
  @JsonValue('integer')
  integer,

  /// Display: boolean
  /// Definition: The property value is a boolean true | false.
  @JsonValue('boolean')
  boolean,

  /// Display: dateTime
  /// Definition: The property is a date or a date + time.
  @JsonValue('dateTime')
  dateTime,

  /// Display: decimal
  /// Definition: The property value is a decimal number.
  @JsonValue('decimal')
  decimal,
  ;

  @override
  String toString() {
    switch (this) {
      case code:
        return 'code';
      case Coding:
        return 'Coding';
      case string:
        return 'string';
      case integer:
        return 'integer';
      case boolean:
        return 'boolean';
      case dateTime:
        return 'dateTime';
      case decimal:
        return 'decimal';
    }
  }

  String toJson() => toString();
  static PropertyTypeEnum fromString(String str) {
    switch (str) {
      case 'code':
        return PropertyTypeEnum.code;
      case 'Coding':
        return PropertyTypeEnum.Coding;
      case 'string':
        return PropertyTypeEnum.string;
      case 'integer':
        return PropertyTypeEnum.integer;
      case 'boolean':
        return PropertyTypeEnum.boolean;
      case 'dateTime':
        return PropertyTypeEnum.dateTime;
      case 'decimal':
        return PropertyTypeEnum.decimal;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static PropertyTypeEnum fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
