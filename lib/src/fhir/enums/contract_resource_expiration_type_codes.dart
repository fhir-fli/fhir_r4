import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for status.
enum ContractResourceExpirationTypeCodes {
  /// Display: Breach
  /// Definition: To be completed
  @JsonValue('breach')
  breach,
  ;

  @override
  String toString() {
    switch (this) {
      case breach:
        return 'breach';
    }
  }

  String toJson() => toString();
  static ContractResourceExpirationTypeCodes fromString(String str) {
    switch (str) {
      case 'breach':
        return ContractResourceExpirationTypeCodes.breach;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceExpirationTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
