/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support the definition of dates relevant to recommendations for future doses of vaccines. This value set is provided as a suggestive example.
enum ImmunizationRecommendationDateCriterionCodes {
  value30981_5,
  value30980_7,
  value59777_3,
  value59778_1,
  ;

  @override
  String toString() {
    switch (this) {
      case value30981_5:
        return '30981-5';
      case value30980_7:
        return '30980-7';
      case value59777_3:
        return '59777-3';
      case value59778_1:
        return '59778-1';
    }
  }

  String toJson() => toString();
  static ImmunizationRecommendationDateCriterionCodes fromString(String str) {
    switch (str) {
      case '30981-5':
        return ImmunizationRecommendationDateCriterionCodes.value30981_5;
      case '30980-7':
        return ImmunizationRecommendationDateCriterionCodes.value30980_7;
      case '59777-3':
        return ImmunizationRecommendationDateCriterionCodes.value59777_3;
      case '59778-1':
        return ImmunizationRecommendationDateCriterionCodes.value59778_1;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImmunizationRecommendationDateCriterionCodes fromJson(
      dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
