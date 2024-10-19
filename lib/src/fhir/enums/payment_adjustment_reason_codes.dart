// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
@Entity()
class PaymentAdjustmentReasonCodes extends FhirCode {
  /// Factory constructor to create [PaymentAdjustmentReasonCodes] from JSON.
  factory PaymentAdjustmentReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentAdjustmentReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return PaymentAdjustmentReasonCodes._(value, element);
    }
    throw ArgumentError(
      'PaymentAdjustmentReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// a001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PaymentAdjustmentReasonCodes.a001([this.element])
      : dbValue = 'a001',
        super('a001', element);

  /// a002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PaymentAdjustmentReasonCodes.a002([this.element])
      : dbValue = 'a002',
        super('a002', element);

  /// For instances where an Element is present but not value

  PaymentAdjustmentReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PaymentAdjustmentReasonCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'a001',
    'a002',
  ];

  /// Returns the enum value with an element attached
  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PaymentAdjustmentReasonCodes.$value';
}
