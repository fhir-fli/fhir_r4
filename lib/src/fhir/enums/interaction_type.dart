/// A categorisation for an interaction between two substances.
enum InteractionType {
  /// Display: drug to drug interaction
  drug_drug,

  /// Display: drug to food interaction
  drug_food,

  /// Display: drug to laboratory test interaction
  drug_test,

  /// Display: other interaction
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case drug_drug:
        return 'drug-drug';
      case drug_food:
        return 'drug-food';
      case drug_test:
        return 'drug-test';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  static InteractionType fromString(String str) {
    switch (str) {
      case 'drug-drug':
        return InteractionType.drug_drug;
      case 'drug-food':
        return InteractionType.drug_food;
      case 'drug-test':
        return InteractionType.drug_test;
      case 'other':
        return InteractionType.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static InteractionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
