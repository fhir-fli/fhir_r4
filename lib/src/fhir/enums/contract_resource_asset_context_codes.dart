import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for asset context.
enum ContractResourceAssetContextCodes {
  /// Display: Custodian
  /// Definition: To be completed
  @JsonValue('custodian')
  custodian,
;

@override
  String toString() {
      switch(this) {
        case custodian: return 'custodian';
      }
      }
String toJson() => toString();
  ContractResourceAssetContextCodes fromString(String str) {
    switch(str) {
      case 'custodian': return ContractResourceAssetContextCodes.custodian;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourceAssetContextCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

