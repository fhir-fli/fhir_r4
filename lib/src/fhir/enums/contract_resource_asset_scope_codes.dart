// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset scope.
class ContractResourceAssetScopeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceAssetScopeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceAssetScopeCodes] from JSON.
  factory ContractResourceAssetScopeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetScopeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetScopeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceAssetScopeCodes values
  /// thing
  static final ContractResourceAssetScopeCodes thing =
      ContractResourceAssetScopeCodes._(
    'thing',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetScopeCodes elementOnly =
      ContractResourceAssetScopeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetScopeCodes> values = [
    thing,
  ];

  /// Returns the enum value with an element attached
  ContractResourceAssetScopeCodes withElement(Element? newElement) {
    return ContractResourceAssetScopeCodes._(fhirCode, element: newElement);
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
