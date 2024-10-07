import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for asset scope.
enum ContractResourceAssetScopeCodes {
  /// Display: Thing
  /// Definition: To be completed
  @JsonValue('thing')
  thing,
;

@override
  String toString() {
      switch(this) {
        case thing: return 'thing';
      }
      }
String toJson() => toString();
  ContractResourceAssetScopeCodes fromString(String str) {
    switch(str) {
      case 'thing': return ContractResourceAssetScopeCodes.thing;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourceAssetScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

