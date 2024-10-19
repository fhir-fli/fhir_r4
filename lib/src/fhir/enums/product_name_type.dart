// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of a name for a Medicinal Product.
class ProductNameType {
  // Private constructor for internal use (like enum)
  ProductNameType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductNameType values
  /// BAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType BAN = ProductNameType._(
    'BAN',
  );

  /// INN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType INN = ProductNameType._(
    'INN',
  );

  /// INNM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType INNM = ProductNameType._(
    'INNM',
  );

  /// pINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType pINN = ProductNameType._(
    'pINN',
  );

  /// rINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType rINN = ProductNameType._(
    'rINN',
  );

  /// For instances where an Element is present but not value

  static final ProductNameType elementOnly = ProductNameType._('');

  /// List of all enum-like values
  static final List<ProductNameType> values = [
    BAN,
    INN,
    INNM,
    pINN,
    rINN,
  ];

  /// Returns the enum value with an element attached
  ProductNameType withElement(Element? newElement) {
    return ProductNameType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductNameType] from JSON.
  static ProductNameType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNameType.elementOnly.withElement(element);
    }
    return ProductNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductNameType.$fhirCode';
}
