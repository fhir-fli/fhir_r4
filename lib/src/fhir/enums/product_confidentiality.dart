// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Confidentiality rating, e.g. commercial sensitivity for a Medicinal Product.
@collection
class ProductConfidentiality {
  /// Constructor for internal use (like enum)
  ProductConfidentiality({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductConfidentiality values
  /// CommerciallySensitive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductConfidentiality CommerciallySensitive =
      ProductConfidentiality(
    fhirCode: 'CommerciallySensitive',
  );

  /// NotCommerciallySensitive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductConfidentiality NotCommerciallySensitive =
      ProductConfidentiality(
    fhirCode: 'NotCommerciallySensitive',
  );

  /// For instances where an Element is present but not value

  static final ProductConfidentiality elementOnly = ProductConfidentiality();

  /// List of all enum-like values
  static final List<ProductConfidentiality> values = [
    CommerciallySensitive,
    NotCommerciallySensitive,
  ];

  /// Returns the enum value with an element attached
  ProductConfidentiality withElement(Element? newElement) {
    return ProductConfidentiality(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductConfidentiality] from JSON.
  static ProductConfidentiality fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductConfidentiality.elementOnly.withElement(element);
    }
    return ProductConfidentiality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductConfidentiality.$fhirCode';
}
