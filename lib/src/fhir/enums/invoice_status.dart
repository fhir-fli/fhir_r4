// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatus {
  // Private constructor for internal use (like enum)
  InvoiceStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [InvoiceStatus] from JSON.
  factory InvoiceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    }
    return InvoiceStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InvoiceStatus values
  /// draft
  static final InvoiceStatus draft = InvoiceStatus._(
    'draft',
  );

  /// issued
  static final InvoiceStatus issued = InvoiceStatus._(
    'issued',
  );

  /// balanced
  static final InvoiceStatus balanced = InvoiceStatus._(
    'balanced',
  );

  /// cancelled
  static final InvoiceStatus cancelled = InvoiceStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final InvoiceStatus entered_in_error = InvoiceStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final InvoiceStatus elementOnly = InvoiceStatus._('');

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
    return InvoiceStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
