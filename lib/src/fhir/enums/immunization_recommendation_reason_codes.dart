import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
enum ImmunizationRecommendationReasonCodes {
  @JsonValue('77176002')
  value77176002,
  @JsonValue('77386006')
  value77386006,
  ;

  @override
  String toString() {
    switch (this) {
      case value77176002:
        return '77176002';
      case value77386006:
        return '77386006';
    }
  }

  String toJson() => toString();
  static ImmunizationRecommendationReasonCodes fromString(String str) {
    switch (str) {
      case '77176002':
        return ImmunizationRecommendationReasonCodes.value77176002;
      case '77386006':
        return ImmunizationRecommendationReasonCodes.value77386006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImmunizationRecommendationReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
