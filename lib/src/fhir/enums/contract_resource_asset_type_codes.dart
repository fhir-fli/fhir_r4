// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset type.
class ContractResourceAssetTypeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceAssetTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceAssetTypeCodes values
  /// participation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceAssetTypeCodes participation =
      ContractResourceAssetTypeCodes._(
    'participation',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetTypeCodes elementOnly =
      ContractResourceAssetTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetTypeCodes> values = [
    participation,
  ];

  /// Returns the enum value with an element attached
  ContractResourceAssetTypeCodes withElement(Element? newElement) {
    return ContractResourceAssetTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceAssetTypeCodes] from JSON.
  static ContractResourceAssetTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetTypeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceAssetTypeCodes.$fhirCode';
}
