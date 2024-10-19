// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Type of a name for a Medicinal Product.
@collection
class ProductNameType {
  /// Constructor for internal use (like enum)
  ProductNameType({this.fhirCode, this.element})
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

  /// ProductNameType values
  /// BAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType BAN = ProductNameType(
    fhirCode: 'BAN',
  );

  /// INN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType INN = ProductNameType(
    fhirCode: 'INN',
  );

  /// INNM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType INNM = ProductNameType(
    fhirCode: 'INNM',
  );

  /// pINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType pINN = ProductNameType(
    fhirCode: 'pINN',
  );

  /// rINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNameType rINN = ProductNameType(
    fhirCode: 'rINN',
  );

  /// For instances where an Element is present but not value

  static final ProductNameType elementOnly = ProductNameType();

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
    return ProductNameType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
