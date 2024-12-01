// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Relationship to another Medicinal Product.
class ProductCrossReferenceType {
  // Private constructor for internal use (like enum)
  ProductCrossReferenceType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ProductCrossReferenceType] from JSON.
  factory ProductCrossReferenceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly.withElement(element);
    }
    return ProductCrossReferenceType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductCrossReferenceType values
  /// InvestigationalProduct
  static final ProductCrossReferenceType InvestigationalProduct =
      ProductCrossReferenceType._(
    'InvestigationalProduct',
  );

  /// VirtualProduct
  static final ProductCrossReferenceType VirtualProduct =
      ProductCrossReferenceType._(
    'VirtualProduct',
  );

  /// ActualProduct
  static final ProductCrossReferenceType ActualProduct =
      ProductCrossReferenceType._(
    'ActualProduct',
  );

  /// BrandedProduct
  static final ProductCrossReferenceType BrandedProduct =
      ProductCrossReferenceType._(
    'BrandedProduct',
  );

  /// GenericProduct
  static final ProductCrossReferenceType GenericProduct =
      ProductCrossReferenceType._(
    'GenericProduct',
  );

  /// Parallel
  static final ProductCrossReferenceType Parallel = ProductCrossReferenceType._(
    'Parallel',
  );

  /// For instances where an Element is present but not value

  static final ProductCrossReferenceType elementOnly =
      ProductCrossReferenceType._('');

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
    return ProductCrossReferenceType._(fhirCode, element: newElement);
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
