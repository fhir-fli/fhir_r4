// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Payment Type codes.
class PaymentTypeCodes {
  // Private constructor for internal use (like enum)
  PaymentTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PaymentTypeCodes values
  /// payment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes payment = PaymentTypeCodes._(
    'payment',
  );

  /// adjustment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes adjustment = PaymentTypeCodes._(
    'adjustment',
  );

  /// advance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes advance = PaymentTypeCodes._(
    'advance',
  );

  /// For instances where an Element is present but not value

  static final PaymentTypeCodes elementOnly = PaymentTypeCodes._('');

  /// List of all enum-like values
  static final List<PaymentTypeCodes> values = [
    payment,
    adjustment,
    advance,
  ];

  /// Returns the enum value with an element attached
  PaymentTypeCodes withElement(Element? newElement) {
    return PaymentTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PaymentTypeCodes] from JSON.
  static PaymentTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentTypeCodes.elementOnly.withElement(element);
    }
    return PaymentTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PaymentTypeCodes.$fhirCode';
}
