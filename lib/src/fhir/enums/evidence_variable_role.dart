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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceVariableRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceVariableRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly.withElement(element);
    }
    return EvidenceVariableRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
