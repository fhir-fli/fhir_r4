// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Payment Status codes.
enum PaymentStatusCodes {
  /// Display: Paid
  /// Definition: The payment has been sent physically or electronically.
  paid('paid'),

  /// Display: Cleared
  /// Definition: The payment has been received by the payee.
  cleared('cleared'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PaymentStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PaymentStatusCodes] instances.
  static PaymentStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentStatusCodes.elementOnly.withElement(
        element,
      );
    }
    return PaymentStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PaymentStatusCodes withElement(Element? newElement) {
    return PaymentStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
