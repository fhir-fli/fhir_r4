import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the function a practitioner or organization may play in the immunization event. This value set is provided as a suggestive example.
enum ImmunizationFunctionCodes {
  @JsonValue('OP')
  OP,
  @JsonValue('AP')
  AP,
;

@override
  String toString() {
      switch(this) {
        case OP: return 'OP';
        case AP: return 'AP';
      }
      }
String toJson() => toString();
  ImmunizationFunctionCodes fromString(String str) {
    switch(str) {
      case 'OP': return ImmunizationFunctionCodes.OP;
      case 'AP': return ImmunizationFunctionCodes.AP;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ImmunizationFunctionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

