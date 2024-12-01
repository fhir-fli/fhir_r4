// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for security category.
class ContractResourceScopeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceScopeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceScopeCodes] from JSON.
  factory ContractResourceScopeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceScopeCodes.elementOnly.withElement(element);
    }
    return ContractResourceScopeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceScopeCodes values
  /// policy
  static final ContractResourceScopeCodes policy = ContractResourceScopeCodes._(
    'policy',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceScopeCodes elementOnly =
      ContractResourceScopeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceScopeCodes> values = [
    policy,
  ];

  /// Returns the enum value with an element attached
  ContractResourceScopeCodes withElement(Element? newElement) {
    return ContractResourceScopeCodes._(fhirCode, element: newElement);
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
