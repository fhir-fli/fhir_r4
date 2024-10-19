// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes indicating the kind of the price component.
@Entity()
class InvoicePriceComponentType extends FhirCode {
  /// Factory constructor to create [InvoicePriceComponentType] from JSON.
  factory InvoicePriceComponentType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly(element);
    }
    if (values.contains(value)) {
      return InvoicePriceComponentType._(value, element);
    }
    throw ArgumentError(
      'InvoicePriceComponentType.fromJson: JSON value is not a valid value',
    );
  }

  /// base
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.base([this.element])
      : dbValue = 'base',
        super('base', element);

  /// surcharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.surcharge([this.element])
      : dbValue = 'surcharge',
        super('surcharge', element);

  /// deduction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.deduction([this.element])
      : dbValue = 'deduction',
        super('deduction', element);

  /// discount
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.discount([this.element])
      : dbValue = 'discount',
        super('discount', element);

  /// tax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.tax([this.element])
      : dbValue = 'tax',
        super('tax', element);

  /// informational
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvoicePriceComponentType.informational([this.element])
      : dbValue = 'informational',
        super('informational', element);

  /// For instances where an Element is present but not value

  InvoicePriceComponentType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  InvoicePriceComponentType._(super.input, [super.element])
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
    'base',
    'surcharge',
    'deduction',
    'discount',
    'tax',
    'informational',
  ];

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvoicePriceComponentType.$value';
}
