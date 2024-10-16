import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the assessment of whether the entity caused the event.
enum AdverseEventCausalityAssessment {
  /// Display: Certain
  /// Definition: i) Event or laboratory test abnormality, with plausible time relationship to drug intake; ii) Cannot be explained by disease or other drugs; iii) Response to withdrawal plausible (pharmacologically, pathologically); iv) Event definitive pharmacologically or phenomenologically (i.e. an objective and specific medical disorder or a recognized pharmacological phenomenon); or v) Re-challenge satisfactory, if necessary.
  Certain('Certain'),

  /// Display: Probably/Likely
  /// Definition: i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Unlikely to be attributed to disease or other drugs; iii) Response to withdrawal clinically reasonable; or iv) Re-challenge not required.
  Probably_Likely('Probably-Likely'),

  /// Display: Possible
  /// Definition: i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Could also be explained by disease or other drugs; or iii) Information on drug withdrawal may be lacking or unclear.
  Possible('Possible'),

  /// Display: Unlikely
  /// Definition: i) Event or laboratory test abnormality, with a time to drug intake that makes a relationship improbable (but not impossible); or ii) Disease or other drugs provide plausible explanations.
  Unlikely('Unlikely'),

  /// Display: Conditional/Classified
  /// Definition: i) Event or laboratory test abnormality; ii) More data for proper assessment needed; or iii) Additional data under examination.
  Conditional_Classified('Conditional-Classified'),

  /// Display: Unassessable/Unclassifiable
  /// Definition: i) Report suggesting an adverse reaction; ii) Cannot be judged because information is insufficient or contradictory; or iii) Data cannot be supplemented or verified.
  Unassessable_Unclassifiable('Unassessable-Unclassifiable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventCausalityAssessment(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventCausalityAssessment fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityAssessment.elementOnly.withElement(element);
    }
    return AdverseEventCausalityAssessment.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventCausalityAssessment withElement(Element? newElement) {
    return AdverseEventCausalityAssessment.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
