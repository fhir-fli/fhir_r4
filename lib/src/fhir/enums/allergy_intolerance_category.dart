// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Category of an identified substance associated with allergies or intolerances.
enum AllergyIntoleranceCategory {
  /// Display: Food
  /// Definition: Any substance consumed to provide nutritional support for the body.
  food('food'),

  /// Display: Medication
  /// Definition: Substances administered to achieve a physiological effect.
  medication('medication'),

  /// Display: Environment
  /// Definition: Any substances that are encountered in the environment, including any substance not already classified as food, medication, or biologic.
  environment('environment'),

  /// Display: Biologic
  /// Definition: A preparation that is synthesized from living organisms or their products, especially a human or animal protein, such as a hormone or antitoxin, that is used as a diagnostic, preventive, or therapeutic agent. Examples of biologic medications include: vaccines; allergenic extracts, which are used for both diagnosis and treatment (for example, allergy shots); gene therapies; cellular therapies. There are other biologic products, such as tissues, which are not typically associated with allergies.
  biologic('biologic'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AllergyIntoleranceCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AllergyIntoleranceCategory] instances.
  static AllergyIntoleranceCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategory.elementOnly.withElement(
        element,
      );
    }
    return AllergyIntoleranceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AllergyIntoleranceCategory withElement(Element? newElement) {
    return AllergyIntoleranceCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
