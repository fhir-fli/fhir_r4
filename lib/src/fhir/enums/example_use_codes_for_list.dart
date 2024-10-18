// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example use codes for the List resource - typical kinds of use.
enum ExampleUseCodesForList {
  /// Display: Alerts
  /// Definition: A list of alerts for the patient.
  alerts('alerts'),

  /// Display: Adverse Reactions
  /// Definition: A list of part adverse reactions.
  adverserxns('adverserxns'),

  /// Display: Allergies
  /// Definition: A list of Allergies for the patient.
  allergies('allergies'),

  /// Display: Medication List
  /// Definition: A list of medication statements for the patient.
  medications('medications'),

  /// Display: Problem List
  /// Definition: A list of problems that the patient is known of have (or have had in the past).
  problems('problems'),

  /// Display: Worklist
  /// Definition: A list of items that constitute a set of work to be performed (typically this code would be specialized for more specific uses, such as a ward round list).
  worklist('worklist'),

  /// Display: Waiting List
  /// Definition: A list of items waiting for an event (perhaps a surgical patient waiting list).
  waiting('waiting'),

  /// Display: Protocols
  /// Definition: A set of protocols to be followed.
  protocols('protocols'),

  /// Display: Care Plans
  /// Definition: A set of care plans that apply in a particular context of care.
  plans('plans'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleUseCodesForList(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleUseCodesForList] instances.
  static ExampleUseCodesForList fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleUseCodesForList.elementOnly.withElement(
        element,
      );
    }
    return ExampleUseCodesForList.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleUseCodesForList withElement(Element? newElement) {
    return ExampleUseCodesForList.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
