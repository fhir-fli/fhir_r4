import 'package:json_annotation/json_annotation.dart';

/// Category of an identified substance associated with allergies or intolerances.
enum AllergyIntoleranceCategory {
  /// Display: Food
  /// Definition: Any substance consumed to provide nutritional support for the body.
  @JsonValue('food')
  food,

  /// Display: Medication
  /// Definition: Substances administered to achieve a physiological effect.
  @JsonValue('medication')
  medication,

  /// Display: Environment
  /// Definition: Any substances that are encountered in the environment, including any substance not already classified as food, medication, or biologic.
  @JsonValue('environment')
  environment,

  /// Display: Biologic
  /// Definition: A preparation that is synthesized from living organisms or their products, especially a human or animal protein, such as a hormone or antitoxin, that is used as a diagnostic, preventive, or therapeutic agent. Examples of biologic medications include: vaccines; allergenic extracts, which are used for both diagnosis and treatment (for example, allergy shots); gene therapies; cellular therapies.  There are other biologic products, such as tissues, which are not typically associated with allergies.
  @JsonValue('biologic')
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

  String toJson() => toString();
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

  static AllergyIntoleranceCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
