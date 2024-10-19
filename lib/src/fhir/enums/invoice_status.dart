// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes identifying the lifecycle stage of an Invoice.
@collection
class InvoiceStatus {
  /// Constructor for internal use (like enum)
  InvoiceStatus({this.fhirCode, this.element})
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

  /// InvoiceStatus values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoiceStatus draft = InvoiceStatus(
    fhirCode: 'draft',
  );

  /// issued
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoiceStatus issued = InvoiceStatus(
    fhirCode: 'issued',
  );

  /// balanced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoiceStatus balanced = InvoiceStatus(
    fhirCode: 'balanced',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoiceStatus cancelled = InvoiceStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvoiceStatus entered_in_error = InvoiceStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final InvoiceStatus elementOnly = InvoiceStatus();

  /// List of all enum-like values
  static final List<InvoiceStatus> values = [
    draft,
    issued,
    balanced,
    cancelled,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InvoiceStatus] from JSON.
  static InvoiceStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    }
    return InvoiceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvoiceStatus.$fhirCode';
}
