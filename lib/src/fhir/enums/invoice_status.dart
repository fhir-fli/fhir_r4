import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an Invoice.
enum InvoiceStatus {
  /// Display: draft
  /// Definition: the invoice has been prepared but not yet finalized.
  draft('draft'),

  /// Display: issued
  /// Definition: the invoice has been finalized and sent to the recipient.
  issued('issued'),

  /// Display: balanced
  /// Definition: the invoice has been balaced / completely paid.
  balanced('balanced'),

  /// Display: cancelled
  /// Definition: the invoice was cancelled.
  cancelled('cancelled'),

  /// Display: entered in error
  /// Definition: the invoice was determined as entered in error before it was issued.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const InvoiceStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static InvoiceStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    }
    return InvoiceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
