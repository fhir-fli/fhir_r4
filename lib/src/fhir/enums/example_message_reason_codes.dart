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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleMessageReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleMessageReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly.withElement(element);
    }
    return ExampleMessageReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
