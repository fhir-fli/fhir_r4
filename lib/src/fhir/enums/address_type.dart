// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of an address (physical / postal).
class AddressType {
  // Private constructor for internal use (like enum)
  AddressType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AddressType values
  /// postal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType postal = AddressType._(
    'postal',
  );

  /// physical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType physical = AddressType._(
    'physical',
  );

  /// both
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType both = AddressType._(
    'both',
  );

  /// For instances where an Element is present but not value

  static final AddressType elementOnly = AddressType._('');

  /// List of all enum-like values
  static final List<AddressType> values = [
    postal,
    physical,
    both,
  ];

  /// Returns the enum value with an element attached
  AddressType withElement(Element? newElement) {
    return AddressType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AddressType] from JSON.
  static AddressType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    }
    return AddressType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AddressType.$fhirCode';
}
