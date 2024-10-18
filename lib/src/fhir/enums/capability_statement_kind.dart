// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CapabilityStatementKind(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CapabilityStatementKind] instances.
  static CapabilityStatementKind fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKind.elementOnly.withElement(element);
    }
    return CapabilityStatementKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CapabilityStatementKind withElement(Element? newElement) {
    return CapabilityStatementKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
