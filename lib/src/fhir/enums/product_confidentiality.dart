// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Confidentiality rating, e.g. commercial sensitivity for a Medicinal Product.
class ProductConfidentiality extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductConfidentiality._(super.value, [super.element]);

  /// Factory constructor to create [ProductConfidentiality] from JSON.
  factory ProductConfidentiality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductConfidentiality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ProductConfidentiality cannot be constructed from JSON.');
    }
    return ProductConfidentiality._(value, element);
  }

  /// CommerciallySensitive
  static final ProductConfidentiality CommerciallySensitive =
      ProductConfidentiality._(
    'CommerciallySensitive',
  );

  /// NotCommerciallySensitive
  static final ProductConfidentiality NotCommerciallySensitive =
      ProductConfidentiality._(
    'NotCommerciallySensitive',
  );

  /// For instances where an Element is present but not value

  static final ProductConfidentiality elementOnly =
      ProductConfidentiality._('');

  /// List of all enum-like values
  static final List<ProductConfidentiality> values = [
    CommerciallySensitive,
    NotCommerciallySensitive,
  ];

  /// Clones the current instance
  @override
  ProductConfidentiality clone() => ProductConfidentiality._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProductConfidentiality setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProductConfidentiality._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProductConfidentiality withElement(Element? newElement) {
    return ProductConfidentiality._(value, newElement);
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
  ProductConfidentiality copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProductConfidentiality._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
