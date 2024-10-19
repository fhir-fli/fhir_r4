// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Relationship to another Medicinal Product.
@collection
class ProductCrossReferenceType {
  /// Constructor for internal use (like enum)
  ProductCrossReferenceType({this.fhirCode, this.element})
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

  /// ProductCrossReferenceType values
  /// InvestigationalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType InvestigationalProduct =
      ProductCrossReferenceType(
    fhirCode: 'InvestigationalProduct',
  );

  /// VirtualProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType VirtualProduct =
      ProductCrossReferenceType(
    fhirCode: 'VirtualProduct',
  );

  /// ActualProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType ActualProduct =
      ProductCrossReferenceType(
    fhirCode: 'ActualProduct',
  );

  /// BrandedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType BrandedProduct =
      ProductCrossReferenceType(
    fhirCode: 'BrandedProduct',
  );

  /// GenericProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType GenericProduct =
      ProductCrossReferenceType(
    fhirCode: 'GenericProduct',
  );

  /// Parallel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductCrossReferenceType Parallel = ProductCrossReferenceType(
    fhirCode: 'Parallel',
  );

  /// For instances where an Element is present but not value

  static final ProductCrossReferenceType elementOnly =
      ProductCrossReferenceType();

  /// List of all enum-like values
  static final List<ProductCrossReferenceType> values = [
    InvestigationalProduct,
    VirtualProduct,
    ActualProduct,
    BrandedProduct,
    GenericProduct,
    Parallel,
  ];

  /// Returns the enum value with an element attached
  ProductCrossReferenceType withElement(Element? newElement) {
    return ProductCrossReferenceType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductCrossReferenceType] from JSON.
  static ProductCrossReferenceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly.withElement(element);
    }
    return ProductCrossReferenceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductCrossReferenceType.$fhirCode';
}
