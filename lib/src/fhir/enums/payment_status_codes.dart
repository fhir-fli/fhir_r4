// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Payment Status codes.
class PaymentStatusCodes {
  // Private constructor for internal use (like enum)
  PaymentStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [PaymentStatusCodes] from JSON.
  factory PaymentStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentStatusCodes.elementOnly.withElement(element);
    }
    return PaymentStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PaymentStatusCodes values
  /// paid
  static final PaymentStatusCodes paid = PaymentStatusCodes._(
    'paid',
  );

  /// cleared
  static final PaymentStatusCodes cleared = PaymentStatusCodes._(
    'cleared',
  );

  /// For instances where an Element is present but not value

  static final PaymentStatusCodes elementOnly = PaymentStatusCodes._('');

  /// List of all enum-like values
  static final List<PaymentStatusCodes> values = [
    paid,
    cleared,
  ];

  /// Returns the enum value with an element attached
  PaymentStatusCodes withElement(Element? newElement) {
    return PaymentStatusCodes._(fhirCode, element: newElement);
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
