// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const InvoiceStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [InvoiceStatus] instances.
  static InvoiceStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    }
    return InvoiceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
