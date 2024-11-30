// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The overall intended use of a product.
class ProductIntendedUse {
  // Private constructor for internal use (like enum)
  ProductIntendedUse._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductIntendedUse values
  /// Prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Prevention = ProductIntendedUse._(
    'Prevention',
  );

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Treatment = ProductIntendedUse._(
    'Treatment',
  );

  /// Alleviation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Alleviation = ProductIntendedUse._(
    'Alleviation',
  );

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Diagnosis = ProductIntendedUse._(
    'Diagnosis',
  );

  /// Monitoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Monitoring = ProductIntendedUse._(
    'Monitoring',
  );

  /// For instances where an Element is present but not value

  static final ProductIntendedUse elementOnly = ProductIntendedUse._('');

  /// List of all enum-like values
  static final List<ProductIntendedUse> values = [
    Prevention,
    Treatment,
    Alleviation,
    Diagnosis,
    Monitoring,
  ];

  /// Returns the enum value with an element attached
  ProductIntendedUse withElement(Element? newElement) {
    return ProductIntendedUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductIntendedUse] from JSON.
  static ProductIntendedUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductIntendedUse.elementOnly.withElement(element);
    }
    return ProductIntendedUse._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
