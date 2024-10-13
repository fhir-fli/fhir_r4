/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
enum ImmunizationRecommendationReasonCodes {
  value77176002,
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

  /// Returns a [String] from a [ImmunizationRecommendationReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationRecommendationReasonCodes] from a [String] enum.
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

  /// Returns a [ImmunizationRecommendationReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationRecommendationReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
