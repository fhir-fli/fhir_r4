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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const InvoicePriceComponentType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static InvoicePriceComponentType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    }
    return InvoicePriceComponentType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
