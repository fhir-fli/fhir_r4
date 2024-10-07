import 'package:json_annotation/json_annotation.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
enum ResearchStudyPhase {
  /// Display: N/A
  /// Definition: Trials without phases (for example, studies of devices or behavioral interventions).
  @JsonValue('n-a')
  n_a,
  /// Display: Early Phase 1
  /// Definition: Designation for optional exploratory trials conducted in accordance with the United States Food and Drug Administration's (FDA) 2006 Guidance on Exploratory Investigational New Drug (IND) Studies. Formerly called Phase 0.
  @JsonValue('early-phase-1')
  early_phase_1,
  /// Display: Phase 1
  /// Definition: Includes initial studies to determine the metabolism and pharmacologic actions of drugs in humans, the side effects associated with increasing doses, and to gain early evidence of effectiveness; may include healthy participants and/or patients.
  @JsonValue('phase-1')
  phase_1,
  /// Display: Phase 1/Phase 2
  /// Definition: Trials that are a combination of phases 1 and 2.
  @JsonValue('phase-1-phase-2')
  phase_1_phase_2,
  /// Display: Phase 2
  /// Definition: Includes controlled clinical studies conducted to evaluate the effectiveness of the drug for a particular indication or indications in participants with the disease or condition under study and to determine the common short-term side effects and risks.
  @JsonValue('phase-2')
  phase_2,
  /// Display: Phase 2/Phase 3
  /// Definition: Trials that are a combination of phases 2 and 3.
  @JsonValue('phase-2-phase-3')
  phase_2_phase_3,
  /// Display: Phase 3
  /// Definition: Includes trials conducted after preliminary evidence suggesting effectiveness of the drug has been obtained, and are intended to gather additional information to evaluate the overall benefit-risk relationship of the drug.
  @JsonValue('phase-3')
  phase_3,
  /// Display: Phase 4
  /// Definition: Studies of FDA-approved drugs to delineate additional information including the drug's risks, benefits, and optimal use.
  @JsonValue('phase-4')
  phase_4,
;

@override
  String toString() {
      switch(this) {
        case n_a: return 'n-a';
        case early_phase_1: return 'early-phase-1';
        case phase_1: return 'phase-1';
        case phase_1_phase_2: return 'phase-1-phase-2';
        case phase_2: return 'phase-2';
        case phase_2_phase_3: return 'phase-2-phase-3';
        case phase_3: return 'phase-3';
        case phase_4: return 'phase-4';
      }
      }
String toJson() => toString();
  ResearchStudyPhase fromString(String str) {
    switch(str) {
      case 'n-a': return ResearchStudyPhase.n_a;
      case 'early-phase-1': return ResearchStudyPhase.early_phase_1;
      case 'phase-1': return ResearchStudyPhase.phase_1;
      case 'phase-1-phase-2': return ResearchStudyPhase.phase_1_phase_2;
      case 'phase-2': return ResearchStudyPhase.phase_2;
      case 'phase-2-phase-3': return ResearchStudyPhase.phase_2_phase_3;
      case 'phase-3': return ResearchStudyPhase.phase_3;
      case 'phase-4': return ResearchStudyPhase.phase_4;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ResearchStudyPhase fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

