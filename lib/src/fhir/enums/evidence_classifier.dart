import 'package:json_annotation/json_annotation.dart';

/// Commonly used classifiers for evidence sets.
enum EvidenceClassifier {
  /// Display: COVID-19 specific article
  /// Definition: About COVID-19.
  @JsonValue('COVID19Specific')
  COVID19Specific,

  /// Display: COVID-19 relevant (but not specific) article
  /// Definition: Not about COVID-19 but relevant to COVID-19 management or understanding.
  @JsonValue('COVID19Relevant')
  COVID19Relevant,

  /// Display: COVID-19 human data in population, exposure, or outcome
  /// Definition: contains human COVID-19 disease in the research data as any variable (population, exposure or outcome).
  @JsonValue('COVID19HumanResearch')
  COVID19HumanResearch,

  /// Display: Article includes original research
  /// Definition: such as randomized trial, observational study.
  @JsonValue('OriginalResearch')
  OriginalResearch,

  /// Display: Article includes synthesis of research
  /// Definition: such as systematic review, meta-analysis, rapid review.
  @JsonValue('ResearchSynthesis')
  ResearchSynthesis,

  /// Display: Article includes guideline
  /// Definition: for clinical practice guidelines.
  @JsonValue('Guideline')
  Guideline,

  /// Display: Article provides protocol without results
  /// Definition: for research protocols.
  @JsonValue('ResearchProtocol')
  ResearchProtocol,

  /// Display: Article is neither research nor guideline
  /// Definition: for things that are not research reports, research protocols or guidelines.
  @JsonValue('NotResearchNotGuideline')
  NotResearchNotGuideline,

  /// Display: Article about treatment
  /// Definition: about therapeutic interventions.
  @JsonValue('Treatment')
  Treatment,

  /// Display: Article about prevention and control
  /// Definition: about preventive care and interventions.
  @JsonValue('PreventionAndControl')
  PreventionAndControl,

  /// Display: Article about diagnosis
  /// Definition: about methods to distinguish having or not having a condition.
  @JsonValue('Diagnosis')
  Diagnosis,

  /// Display: Article about prognosis or prediction
  /// Definition: about predicting risk for something or risk factors for it.
  @JsonValue('PrognosisPrediction')
  PrognosisPrediction,

  /// Display: Rated as yes, affirmative, positive, present, or include
  @JsonValue('RatedAsYes')
  RatedAsYes,

  /// Display: Rated as no, negative, absent, or exclude
  /// Definition: Rated as no, negative, absent, or exclude.
  @JsonValue('RatedAsNo')
  RatedAsNo,

  /// Display: Not rated, not assessed
  /// Definition: Neither rated as yes nor rated as no.
  @JsonValue('NotAssessed')
  NotAssessed,

  /// Display: classified as randomized controlled trial
  /// Definition: classified as randomized controlled trial.
  @JsonValue('RatedAsRCT')
  RatedAsRCT,

  /// Display: classified as nonrandomized controlled trial (experimental)
  /// Definition: classified as nonrandomized controlled trial (experimental).
  @JsonValue('RatedAsControlledTrial')
  RatedAsControlledTrial,

  /// Display: classified as comparative cohort study (observational)
  /// Definition: classified as comparative cohort study (observational).
  @JsonValue('RatedAsComparativeCohort')
  RatedAsComparativeCohort,

  /// Display: classified as case-control study
  /// Definition: classified as case-control study.
  @JsonValue('RatedAsCaseControl')
  RatedAsCaseControl,

  /// Display: classified as uncontrolled cohort (case series)
  /// Definition: classified as uncontrolled cohort (case series).
  @JsonValue('RatedAsUncontrolledSeries')
  RatedAsUncontrolledSeries,

  /// Display: classified as mixed-methods study
  /// Definition: classified as mixed-methods study.
  @JsonValue('RatedAsMixedMethods')
  RatedAsMixedMethods,

  /// Display: classified as other concept (not elsewhere classified)
  /// Definition: classified as other concept (not elsewhere classified).
  @JsonValue('RatedAsOther')
  RatedAsOther,

  /// Display: Risk of bias assessment
  /// Definition: Risk of bias assessment.
  @JsonValue('RiskOfBias')
  RiskOfBias,

  /// Display: No blinding
  /// Definition: No blinding.
  @JsonValue('NoBlinding')
  NoBlinding,

  /// Display: Allocation concealment not stated
  /// Definition: Allocation concealment not stated.
  @JsonValue('AllocConcealNotStated')
  AllocConcealNotStated,

  /// Display: Early trial termination
  /// Definition: Early trial termination.
  @JsonValue('EarlyTrialTermination')
  EarlyTrialTermination,

  /// Display: No intention-to-treat analysis
  /// Definition: No intention-to-treat analysis.
  @JsonValue('NoITT')
  NoITT,

  /// Display: Preprint (not final publication)
  /// Definition: Results presented in preprint (pre-final publication) form.
  @JsonValue('Preprint')
  Preprint,

  /// Display: Preliminary analysis
  /// Definition: Preliminary analysis.
  @JsonValue('PreliminaryAnalysis')
  PreliminaryAnalysis,

  /// Display: Baseline imbalances
  /// Definition: Differences between groups at start of trial may confound or bias the findings.
  @JsonValue('BaselineImbalance')
  BaselineImbalance,

