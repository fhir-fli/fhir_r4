// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the kind of the price component.
enum InvoicePriceComponentType {
  /// Display: base price
  /// Definition: the amount is the base price used for calculating the total price before applying surcharges, discount or taxes.
  base('base'),

  /// Display: surcharge
  /// Definition: the amount is a surcharge applied on the base price.
  surcharge('surcharge'),

  /// Display: deduction
  /// Definition: the amount is a deduction applied on the base price.
  deduction('deduction'),

  /// Display: discount
  /// Definition: the amount is a discount applied on the base price.
  discount('discount'),

  /// Display: tax
  /// Definition: the amount is the tax component of the total price.
  tax('tax'),

  /// Display: informational
  /// Definition: the amount is of informational character, it has not been applied in the calculation of the total price.
  informational('informational'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const InvoicePriceComponentType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [InvoicePriceComponentType] instances.
  static InvoicePriceComponentType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    }
    return InvoicePriceComponentType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
