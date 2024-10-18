// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list) or to a workflow related list (i.e. consultation list).
enum ListEmptyReasons {
  /// Display: Nil Known
  /// Definition: Clinical judgment that there are no known items for this list after reasonable investigation. Note that this a positive statement by a clinical user, and not a default position asserted by a computer system in the lack of other information. Example uses: * For allergies: the patient or patient's agent/guardian has asserted that he/she is not aware of any allergies (NKA - nil known allergies) * For medications: the patient or patient's agent/guardian has asserted that the patient is known to be taking no medications * For diagnoses, problems and procedures: the patient or patient's agent/guardian has asserted that there is no known event to record.
  nilknown('nilknown'),

  /// Display: Not Asked
  /// Definition: The investigation to find out whether there are items for this list has not occurred.
  notasked('notasked'),

  /// Display: Information Withheld
  /// Definition: The content of the list was not provided due to privacy or confidentiality concerns. Note that it should not be assumed that this means that the particular information in question was withheld due to its contents - it can also be a policy decision.
  withheld('withheld'),

  /// Display: Unavailable
  /// Definition: Information to populate this list cannot be obtained; e.g. unconscious patient.
  unavailable('unavailable'),

  /// Display: Not Started
  /// Definition: The work to populate this list has not yet begun.
  notstarted('notstarted'),

  /// Display: Closed
  /// Definition: This list has now closed or has ceased to be relevant or useful.
  closed('closed'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ListEmptyReasons(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ListEmptyReasons] instances.
  static ListEmptyReasons fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListEmptyReasons.elementOnly.withElement(element);
    }
    return ListEmptyReasons.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ListEmptyReasons withElement(Element? newElement) {
    return ListEmptyReasons.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
