// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
@collection
class PaymentAdjustmentReasonCodes {
  /// Constructor for internal use (like enum)
  PaymentAdjustmentReasonCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PaymentAdjustmentReasonCodes values
  /// a001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentAdjustmentReasonCodes a001 = PaymentAdjustmentReasonCodes(
    fhirCode: 'a001',
  );

  /// a002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentAdjustmentReasonCodes a002 = PaymentAdjustmentReasonCodes(
    fhirCode: 'a002',
  );

  /// For instances where an Element is present but not value

  static final PaymentAdjustmentReasonCodes elementOnly =
      PaymentAdjustmentReasonCodes();

  /// List of all enum-like values
  static final List<PaymentAdjustmentReasonCodes> values = [
    a001,
    a002,
  ];

  /// Returns the enum value with an element attached
  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PaymentAdjustmentReasonCodes.$fhirCode';
}
