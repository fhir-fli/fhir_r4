// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Evidence focus characteristic code.
class FocusCharacteristicCode {
  // Private constructor for internal use (like enum)
  FocusCharacteristicCode._(this.fhirCode, {this.element});

  /// Factory constructor to create [FocusCharacteristicCode] from JSON.
  factory FocusCharacteristicCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FocusCharacteristicCode.elementOnly.withElement(element);
    }
    return FocusCharacteristicCode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FocusCharacteristicCode values
  /// citation
  static final FocusCharacteristicCode citation = FocusCharacteristicCode._(
    'citation',
  );

  /// clinical_outcomes_observed
  static final FocusCharacteristicCode clinical_outcomes_observed =
      FocusCharacteristicCode._(
    'clinical-outcomes-observed',
  );

  /// population
  static final FocusCharacteristicCode population = FocusCharacteristicCode._(
    'population',
  );

  /// exposure
  static final FocusCharacteristicCode exposure = FocusCharacteristicCode._(
    'exposure',
  );

  /// comparator
  static final FocusCharacteristicCode comparator = FocusCharacteristicCode._(
    'comparator',
  );

  /// outcome
  static final FocusCharacteristicCode outcome = FocusCharacteristicCode._(
    'outcome',
  );

  /// medication_exposures
  static final FocusCharacteristicCode medication_exposures =
      FocusCharacteristicCode._(
    'medication-exposures',
  );

  /// study_type
  static final FocusCharacteristicCode study_type = FocusCharacteristicCode._(
    'study-type',
  );

  /// For instances where an Element is present but not value

  static final FocusCharacteristicCode elementOnly =
      FocusCharacteristicCode._('');

  /// List of all enum-like values
  static final List<FocusCharacteristicCode> values = [
    citation,
    clinical_outcomes_observed,
    population,
    exposure,
    comparator,
    outcome,
    medication_exposures,
    study_type,
  ];

  /// Returns the enum value with an element attached
  FocusCharacteristicCode withElement(Element? newElement) {
    return FocusCharacteristicCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
