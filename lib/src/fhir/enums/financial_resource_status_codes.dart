// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Status codes.
enum FinancialResourceStatusCodes {
  /// Display: Active
  /// Definition: The instance is currently in-force.
  active('active'),

  /// Display: Cancelled
  /// Definition: The instance is withdrawn, rescinded or reversed.
  cancelled('cancelled'),

  /// Display: Draft
  /// Definition: A new instance the contents of which is not complete.
  draft('draft'),

  /// Display: Entered in Error
  /// Definition: The instance was entered in error.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FinancialResourceStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FinancialResourceStatusCodes] instances.
  static FinancialResourceStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(
        element,
      );
    }
    return FinancialResourceStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
