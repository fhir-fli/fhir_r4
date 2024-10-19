// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Payment Type codes.
@Entity()
class PaymentTypeCodes extends FhirCode {
  /// Factory constructor to create [PaymentTypeCodes] from JSON.
  factory PaymentTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return PaymentTypeCodes._(value, element);
    }
    throw ArgumentError(
      'PaymentTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// payment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PaymentTypeCodes.payment([this.element])
      : dbValue = 'payment',
        super('payment', element);

  /// adjustment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PaymentTypeCodes.adjustment([this.element])
      : dbValue = 'adjustment',
        super('adjustment', element);

  /// advance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PaymentTypeCodes.advance([this.element])
      : dbValue = 'advance',
        super('advance', element);

  /// For instances where an Element is present but not value

  PaymentTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PaymentTypeCodes._(super.input, [super.element])
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
    'payment',
    'adjustment',
    'advance',
  ];

  /// Returns the enum value with an element attached
  PaymentTypeCodes withElement(Element? newElement) {
    return PaymentTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PaymentTypeCodes.$value';
}
