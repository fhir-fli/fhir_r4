// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is provided as a suggestive example.
class ImmunizationProgramEligibility {
  // Private constructor for internal use (like enum)
  ImmunizationProgramEligibility._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationProgramEligibility values
  /// ineligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationProgramEligibility ineligible =
      ImmunizationProgramEligibility._(
    'ineligible',
  );

  /// uninsured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationProgramEligibility uninsured =
      ImmunizationProgramEligibility._(
    'uninsured',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationProgramEligibility elementOnly =
      ImmunizationProgramEligibility._('');

  /// List of all enum-like values
  static final List<ImmunizationProgramEligibility> values = [
    ineligible,
    uninsured,
  ];

  /// Returns the enum value with an element attached
  ImmunizationProgramEligibility withElement(Element? newElement) {
    return ImmunizationProgramEligibility._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationProgramEligibility] from JSON.
  static ImmunizationProgramEligibility fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationProgramEligibility.elementOnly.withElement(element);
    }
    return ImmunizationProgramEligibility.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
