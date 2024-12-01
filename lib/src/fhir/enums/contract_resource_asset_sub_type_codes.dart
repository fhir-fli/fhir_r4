// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset subtype.
class ContractResourceAssetSubTypeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceAssetSubTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceAssetSubTypeCodes] from JSON.
  factory ContractResourceAssetSubTypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetSubTypeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetSubTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceAssetSubTypeCodes values
  /// participation
  static final ContractResourceAssetSubTypeCodes participation =
      ContractResourceAssetSubTypeCodes._(
    'participation',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetSubTypeCodes elementOnly =
      ContractResourceAssetSubTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetSubTypeCodes> values = [
    participation,
  ];

  /// Returns the enum value with an element attached
  ContractResourceAssetSubTypeCodes withElement(Element? newElement) {
    return ContractResourceAssetSubTypeCodes._(fhirCode, element: newElement);
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
