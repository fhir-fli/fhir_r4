// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of a name for a Medicinal Product.
class ProductNameType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductNameType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProductNameType] from JSON.
  factory ProductNameType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNameType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProductNameType cannot be constructed from JSON.',
      );
    }
    return ProductNameType._(value, element: element);
  }

  /// BAN
  static final ProductNameType BAN = ProductNameType._(
    'BAN',
  );

  /// INN
  static final ProductNameType INN = ProductNameType._(
    'INN',
  );

  /// INNM
  static final ProductNameType INNM = ProductNameType._(
    'INNM',
  );

  /// pINN
  static final ProductNameType pINN = ProductNameType._(
    'pINN',
  );

  /// rINN
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

  /// Clones the current instance
  @override
  ProductNameType clone() => ProductNameType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProductNameType withElement(Element? newElement) {
    return ProductNameType._(value, element: newElement);
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
  ProductNameType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProductNameType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
