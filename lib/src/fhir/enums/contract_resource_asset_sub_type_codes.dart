import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for asset subtype.
enum ContractResourceAssetSubTypeCodes {
  /// Display: Participation
  /// Definition: To be completed
  @JsonValue('participation')
  participation,
;

@override
  String toString() {
      switch(this) {
        case participation: return 'participation';
      }
      }
String toJson() => toString();
  ContractResourceAssetSubTypeCodes fromString(String str) {
    switch(str) {
      case 'participation': return ContractResourceAssetSubTypeCodes.participation;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourceAssetSubTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
