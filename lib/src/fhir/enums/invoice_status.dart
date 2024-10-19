// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes identifying the lifecycle stage of an Invoice.
@Entity()
class InvoiceStatus extends FhirCode {
  /// Factory constructor to create [InvoiceStatus] from JSON.
  factory InvoiceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return InvoiceStatus._(value, element);
    }
    throw ArgumentError(
      'InvoiceStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoiceStatus.draft([this.element])
      : dbValue = 'draft',
        super('draft', element);

  /// issued
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoiceStatus.issued([this.element])
      : dbValue = 'issued',
        super('issued', element);

  /// balanced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoiceStatus.balanced([this.element])
      : dbValue = 'balanced',
        super('balanced', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoiceStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoiceStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  InvoiceStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  InvoiceStatus._(super.input, [super.element])
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
    'draft',
    'issued',
    'balanced',
    'cancelled',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvoiceStatus.$value';
}
