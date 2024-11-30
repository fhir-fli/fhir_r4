// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine preventable disease. This value set is provided as a suggestive example.
class ImmunizationRecommendationStatusCodes {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationRecommendationStatusCodes values
  /// due
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationStatusCodes due =
      ImmunizationRecommendationStatusCodes._(
    'due',
  );

  /// overdue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationStatusCodes overdue =
      ImmunizationRecommendationStatusCodes._(
    'overdue',
  );

  /// immune
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationStatusCodes immune =
      ImmunizationRecommendationStatusCodes._(
    'immune',
  );

  /// contraindicated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationStatusCodes contraindicated =
      ImmunizationRecommendationStatusCodes._(
    'contraindicated',
  );

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationStatusCodes complete =
      ImmunizationRecommendationStatusCodes._(
    'complete',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationStatusCodes elementOnly =
      ImmunizationRecommendationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationRecommendationStatusCodes> values = [
    due,
    overdue,
    immune,
    contraindicated,
    complete,
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationStatusCodes withElement(Element? newElement) {
    return ImmunizationRecommendationStatusCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationRecommendationStatusCodes] from JSON.
  static ImmunizationRecommendationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationStatusCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
