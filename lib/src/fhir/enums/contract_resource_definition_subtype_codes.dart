import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for status.
enum ContractResourceDefinitionSubtypeCodes {
  /// Display: Temporary Value
  /// Definition: To be completed
  @JsonValue('temp')
  temp,
  ;

  @override
  String toString() {
    switch (this) {
      case temp:
        return 'temp';
    }
  }

  String toJson() => toString();
  static ContractResourceDefinitionSubtypeCodes fromString(String str) {
    switch (str) {
      case 'temp':
        return ContractResourceDefinitionSubtypeCodes.temp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceDefinitionSubtypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
