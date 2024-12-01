// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a Category of supply.
class SupplyType {
  // Private constructor for internal use (like enum)
  SupplyType._(this.fhirCode, {this.element});

  /// Factory constructor to create [SupplyType] from JSON.
  factory SupplyType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyType.elementOnly.withElement(element);
    }
    return SupplyType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SupplyType values
  /// central
  static final SupplyType central = SupplyType._(
    'central',
  );

  /// nonstock
  static final SupplyType nonstock = SupplyType._(
    'nonstock',
  );

  /// For instances where an Element is present but not value

  static final SupplyType elementOnly = SupplyType._('');

  /// List of all enum-like values
  static final List<SupplyType> values = [
    central,
    nonstock,
  ];

  /// Returns the enum value with an element attached
  SupplyType withElement(Element? newElement) {
    return SupplyType._(fhirCode, element: newElement);
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
