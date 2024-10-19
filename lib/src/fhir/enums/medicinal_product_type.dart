// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this Medicinal Product.
class MedicinalProductType {
  // Private constructor for internal use (like enum)
  MedicinalProductType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicinalProductType values
  /// MedicinalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductType MedicinalProduct = MedicinalProductType._(
    'MedicinalProduct',
  );

  /// InvestigationalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductType InvestigationalProduct =
      MedicinalProductType._(
    'InvestigationalProduct',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductType elementOnly = MedicinalProductType._('');

  /// List of all enum-like values
  static final List<MedicinalProductType> values = [
    MedicinalProduct,
    InvestigationalProduct,
  ];

  /// Returns the enum value with an element attached
  MedicinalProductType withElement(Element? newElement) {
    return MedicinalProductType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicinalProductType] from JSON.
  static MedicinalProductType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductType.elementOnly.withElement(element);
    }
    return MedicinalProductType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicinalProductType.$fhirCode';
}
