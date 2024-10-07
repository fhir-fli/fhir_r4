import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for offer party participation.
enum ContractResourcePartyRoleCodes {
  /// Display: FLunky
  /// Definition: To be completed
  @JsonValue('flunky')
  flunky,
;

@override
  String toString() {
      switch(this) {
        case flunky: return 'flunky';
      }
      }
String toJson() => toString();
  ContractResourcePartyRoleCodes fromString(String str) {
    switch(str) {
      case 'flunky': return ContractResourcePartyRoleCodes.flunky;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourcePartyRoleCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

