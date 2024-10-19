// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Payment Type codes.
@collection
class PaymentTypeCodes {
  /// Constructor for internal use (like enum)
  PaymentTypeCodes({this.fhirCode, this.element})
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

  /// PaymentTypeCodes values
  /// payment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes payment = PaymentTypeCodes(
    fhirCode: 'payment',
  );

  /// adjustment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes adjustment = PaymentTypeCodes(
    fhirCode: 'adjustment',
  );

  /// advance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PaymentTypeCodes advance = PaymentTypeCodes(
    fhirCode: 'advance',
  );

  /// For instances where an Element is present but not value

  static final PaymentTypeCodes elementOnly = PaymentTypeCodes();

  /// List of all enum-like values
  static final List<PaymentTypeCodes> values = [
    payment,
    adjustment,
    advance,
  ];

  /// Returns the enum value with an element attached
  PaymentTypeCodes withElement(Element? newElement) {
    return PaymentTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
