import 'package:fhir_r4/fhir_r4.dart';

/// Commonly used classifiers for evidence sets.
enum EvidenceClassifier {
  /// Display: COVID-19 specific article
  /// Definition: About COVID-19.
  COVID19Specific('COVID19Specific'),

  /// Display: COVID-19 relevant (but not specific) article
  /// Definition: Not about COVID-19 but relevant to COVID-19 management or understanding.
  COVID19Relevant('COVID19Relevant'),

  /// Display: COVID-19 human data in population, exposure, or outcome
  /// Definition: contains human COVID-19 disease in the research data as any variable (population, exposure or outcome).
  COVID19HumanResearch('COVID19HumanResearch'),

  /// Display: Article includes original research
  /// Definition: such as randomized trial, observational study.
  OriginalResearch('OriginalResearch'),

  /// Display: Article includes synthesis of research
  /// Definition: such as systematic review, meta-analysis, rapid review.
  ResearchSynthesis('ResearchSynthesis'),

  /// Display: Article includes guideline
  /// Definition: for clinical practice guidelines.
  Guideline('Guideline'),

  /// Display: Article provides protocol without results
  /// Definition: for research protocols.
  ResearchProtocol('ResearchProtocol'),

  /// Display: Article is neither research nor guideline
  /// Definition: for things that are not research reports, research protocols or guidelines.
  NotResearchNotGuideline('NotResearchNotGuideline'),

  /// Display: Article about treatment
  /// Definition: about therapeutic interventions.
  Treatment('Treatment'),

  /// Display: Article about prevention and control
  /// Definition: about preventive care and interventions.
  PreventionAndControl('PreventionAndControl'),

  /// Display: Article about diagnosis
  /// Definition: about methods to distinguish having or not having a condition.
  Diagnosis('Diagnosis'),

  /// Display: Article about prognosis or prediction
  /// Definition: about predicting risk for something or risk factors for it.
  PrognosisPrediction('PrognosisPrediction'),

  /// Display: Rated as yes, affirmative, positive, present, or include
  /// Definition:
  RatedAsYes('RatedAsYes'),

  /// Display: Rated as no, negative, absent, or exclude
  /// Definition: Rated as no, negative, absent, or exclude.
  RatedAsNo('RatedAsNo'),

  /// Display: Not rated, not assessed
  /// Definition: Neither rated as yes nor rated as no.
  NotAssessed('NotAssessed'),

  /// Display: classified as randomized controlled trial
  /// Definition: classified as randomized controlled trial.
  RatedAsRCT('RatedAsRCT'),

  /// Display: classified as nonrandomized controlled trial (experimental)
  /// Definition: classified as nonrandomized controlled trial (experimental).
  RatedAsControlledTrial('RatedAsControlledTrial'),

  /// Display: classified as comparative cohort study (observational)
  /// Definition: classified as comparative cohort study (observational).
  RatedAsComparativeCohort('RatedAsComparativeCohort'),

  /// Display: classified as case-control study
  /// Definition: classified as case-control study.
  RatedAsCaseControl('RatedAsCaseControl'),

  /// Display: classified as uncontrolled cohort (case series)
  /// Definition: classified as uncontrolled cohort (case series).
  RatedAsUncontrolledSeries('RatedAsUncontrolledSeries'),

  /// Display: classified as mixed-methods study
  /// Definition: classified as mixed-methods study.
  RatedAsMixedMethods('RatedAsMixedMethods'),

  /// Display: classified as other concept (not elsewhere classified)
  /// Definition: classified as other concept (not elsewhere classified).
  RatedAsOther('RatedAsOther'),

  /// Display: Risk of bias assessment
  /// Definition: Risk of bias assessment.
  RiskOfBias('RiskOfBias'),

  /// Display: No blinding
  /// Definition: No blinding.
  NoBlinding('NoBlinding'),

  /// Display: Allocation concealment not stated
  /// Definition: Allocation concealment not stated.
  AllocConcealNotStated('AllocConcealNotStated'),

  /// Display: Early trial termination
  /// Definition: Early trial termination.
  EarlyTrialTermination('EarlyTrialTermination'),

  /// Display: No intention-to-treat analysis
  /// Definition: No intention-to-treat analysis.
  NoITT('NoITT'),

  /// Display: Preprint (not final publication)
  /// Definition: Results presented in preprint (pre-final publication) form.
  Preprint('Preprint'),

  /// Display: Preliminary analysis
  /// Definition: Preliminary analysis.
  PreliminaryAnalysis('PreliminaryAnalysis'),

  /// Display: Baseline imbalances
  /// Definition: Differences between groups at start of trial may confound or bias the findings.
  BaselineImbalance('BaselineImbalance'),

  /// Display: Subgroup analysis
  /// Definition: Subgroup analysis.
  SubgroupAnalysis('SubgroupAnalysis'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceClassifier(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceClassifier fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceClassifier.elementOnly.withElement(element);
    }
    return EvidenceClassifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceClassifier withElement(Element? newElement) {
    return EvidenceClassifier.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
