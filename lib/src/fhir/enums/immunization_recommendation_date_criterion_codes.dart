// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support the definition of dates relevant to recommendations for future doses of vaccines. This value set is provided as a suggestive example.
@collection
class ImmunizationRecommendationDateCriterionCodes {
  /// Constructor for internal use (like enum)
  ImmunizationRecommendationDateCriterionCodes({this.fhirCode, this.element})
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

  /// ImmunizationRecommendationDateCriterionCodes values
  /// value30981_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationDateCriterionCodes value30981_5 =
      ImmunizationRecommendationDateCriterionCodes(
    fhirCode: '30981-5',
  );

  /// value30980_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationDateCriterionCodes value30980_7 =
      ImmunizationRecommendationDateCriterionCodes(
    fhirCode: '30980-7',
  );

  /// value59777_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationDateCriterionCodes value59777_3 =
      ImmunizationRecommendationDateCriterionCodes(
    fhirCode: '59777-3',
  );

  /// value59778_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationDateCriterionCodes value59778_1 =
      ImmunizationRecommendationDateCriterionCodes(
    fhirCode: '59778-1',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationDateCriterionCodes elementOnly =
      ImmunizationRecommendationDateCriterionCodes();

  /// List of all enum-like values
  static final List<ImmunizationRecommendationDateCriterionCodes> values = [
    value30981_5,
    value30980_7,
    value59777_3,
    value59778_1,
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationDateCriterionCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationDateCriterionCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationRecommendationDateCriterionCodes] from JSON.
  static ImmunizationRecommendationDateCriterionCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationDateCriterionCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationDateCriterionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationDateCriterionCodes.$fhirCode';
}
