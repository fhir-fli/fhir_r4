// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Applicable domain for this product (e.g. human, veterinary)
class MedicinalProductDomain {
  // Private constructor for internal use (like enum)
  MedicinalProductDomain._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicinalProductDomain values
  /// Human
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain Human = MedicinalProductDomain._(
    'Human',
  );

  /// Veterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain Veterinary = MedicinalProductDomain._(
    'Veterinary',
  );

  /// HumanAndVeterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain HumanAndVeterinary =
      MedicinalProductDomain._(
    'HumanAndVeterinary',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductDomain elementOnly =
      MedicinalProductDomain._('');

  /// List of all enum-like values
  static final List<MedicinalProductDomain> values = [
    Human,
    Veterinary,
    HumanAndVeterinary,
  ];

  /// Returns the enum value with an element attached
  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicinalProductDomain] from JSON.
  static MedicinalProductDomain fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly.withElement(element);
    }
    return MedicinalProductDomain._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
