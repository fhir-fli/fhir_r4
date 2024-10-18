// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdverseEventCausalityAssessment(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdverseEventCausalityAssessment] instances.
  static AdverseEventCausalityAssessment fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityAssessment.elementOnly.withElement(
        element,
      );
    }
    return AdverseEventCausalityAssessment.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdverseEventCausalityAssessment withElement(Element? newElement) {
    return AdverseEventCausalityAssessment.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
