// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes indicating the kind of the price component.
@collection
class InvoicePriceComponentType {
  /// Constructor for internal use (like enum)
  InvoicePriceComponentType({this.fhirCode, this.element})
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

  /// InvoicePriceComponentType values
  /// base
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType base = InvoicePriceComponentType(
    fhirCode: 'base',
  );

  /// surcharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType surcharge = InvoicePriceComponentType(
    fhirCode: 'surcharge',
  );

  /// deduction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType deduction = InvoicePriceComponentType(
    fhirCode: 'deduction',
  );

  /// discount
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType discount = InvoicePriceComponentType(
    fhirCode: 'discount',
  );

  /// tax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType tax = InvoicePriceComponentType(
    fhirCode: 'tax',
  );

  /// informational
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoicePriceComponentType informational =
      InvoicePriceComponentType(
    fhirCode: 'informational',
  );

  /// For instances where an Element is present but not value

  static final InvoicePriceComponentType elementOnly =
      InvoicePriceComponentType();

  /// List of all enum-like values
  static final List<InvoicePriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InvoicePriceComponentType] from JSON.
  static InvoicePriceComponentType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    }
    return InvoicePriceComponentType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvoicePriceComponentType.$fhirCode';
}
