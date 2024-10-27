// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
class PaymentAdjustmentReasonCodes {
  // Private constructor for internal use (like enum)
  PaymentAdjustmentReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PaymentAdjustmentReasonCodes values
  /// a001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentAdjustmentReasonCodes a001 =
      PaymentAdjustmentReasonCodes._(
    'a001',
  );

  /// a002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentAdjustmentReasonCodes a002 =
      PaymentAdjustmentReasonCodes._(
    'a002',
  );

  /// For instances where an Element is present but not value

  static final PaymentAdjustmentReasonCodes elementOnly =
      PaymentAdjustmentReasonCodes._('');

  /// List of all enum-like values
  static final List<PaymentAdjustmentReasonCodes> values = [
    a001,
    a002,
  ];

  /// Returns the enum value with an element attached
  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PaymentAdjustmentReasonCodes] from JSON.
  static PaymentAdjustmentReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentAdjustmentReasonCodes.elementOnly.withElement(element);
    }
    return PaymentAdjustmentReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
