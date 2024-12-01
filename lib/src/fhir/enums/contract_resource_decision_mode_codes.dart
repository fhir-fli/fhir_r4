// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for decision modes.
class ContractResourceDecisionModeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceDecisionModeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceDecisionModeCodes] from JSON.
  factory ContractResourceDecisionModeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDecisionModeCodes.elementOnly.withElement(element);
    }
    return ContractResourceDecisionModeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceDecisionModeCodes values
  /// policy
  static final ContractResourceDecisionModeCodes policy =
      ContractResourceDecisionModeCodes._(
    'policy',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceDecisionModeCodes elementOnly =
      ContractResourceDecisionModeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceDecisionModeCodes> values = [
    policy,
  ];

  /// Returns the enum value with an element attached
  ContractResourceDecisionModeCodes withElement(Element? newElement) {
    return ContractResourceDecisionModeCodes._(fhirCode, element: newElement);
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
