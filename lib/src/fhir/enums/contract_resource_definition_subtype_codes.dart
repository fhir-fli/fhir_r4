// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceDefinitionSubtypeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceDefinitionSubtypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceDefinitionSubtypeCodes] from JSON.
  factory ContractResourceDefinitionSubtypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionSubtypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionSubtypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceDefinitionSubtypeCodes values
  /// temp
  static final ContractResourceDefinitionSubtypeCodes temp =
      ContractResourceDefinitionSubtypeCodes._(
    'temp',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceDefinitionSubtypeCodes elementOnly =
      ContractResourceDefinitionSubtypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceDefinitionSubtypeCodes> values = [
    temp,
  ];

  /// Returns the enum value with an element attached
  ContractResourceDefinitionSubtypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionSubtypeCodes._(fhirCode,
        element: newElement);
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
