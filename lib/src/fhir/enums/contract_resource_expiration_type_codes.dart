// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceExpirationTypeCodes {
  // Private constructor for internal use (like enum)
  ContractResourceExpirationTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceExpirationTypeCodes values
  /// breach
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceExpirationTypeCodes breach =
      ContractResourceExpirationTypeCodes._(
    'breach',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceExpirationTypeCodes elementOnly =
      ContractResourceExpirationTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceExpirationTypeCodes> values = [
    breach,
  ];

  /// Returns the enum value with an element attached
  ContractResourceExpirationTypeCodes withElement(Element? newElement) {
    return ContractResourceExpirationTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceExpirationTypeCodes] from JSON.
  static ContractResourceExpirationTypeCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceExpirationTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceExpirationTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
