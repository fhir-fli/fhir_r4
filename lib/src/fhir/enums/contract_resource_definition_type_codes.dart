import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for status.
enum ContractResourceDefinitionTypeCodes {
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
  static ContractResourceDefinitionTypeCodes fromString(String str) {
    switch (str) {
      case 'temp':
        return ContractResourceDefinitionTypeCodes.temp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceDefinitionTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
