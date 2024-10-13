/// Category of an identified substance associated with allergies or intolerances.
enum AllergyIntoleranceCategory {
  /// Display: Food
  /// Definition: Any substance consumed to provide nutritional support for the body.
  food,

  /// Display: Medication
  /// Definition: Substances administered to achieve a physiological effect.
  medication,

  /// Display: Environment
  /// Definition: Any substances that are encountered in the environment, including any substance not already classified as food, medication, or biologic.
  environment,

  /// Display: Biologic
  /// Definition: A preparation that is synthesized from living organisms or their products, especially a human or animal protein, such as a hormone or antitoxin, that is used as a diagnostic, preventive, or therapeutic agent. Examples of biologic medications include: vaccines; allergenic extracts, which are used for both diagnosis and treatment (for example, allergy shots); gene therapies; cellular therapies.  There are other biologic products, such as tissues, which are not typically associated with allergies.
  biologic,
  ;

  @override
  String toString() {
    switch (this) {
      case food:
        return 'food';
      case medication:
        return 'medication';
      case environment:
        return 'environment';
      case biologic:
        return 'biologic';
    }
  }

  /// Returns a [String] from a [AllergyIntoleranceCategory] enum.
  String toJson() => toString();

  /// Returns a [AllergyIntoleranceCategory] from a [String] enum.
  static AllergyIntoleranceCategory fromString(String str) {
    switch (str) {
      case 'food':
        return AllergyIntoleranceCategory.food;
      case 'medication':
        return AllergyIntoleranceCategory.medication;
      case 'environment':
        return AllergyIntoleranceCategory.environment;
      case 'biologic':
        return AllergyIntoleranceCategory.biologic;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AllergyIntoleranceCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AllergyIntoleranceCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
