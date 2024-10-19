// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
@Entity()
class ImmunizationRecommendationReasonCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationRecommendationReasonCodes] from JSON.
  factory ImmunizationRecommendationReasonCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationRecommendationReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationRecommendationReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value77176002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationReasonCodes.value77176002([this.element])
      : dbValue = '77176002',
        super('77176002', element);

  /// value77386006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationReasonCodes.value77386006([this.element])
      : dbValue = '77386006',
        super('77386006', element);

  /// For instances where an Element is present but not value

  ImmunizationRecommendationReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationRecommendationReasonCodes._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    '77176002',
    '77386006',
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationReasonCodes withElement(Element? newElement) {
    return ImmunizationRecommendationReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationReasonCodes.$value';
}
