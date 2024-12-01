// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The role that the assertion variable plays.
class EvidenceVariableRole {
  // Private constructor for internal use (like enum)
  EvidenceVariableRole._(this.fhirCode, {this.element});

  /// Factory constructor to create [EvidenceVariableRole] from JSON.
  factory EvidenceVariableRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly.withElement(element);
    }
    return EvidenceVariableRole._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceVariableRole values
  /// population
  static final EvidenceVariableRole population = EvidenceVariableRole._(
    'population',
  );

  /// subpopulation
  static final EvidenceVariableRole subpopulation = EvidenceVariableRole._(
    'subpopulation',
  );

  /// exposure
  static final EvidenceVariableRole exposure = EvidenceVariableRole._(
    'exposure',
  );

  /// referenceExposure
  static final EvidenceVariableRole referenceExposure = EvidenceVariableRole._(
    'referenceExposure',
  );

  /// measuredVariable
  static final EvidenceVariableRole measuredVariable = EvidenceVariableRole._(
    'measuredVariable',
  );

  /// confounder
  static final EvidenceVariableRole confounder = EvidenceVariableRole._(
    'confounder',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableRole elementOnly = EvidenceVariableRole._('');

  /// List of all enum-like values
  static final List<EvidenceVariableRole> values = [
    population,
    subpopulation,
    exposure,
    referenceExposure,
    measuredVariable,
    confounder,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole._(fhirCode, element: newElement);
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
