// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
enum ExampleMessageReasonCodes {
  /// Display: Admit
  /// Definition: The patient has been admitted.
  admit('admit'),

  /// Display: Discharge
  /// Definition: The patient has been discharged.
  discharge('discharge'),

  /// Display: Absent
  /// Definition: The patient has temporarily left the institution.
  absent('absent'),

  /// Display: Returned
  /// Definition: The patient has returned from a temporary absence.
  return_('return'),

  /// Display: Moved
  /// Definition: The patient has been moved to a new location.
  moved('moved'),

  /// Display: Edit
  /// Definition: Encounter details have been updated (e.g. to correct a coding error).
  edit('edit'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleMessageReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleMessageReasonCodes] instances.
  static ExampleMessageReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly.withElement(
        element,
      );
    }
    return ExampleMessageReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
