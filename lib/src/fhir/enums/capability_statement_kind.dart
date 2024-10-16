import 'package:fhir_r4/fhir_r4.dart';

/// How a capability statement is intended to be used.
enum CapabilityStatementKind {
  /// Display: Instance
  /// Definition: The CapabilityStatement instance represents the present capabilities of a specific system instance. This is the kind returned by /metadata for a FHIR server end-point.
  instance('instance'),

  /// Display: Capability
  /// Definition: The CapabilityStatement instance represents the capabilities of a system or piece of software, independent of a particular installation.
  capability('capability'),

  /// Display: Requirements
  /// Definition: The CapabilityStatement instance represents a set of requirements for other systems to meet; e.g. as part of an implementation guide or 'request for proposal'.
  requirements('requirements'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CapabilityStatementKind(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CapabilityStatementKind fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKind.elementOnly.withElement(element);
    }
    return CapabilityStatementKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CapabilityStatementKind withElement(Element? newElement) {
    return CapabilityStatementKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
