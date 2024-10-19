// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support the definition of dates relevant to recommendations for future doses of vaccines. This value set is provided as a suggestive example.
@Entity()
class ImmunizationRecommendationDateCriterionCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationRecommendationDateCriterionCodes] from JSON.
  factory ImmunizationRecommendationDateCriterionCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationDateCriterionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationRecommendationDateCriterionCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationRecommendationDateCriterionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value30981_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationDateCriterionCodes.value30981_5([this.element])
      : dbValue = '30981-5',
        super('30981-5', element);

  /// value30980_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationDateCriterionCodes.value30980_7([this.element])
      : dbValue = '30980-7',
        super('30980-7', element);

  /// value59777_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationDateCriterionCodes.value59777_3([this.element])
      : dbValue = '59777-3',
        super('59777-3', element);

  /// value59778_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationDateCriterionCodes.value59778_1([this.element])
      : dbValue = '59778-1',
        super('59778-1', element);

  /// For instances where an Element is present but not value

  ImmunizationRecommendationDateCriterionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationRecommendationDateCriterionCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '30981-5',
    '30980-7',
    '59777-3',
    '59778-1',
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationDateCriterionCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationDateCriterionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationDateCriterionCodes.$value';
}
