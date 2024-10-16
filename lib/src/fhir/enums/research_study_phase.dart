import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
enum ResearchStudyPhase {
  /// Display: N/A
  /// Definition: Trials without phases (for example, studies of devices or behavioral interventions).
  n_a('n-a'),

  /// Display: Early Phase 1
  /// Definition: Designation for optional exploratory trials conducted in accordance with the United States Food and Drug Administration's (FDA) 2006 Guidance on Exploratory Investigational New Drug (IND) Studies. Formerly called Phase 0.
  early_phase_1('early-phase-1'),

  /// Display: Phase 1
  /// Definition: Includes initial studies to determine the metabolism and pharmacologic actions of drugs in humans, the side effects associated with increasing doses, and to gain early evidence of effectiveness; may include healthy participants and/or patients.
  phase_1('phase-1'),

  /// Display: Phase 1/Phase 2
  /// Definition: Trials that are a combination of phases 1 and 2.
  phase_1_phase_2('phase-1-phase-2'),

  /// Display: Phase 2
  /// Definition: Includes controlled clinical studies conducted to evaluate the effectiveness of the drug for a particular indication or indications in participants with the disease or condition under study and to determine the common short-term side effects and risks.
  phase_2('phase-2'),

  /// Display: Phase 2/Phase 3
  /// Definition: Trials that are a combination of phases 2 and 3.
  phase_2_phase_3('phase-2-phase-3'),

  /// Display: Phase 3
  /// Definition: Includes trials conducted after preliminary evidence suggesting effectiveness of the drug has been obtained, and are intended to gather additional information to evaluate the overall benefit-risk relationship of the drug.
  phase_3('phase-3'),

  /// Display: Phase 4
  /// Definition: Studies of FDA-approved drugs to delineate additional information including the drug's risks, benefits, and optimal use.
  phase_4('phase-4'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResearchStudyPhase(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResearchStudyPhase fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPhase.elementOnly.withElement(element);
    }
    return ResearchStudyPhase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResearchStudyPhase withElement(Element? newElement) {
    return ResearchStudyPhase.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
