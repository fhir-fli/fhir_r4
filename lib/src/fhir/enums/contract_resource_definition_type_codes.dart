// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceDefinitionTypeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceDefinitionTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceDefinitionTypeCodes] from JSON.
  factory ContractResourceDefinitionTypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceDefinitionTypeCodes values
  /// temp
  static final ContractResourceDefinitionTypeCodes temp =
      ContractResourceDefinitionTypeCodes._(
    'temp',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceDefinitionTypeCodes elementOnly =
      ContractResourceDefinitionTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceDefinitionTypeCodes> values = [
    temp,
  ];

  /// Returns the enum value with an element attached
  ContractResourceDefinitionTypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionTypeCodes._(fhirCode, element: newElement);
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
