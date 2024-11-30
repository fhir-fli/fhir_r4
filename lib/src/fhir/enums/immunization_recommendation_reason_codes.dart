// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
class ImmunizationRecommendationReasonCodes {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationRecommendationReasonCodes values
  /// value77176002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationReasonCodes value77176002 =
      ImmunizationRecommendationReasonCodes._(
    '77176002',
  );

  /// value77386006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationReasonCodes value77386006 =
      ImmunizationRecommendationReasonCodes._(
    '77386006',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationReasonCodes elementOnly =
      ImmunizationRecommendationReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationRecommendationReasonCodes> values = [
    value77176002,
    value77386006,
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationReasonCodes withElement(Element? newElement) {
    return ImmunizationRecommendationReasonCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationRecommendationReasonCodes] from JSON.
  static ImmunizationRecommendationReasonCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationReasonCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationReasonCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
