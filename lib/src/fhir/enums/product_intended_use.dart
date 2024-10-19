// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The overall intended use of a product.
@collection
class ProductIntendedUse {
  /// Constructor for internal use (like enum)
  ProductIntendedUse({this.fhirCode, this.element})
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

  /// ProductIntendedUse values
  /// Prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Prevention = ProductIntendedUse(
    fhirCode: 'Prevention',
  );

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Treatment = ProductIntendedUse(
    fhirCode: 'Treatment',
  );

  /// Alleviation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Alleviation = ProductIntendedUse(
    fhirCode: 'Alleviation',
  );

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Diagnosis = ProductIntendedUse(
    fhirCode: 'Diagnosis',
  );

  /// Monitoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductIntendedUse Monitoring = ProductIntendedUse(
    fhirCode: 'Monitoring',
  );

  /// For instances where an Element is present but not value

  static final ProductIntendedUse elementOnly = ProductIntendedUse();

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
    return ProductIntendedUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ProductIntendedUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductIntendedUse.$fhirCode';
}
