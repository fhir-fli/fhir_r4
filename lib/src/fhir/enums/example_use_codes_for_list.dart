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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleUseCodesForList(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleUseCodesForList fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleUseCodesForList.elementOnly.withElement(element);
    }
    return ExampleUseCodesForList.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleUseCodesForList withElement(Element? newElement) {
    return ExampleUseCodesForList.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
