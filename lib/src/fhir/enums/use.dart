import 'package:json_annotation/json_annotation.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
enum Use {
  /// Display: Claim
  /// Definition: The treatment is complete and this represents a Claim for the services.
  @JsonValue('claim')
  claim,
  /// Display: Preauthorization
  /// Definition: The treatment is proposed and this represents a Pre-authorization for the services.
  @JsonValue('preauthorization')
  preauthorization,
  /// Display: Predetermination
  /// Definition: The treatment is proposed and this represents a Pre-determination for the services.
  @JsonValue('predetermination')
  predetermination,
;

@override
  String toString() {
      switch(this) {
        case claim: return 'claim';
        case preauthorization: return 'preauthorization';
        case predetermination: return 'predetermination';
      }
      }
String toJson() => toString();
  Use fromString(String str) {
    switch(str) {
      case 'claim': return Use.claim;
      case 'preauthorization': return Use.preauthorization;
      case 'predetermination': return Use.predetermination;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 Use fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

