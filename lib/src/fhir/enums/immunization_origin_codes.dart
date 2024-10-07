import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
enum ImmunizationOriginCodes {
  /// Display: Other Provider
  @JsonValue('provider')
  provider,
  /// Display: Written Record
  @JsonValue('record')
  record,
  /// Display: Parent/Guardian/Patient Recall
  @JsonValue('recall')
  recall,
  /// Display: School Record
  @JsonValue('school')
  school,
;

@override
  String toString() {
      switch(this) {
        case provider: return 'provider';
        case record: return 'record';
        case recall: return 'recall';
        case school: return 'school';
      }
      }
String toJson() => toString();
  ImmunizationOriginCodes fromString(String str) {
    switch(str) {
      case 'provider': return ImmunizationOriginCodes.provider;
      case 'record': return ImmunizationOriginCodes.record;
      case 'recall': return ImmunizationOriginCodes.recall;
      case 'school': return ImmunizationOriginCodes.school;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ImmunizationOriginCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

