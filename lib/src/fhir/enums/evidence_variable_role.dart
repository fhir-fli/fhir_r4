// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The role that the assertion variable plays.
enum EvidenceVariableRole {
  /// Display: population
  /// Definition: variable represents a population.
  population('population'),

  /// Display: subpopulation
  /// Definition: variable represents a subpopulation.
  subpopulation('subpopulation'),

  /// Display: exposure
  /// Definition: variable represents an exposure.
  exposure('exposure'),

  /// Display: reference exposure
  /// Definition: variable represents a reference exposure.
  referenceExposure('referenceExposure'),

  /// Display: measured variable
  /// Definition: variable represents a measured variable.
  measuredVariable('measuredVariable'),

  /// Display: confounder
  /// Definition: variable represents a confounder.
  confounder('confounder'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EvidenceVariableRole(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EvidenceVariableRole] instances.
  static EvidenceVariableRole fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly.withElement(
        element,
      );
    }
    return EvidenceVariableRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
