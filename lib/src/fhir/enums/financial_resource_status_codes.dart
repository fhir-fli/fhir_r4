// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Status codes.
class FinancialResourceStatusCodes {
  // Private constructor for internal use (like enum)
  FinancialResourceStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [FinancialResourceStatusCodes] from JSON.
  factory FinancialResourceStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    }
    return FinancialResourceStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FinancialResourceStatusCodes values
  /// active
  static final FinancialResourceStatusCodes active =
      FinancialResourceStatusCodes._(
    'active',
  );

  /// cancelled
  static final FinancialResourceStatusCodes cancelled =
      FinancialResourceStatusCodes._(
    'cancelled',
  );

  /// draft
  static final FinancialResourceStatusCodes draft =
      FinancialResourceStatusCodes._(
    'draft',
  );

  /// entered_in_error
  static final FinancialResourceStatusCodes entered_in_error =
      FinancialResourceStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FinancialResourceStatusCodes elementOnly =
      FinancialResourceStatusCodes._('');

  /// List of all enum-like values
  static final List<FinancialResourceStatusCodes> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes._(fhirCode, element: newElement);
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