  /// Display: Subgroup analysis
  /// Definition: Subgroup analysis.
  @JsonValue('SubgroupAnalysis')
  SubgroupAnalysis,
  ;

  @override
  String toString() {
    switch (this) {
      case COVID19Specific:
        return 'COVID19Specific';
      case COVID19Relevant:
        return 'COVID19Relevant';
      case COVID19HumanResearch:
        return 'COVID19HumanResearch';
      case OriginalResearch:
        return 'OriginalResearch';
      case ResearchSynthesis:
        return 'ResearchSynthesis';
      case Guideline:
        return 'Guideline';
      case ResearchProtocol:
        return 'ResearchProtocol';
      case NotResearchNotGuideline:
        return 'NotResearchNotGuideline';
      case Treatment:
        return 'Treatment';
      case PreventionAndControl:
        return 'PreventionAndControl';
      case Diagnosis:
        return 'Diagnosis';
      case PrognosisPrediction:
        return 'PrognosisPrediction';
      case RatedAsYes:
        return 'RatedAsYes';
      case RatedAsNo:
        return 'RatedAsNo';
      case NotAssessed:
        return 'NotAssessed';
      case RatedAsRCT:
        return 'RatedAsRCT';
      case RatedAsControlledTrial:
        return 'RatedAsControlledTrial';
      case RatedAsComparativeCohort:
        return 'RatedAsComparativeCohort';
      case RatedAsCaseControl:
        return 'RatedAsCaseControl';
      case RatedAsUncontrolledSeries:
        return 'RatedAsUncontrolledSeries';
      case RatedAsMixedMethods:
        return 'RatedAsMixedMethods';
      case RatedAsOther:
        return 'RatedAsOther';
      case RiskOfBias:
        return 'RiskOfBias';
      case NoBlinding:
        return 'NoBlinding';
      case AllocConcealNotStated:
        return 'AllocConcealNotStated';
      case EarlyTrialTermination:
        return 'EarlyTrialTermination';
      case NoITT:
        return 'NoITT';
      case Preprint:
        return 'Preprint';
      case PreliminaryAnalysis:
        return 'PreliminaryAnalysis';
      case BaselineImbalance:
        return 'BaselineImbalance';
      case SubgroupAnalysis:
        return 'SubgroupAnalysis';
    }
  }

  String toJson() => toString();
  static EvidenceClassifier fromString(String str) {
    switch (str) {
      case 'COVID19Specific':
        return EvidenceClassifier.COVID19Specific;
      case 'COVID19Relevant':
        return EvidenceClassifier.COVID19Relevant;
      case 'COVID19HumanResearch':
        return EvidenceClassifier.COVID19HumanResearch;
      case 'OriginalResearch':
        return EvidenceClassifier.OriginalResearch;
      case 'ResearchSynthesis':
        return EvidenceClassifier.ResearchSynthesis;
      case 'Guideline':
        return EvidenceClassifier.Guideline;
      case 'ResearchProtocol':
        return EvidenceClassifier.ResearchProtocol;
      case 'NotResearchNotGuideline':
        return EvidenceClassifier.NotResearchNotGuideline;
      case 'Treatment':
        return EvidenceClassifier.Treatment;
      case 'PreventionAndControl':
        return EvidenceClassifier.PreventionAndControl;
      case 'Diagnosis':
        return EvidenceClassifier.Diagnosis;
      case 'PrognosisPrediction':
        return EvidenceClassifier.PrognosisPrediction;
      case 'RatedAsYes':
        return EvidenceClassifier.RatedAsYes;
      case 'RatedAsNo':
        return EvidenceClassifier.RatedAsNo;
      case 'NotAssessed':
        return EvidenceClassifier.NotAssessed;
      case 'RatedAsRCT':
        return EvidenceClassifier.RatedAsRCT;
      case 'RatedAsControlledTrial':
        return EvidenceClassifier.RatedAsControlledTrial;
      case 'RatedAsComparativeCohort':
        return EvidenceClassifier.RatedAsComparativeCohort;
      case 'RatedAsCaseControl':
        return EvidenceClassifier.RatedAsCaseControl;
      case 'RatedAsUncontrolledSeries':
        return EvidenceClassifier.RatedAsUncontrolledSeries;
      case 'RatedAsMixedMethods':
        return EvidenceClassifier.RatedAsMixedMethods;
      case 'RatedAsOther':
        return EvidenceClassifier.RatedAsOther;
      case 'RiskOfBias':
        return EvidenceClassifier.RiskOfBias;
      case 'NoBlinding':
        return EvidenceClassifier.NoBlinding;
      case 'AllocConcealNotStated':
        return EvidenceClassifier.AllocConcealNotStated;
      case 'EarlyTrialTermination':
        return EvidenceClassifier.EarlyTrialTermination;
      case 'NoITT':
        return EvidenceClassifier.NoITT;
      case 'Preprint':
        return EvidenceClassifier.Preprint;
      case 'PreliminaryAnalysis':
        return EvidenceClassifier.PreliminaryAnalysis;
      case 'BaselineImbalance':
        return EvidenceClassifier.BaselineImbalance;
      case 'SubgroupAnalysis':
        return EvidenceClassifier.SubgroupAnalysis;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EvidenceClassifier fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
