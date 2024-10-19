// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset context.
class ContractResourceAssetContextCodes {
  // Private constructor for internal use (like enum)
  ContractResourceAssetContextCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceAssetContextCodes values
  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceAssetContextCodes custodian =
      ContractResourceAssetContextCodes._(
    'custodian',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetContextCodes elementOnly =
      ContractResourceAssetContextCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetContextCodes> values = [
    custodian,
  ];

  /// Returns the enum value with an element attached
  ContractResourceAssetContextCodes withElement(Element? newElement) {
    return ContractResourceAssetContextCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceAssetContextCodes] from JSON.
  static ContractResourceAssetContextCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetContextCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetContextCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceAssetContextCodes.$fhirCode';
}
