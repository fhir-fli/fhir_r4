import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
enum ExampleClaimSubTypeCodes {
  /// Display: Orthodontic Claim
  /// Definition: A claim for Orthodontic Services.
  @JsonValue('ortho')
  ortho,
  /// Display: Emergency Claim
  /// Definition: A claim for emergency services.
  @JsonValue('emergency')
  emergency,
;

@override
  String toString() {
      switch(this) {
        case ortho: return 'ortho';
        case emergency: return 'emergency';
      }
      }
String toJson() => toString();
  ExampleClaimSubTypeCodes fromString(String str) {
    switch(str) {
      case 'ortho': return ExampleClaimSubTypeCodes.ortho;
      case 'emergency': return ExampleClaimSubTypeCodes.emergency;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleClaimSubTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

