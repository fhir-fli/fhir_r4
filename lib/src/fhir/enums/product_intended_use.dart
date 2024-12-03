// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The overall intended use of a product.
class ProductIntendedUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductIntendedUse._(super.value, [super.element]);

  /// Factory constructor to create [ProductIntendedUse] from JSON.
  factory ProductIntendedUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductIntendedUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ProductIntendedUse cannot be constructed from JSON.');
    }
    return ProductIntendedUse._(value, element);
  }

  /// Prevention
  static final ProductIntendedUse Prevention = ProductIntendedUse._(
    'Prevention',
  );

  /// Treatment
  static final ProductIntendedUse Treatment = ProductIntendedUse._(
    'Treatment',
  );

  /// Alleviation
  static final ProductIntendedUse Alleviation = ProductIntendedUse._(
    'Alleviation',
  );

  /// Diagnosis
  static final ProductIntendedUse Diagnosis = ProductIntendedUse._(
    'Diagnosis',
  );

  /// Monitoring
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

  /// Clones the current instance
  @override
  ProductIntendedUse clone() => ProductIntendedUse._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProductIntendedUse setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProductIntendedUse._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProductIntendedUse withElement(Element? newElement) {
    return ProductIntendedUse._(value, newElement);
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
  ProductIntendedUse copyWith({
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
    return ProductIntendedUse._(
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
