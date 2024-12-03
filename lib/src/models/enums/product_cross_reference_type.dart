// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Relationship to another Medicinal Product.
class ProductCrossReferenceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductCrossReferenceType._(super.value, [super.element]);

  /// Factory constructor to create [ProductCrossReferenceType] from JSON.
  factory ProductCrossReferenceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProductCrossReferenceType cannot be constructed from JSON.',
      );
    }
    return ProductCrossReferenceType._(value, element);
  }

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

  /// Clones the current instance
  @override
  ProductCrossReferenceType clone() => ProductCrossReferenceType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProductCrossReferenceType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProductCrossReferenceType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProductCrossReferenceType withElement(Element? newElement) {
    return ProductCrossReferenceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProductCrossReferenceType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProductCrossReferenceType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
