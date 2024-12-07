// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the kind of the price component.
class InvoicePriceComponentType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InvoicePriceComponentType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [InvoicePriceComponentType] from JSON.
  factory InvoicePriceComponentType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoicePriceComponentType cannot be constructed from JSON.',
      );
    }
    return InvoicePriceComponentType._(value: value, element: element);
  }

  /// base
  static final InvoicePriceComponentType base = InvoicePriceComponentType._(
    value: 'base',
  );

  /// surcharge
  static final InvoicePriceComponentType surcharge =
      InvoicePriceComponentType._(
    value: 'surcharge',
  );

  /// deduction
  static final InvoicePriceComponentType deduction =
      InvoicePriceComponentType._(
    value: 'deduction',
  );

  /// discount
  static final InvoicePriceComponentType discount = InvoicePriceComponentType._(
    value: 'discount',
  );

  /// tax
  static final InvoicePriceComponentType tax = InvoicePriceComponentType._(
    value: 'tax',
  );

  /// informational
  static final InvoicePriceComponentType informational =
      InvoicePriceComponentType._(
    value: 'informational',
  );

  /// For instances where an Element is present but not value

  static final InvoicePriceComponentType elementOnly =
      InvoicePriceComponentType._(value: '');

  /// List of all enum-like values
  static final List<InvoicePriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Clones the current instance
  @override
  InvoicePriceComponentType clone() => InvoicePriceComponentType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType._(value: value, element: newElement);
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
  InvoicePriceComponentType copyWith({
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
    return InvoicePriceComponentType._(
      value: newValue ?? value,
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
