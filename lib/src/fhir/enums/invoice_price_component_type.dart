// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the kind of the price component.
class InvoicePriceComponentType {
  // Private constructor for internal use (like enum)
  InvoicePriceComponentType._(this.fhirCode, {this.element});

  /// Factory constructor to create [InvoicePriceComponentType] from JSON.
  factory InvoicePriceComponentType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    }
    return InvoicePriceComponentType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InvoicePriceComponentType values
  /// base
  static final InvoicePriceComponentType base = InvoicePriceComponentType._(
    'base',
  );

  /// surcharge
  static final InvoicePriceComponentType surcharge =
      InvoicePriceComponentType._(
    'surcharge',
  );

  /// deduction
  static final InvoicePriceComponentType deduction =
      InvoicePriceComponentType._(
    'deduction',
  );

  /// discount
  static final InvoicePriceComponentType discount = InvoicePriceComponentType._(
    'discount',
  );

  /// tax
  static final InvoicePriceComponentType tax = InvoicePriceComponentType._(
    'tax',
  );

  /// informational
  static final InvoicePriceComponentType informational =
      InvoicePriceComponentType._(
    'informational',
  );

  /// For instances where an Element is present but not value

  static final InvoicePriceComponentType elementOnly =
      InvoicePriceComponentType._('');

  /// List of all enum-like values
  static final List<InvoicePriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType._(fhirCode, element: newElement);
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
