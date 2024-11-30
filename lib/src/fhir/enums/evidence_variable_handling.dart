// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
class EvidenceVariableHandling {
  // Private constructor for internal use (like enum)
  EvidenceVariableHandling._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceVariableHandling values
  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling continuous = EvidenceVariableHandling._(
    'continuous',
  );

  /// dichotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling dichotomous =
      EvidenceVariableHandling._(
    'dichotomous',
  );

  /// ordinal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling ordinal = EvidenceVariableHandling._(
    'ordinal',
  );

  /// polychotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling polychotomous =
      EvidenceVariableHandling._(
    'polychotomous',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableHandling elementOnly =
      EvidenceVariableHandling._('');

  /// List of all enum-like values
  static final List<EvidenceVariableHandling> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceVariableHandling] from JSON.
  static EvidenceVariableHandling fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling.elementOnly.withElement(element);
    }
    return EvidenceVariableHandling._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
