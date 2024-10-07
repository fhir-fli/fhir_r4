import 'package:json_annotation/json_annotation.dart';

/// Codes for the assessment of whether the entity caused the event.
enum AdverseEventCausalityAssessment {
  /// Display: Certain
  /// Definition: i) Event or laboratory test abnormality, with plausible time relationship to drug intake; ii) Cannot be explained by disease or other drugs; iii) Response to withdrawal plausible (pharmacologically, pathologically); iv) Event definitive pharmacologically or phenomenologically (i.e. an objective and specific medical disorder or a recognized pharmacological phenomenon); or v) Re-challenge satisfactory, if necessary.
  @JsonValue('Certain')
  Certain,
  /// Display: Probably/Likely
  /// Definition: i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Unlikely to be attributed to disease or other drugs; iii) Response to withdrawal clinically reasonable; or iv) Re-challenge not required.
  @JsonValue('Probably-Likely')
  Probably_Likely,
  /// Display: Possible
  /// Definition: i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Could also be explained by disease or other drugs; or iii) Information on drug withdrawal may be lacking or unclear.
  @JsonValue('Possible')
  Possible,
  /// Display: Unlikely
  /// Definition: i) Event or laboratory test abnormality, with a time to drug intake that makes a relationship improbable (but not impossible); or ii) Disease or other drugs provide plausible explanations.
  @JsonValue('Unlikely')
  Unlikely,
  /// Display: Conditional/Classified
  /// Definition: i) Event or laboratory test abnormality; ii) More data for proper assessment needed; or iii) Additional data under examination.
  @JsonValue('Conditional-Classified')
  Conditional_Classified,
  /// Display: Unassessable/Unclassifiable
  /// Definition: i) Report suggesting an adverse reaction; ii) Cannot be judged because information is insufficient or contradictory; or iii) Data cannot be supplemented or verified.
  @JsonValue('Unassessable-Unclassifiable')
  Unassessable_Unclassifiable,
;

@override
  String toString() {
      switch(this) {
        case Certain: return 'Certain';
        case Probably_Likely: return 'Probably-Likely';
        case Possible: return 'Possible';
        case Unlikely: return 'Unlikely';
        case Conditional_Classified: return 'Conditional-Classified';
        case Unassessable_Unclassifiable: return 'Unassessable-Unclassifiable';
      }
      }
String toJson() => toString();
  AdverseEventCausalityAssessment fromString(String str) {
    switch(str) {
      case 'Certain': return AdverseEventCausalityAssessment.Certain;
      case 'Probably-Likely': return AdverseEventCausalityAssessment.Probably_Likely;
      case 'Possible': return AdverseEventCausalityAssessment.Possible;
      case 'Unlikely': return AdverseEventCausalityAssessment.Unlikely;
      case 'Conditional-Classified': return AdverseEventCausalityAssessment.Conditional_Classified;
      case 'Unassessable-Unclassifiable': return AdverseEventCausalityAssessment.Unassessable_Unclassifiable;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AdverseEventCausalityAssessment fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

