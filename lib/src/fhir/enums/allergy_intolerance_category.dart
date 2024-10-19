// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Category of an identified substance associated with allergies or intolerances.
@collection
class AllergyIntoleranceCategory {
  /// Constructor for internal use (like enum)
  AllergyIntoleranceCategory({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceCategory values
  /// food
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCategory food = AllergyIntoleranceCategory(
    fhirCode: 'food',
  );

  /// medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCategory medication =
      AllergyIntoleranceCategory(
    fhirCode: 'medication',
  );

  /// environment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCategory environment =
      AllergyIntoleranceCategory(
    fhirCode: 'environment',
  );

  /// biologic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCategory biologic = AllergyIntoleranceCategory(
    fhirCode: 'biologic',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceCategory elementOnly =
      AllergyIntoleranceCategory();

  /// List of all enum-like values
  static final List<AllergyIntoleranceCategory> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategory withElement(Element? newElement) {
    return AllergyIntoleranceCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceCategory] from JSON.
  static AllergyIntoleranceCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategory.elementOnly.withElement(element);
    }
    return AllergyIntoleranceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceCategory.$fhirCode';
}
