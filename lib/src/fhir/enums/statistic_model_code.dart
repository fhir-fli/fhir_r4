// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
@Entity()
class StatisticModelCode extends FhirCode {
  /// Factory constructor to create [StatisticModelCode] from JSON.
  factory StatisticModelCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticModelCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StatisticModelCode._(value, element);
    }
    throw ArgumentError(
      'StatisticModelCode.fromJson: JSON value is not a valid value',
    );
  }

  /// oneTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.oneTailedTest([this.element])
      : dbValue = 'oneTailedTest',
        super('oneTailedTest', element);

  /// twoTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.twoTailedTest([this.element])
      : dbValue = 'twoTailedTest',
        super('twoTailedTest', element);

  /// zTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.zTest([this.element])
      : dbValue = 'zTest',
        super('zTest', element);

  /// oneSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.oneSampleTTest([this.element])
      : dbValue = 'oneSampleTTest',
        super('oneSampleTTest', element);

  /// twoSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.twoSampleTTest([this.element])
      : dbValue = 'twoSampleTTest',
        super('twoSampleTTest', element);

  /// pairedTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.pairedTTest([this.element])
      : dbValue = 'pairedTTest',
        super('pairedTTest', element);

  /// chiSquareTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.chiSquareTest([this.element])
      : dbValue = 'chiSquareTest',
        super('chiSquareTest', element);

  /// chiSquareTestTrend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.chiSquareTestTrend([this.element])
      : dbValue = 'chiSquareTestTrend',
        super('chiSquareTestTrend', element);

  /// pearsonCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.pearsonCorrelation([this.element])
      : dbValue = 'pearsonCorrelation',
        super('pearsonCorrelation', element);

  /// anova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.anova([this.element])
      : dbValue = 'anova',
        super('anova', element);

  /// anovaOneWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.anovaOneWay([this.element])
      : dbValue = 'anovaOneWay',
        super('anovaOneWay', element);

  /// anovaTwoWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.anovaTwoWay([this.element])
      : dbValue = 'anovaTwoWay',
        super('anovaTwoWay', element);

  /// anovaTwoWayReplication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.anovaTwoWayReplication([this.element])
      : dbValue = 'anovaTwoWayReplication',
        super('anovaTwoWayReplication', element);

  /// manova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.manova([this.element])
      : dbValue = 'manova',
        super('manova', element);

  /// anovaThreeWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.anovaThreeWay([this.element])
      : dbValue = 'anovaThreeWay',
        super('anovaThreeWay', element);

  /// signTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.signTest([this.element])
      : dbValue = 'signTest',
        super('signTest', element);

  /// wilcoxonSignedRankTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.wilcoxonSignedRankTest([this.element])
      : dbValue = 'wilcoxonSignedRankTest',
        super('wilcoxonSignedRankTest', element);

  /// wilcoxonRankSumTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.wilcoxonRankSumTest([this.element])
      : dbValue = 'wilcoxonRankSumTest',
        super('wilcoxonRankSumTest', element);

  /// mannWhitneyUTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.mannWhitneyUTest([this.element])
      : dbValue = 'mannWhitneyUTest',
        super('mannWhitneyUTest', element);

  /// fishersExactTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.fishersExactTest([this.element])
      : dbValue = 'fishersExactTest',
        super('fishersExactTest', element);

  /// mcnemarsTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.mcnemarsTest([this.element])
      : dbValue = 'mcnemarsTest',
        super('mcnemarsTest', element);

  /// kruskalWallisTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.kruskalWallisTest([this.element])
      : dbValue = 'kruskalWallisTest',
        super('kruskalWallisTest', element);

  /// spearmanCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.spearmanCorrelation([this.element])
      : dbValue = 'spearmanCorrelation',
        super('spearmanCorrelation', element);

  /// kendallCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.kendallCorrelation([this.element])
      : dbValue = 'kendallCorrelation',
        super('kendallCorrelation', element);

  /// friedmanTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.friedmanTest([this.element])
      : dbValue = 'friedmanTest',
        super('friedmanTest', element);

  /// goodmanKruskasGamma
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.goodmanKruskasGamma([this.element])
      : dbValue = 'goodmanKruskasGamma',
        super('goodmanKruskasGamma', element);

  /// glm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glm([this.element])
      : dbValue = 'glm',
        super('glm', element);

  /// glmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmProbit([this.element])
      : dbValue = 'glmProbit',
        super('glmProbit', element);

  /// glmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmLogit([this.element])
      : dbValue = 'glmLogit',
        super('glmLogit', element);

  /// glmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmIdentity([this.element])
      : dbValue = 'glmIdentity',
        super('glmIdentity', element);

  /// glmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmLog([this.element])
      : dbValue = 'glmLog',
        super('glmLog', element);

  /// glmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmGeneralizedLogit([this.element])
      : dbValue = 'glmGeneralizedLogit',
        super('glmGeneralizedLogit', element);

  /// glmm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmm([this.element])
      : dbValue = 'glmm',
        super('glmm', element);

  /// glmmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmmProbit([this.element])
      : dbValue = 'glmmProbit',
        super('glmmProbit', element);

  /// glmmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmmLogit([this.element])
      : dbValue = 'glmmLogit',
        super('glmmLogit', element);

  /// glmmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmmIdentity([this.element])
      : dbValue = 'glmmIdentity',
        super('glmmIdentity', element);

  /// glmmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmmLog([this.element])
      : dbValue = 'glmmLog',
        super('glmmLog', element);

  /// glmmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.glmmGeneralizedLogit([this.element])
      : dbValue = 'glmmGeneralizedLogit',
        super('glmmGeneralizedLogit', element);

  /// linearRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.linearRegression([this.element])
      : dbValue = 'linearRegression',
        super('linearRegression', element);

  /// logisticRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.logisticRegression([this.element])
      : dbValue = 'logisticRegression',
        super('logisticRegression', element);

  /// polynomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.polynomialRegression([this.element])
      : dbValue = 'polynomialRegression',
        super('polynomialRegression', element);

  /// coxProportionalHazards
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.coxProportionalHazards([this.element])
      : dbValue = 'coxProportionalHazards',
        super('coxProportionalHazards', element);

  /// binomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.binomialDistributionRegression([this.element])
      : dbValue = 'binomialDistributionRegression',
        super('binomialDistributionRegression', element);

  /// multinomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.multinomialDistributionRegression([this.element])
      : dbValue = 'multinomialDistributionRegression',
        super('multinomialDistributionRegression', element);

  /// poissonRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.poissonRegression([this.element])
      : dbValue = 'poissonRegression',
        super('poissonRegression', element);

  /// negativeBinomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.negativeBinomialRegression([this.element])
      : dbValue = 'negativeBinomialRegression',
        super('negativeBinomialRegression', element);

  /// zeroCellConstant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.zeroCellConstant([this.element])
      : dbValue = 'zeroCellConstant',
        super('zeroCellConstant', element);

  /// zeroCellContinuityCorrection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.zeroCellContinuityCorrection([this.element])
      : dbValue = 'zeroCellContinuityCorrection',
        super('zeroCellContinuityCorrection', element);

  /// adjusted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.adjusted([this.element])
      : dbValue = 'adjusted',
        super('adjusted', element);

  /// interactionTerm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.interactionTerm([this.element])
      : dbValue = 'interactionTerm',
        super('interactionTerm', element);

  /// manteHaenszelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.manteHaenszelMethod([this.element])
      : dbValue = 'manteHaenszelMethod',
        super('manteHaenszelMethod', element);

  /// metaAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.metaAnalysis([this.element])
      : dbValue = 'metaAnalysis',
        super('metaAnalysis', element);

  /// inverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.inverseVariance([this.element])
      : dbValue = 'inverseVariance',
        super('inverseVariance', element);

  /// petoMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.petoMethod([this.element])
      : dbValue = 'petoMethod',
        super('petoMethod', element);

  /// hartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.hartungKnapp([this.element])
      : dbValue = 'hartungKnapp',
        super('hartungKnapp', element);

  /// modifiedHartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.modifiedHartungKnapp([this.element])
      : dbValue = 'modifiedHartungKnapp',
        super('modifiedHartungKnapp', element);

  /// effectsFixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.effectsFixed([this.element])
      : dbValue = 'effectsFixed',
        super('effectsFixed', element);

  /// effectsRandom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.effectsRandom([this.element])
      : dbValue = 'effectsRandom',
        super('effectsRandom', element);

  /// chiSquareTestHomogeneity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.chiSquareTestHomogeneity([this.element])
      : dbValue = 'chiSquareTestHomogeneity',
        super('chiSquareTestHomogeneity', element);

  /// dersimonianLairdMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.dersimonianLairdMethod([this.element])
      : dbValue = 'dersimonianLairdMethod',
        super('dersimonianLairdMethod', element);

  /// pauleMandelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.pauleMandelMethod([this.element])
      : dbValue = 'pauleMandelMethod',
        super('pauleMandelMethod', element);

  /// restrictedLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.restrictedLikelihood([this.element])
      : dbValue = 'restrictedLikelihood',
        super('restrictedLikelihood', element);

  /// maximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.maximumLikelihood([this.element])
      : dbValue = 'maximumLikelihood',
        super('maximumLikelihood', element);

  /// empiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.empiricalBayes([this.element])
      : dbValue = 'empiricalBayes',
        super('empiricalBayes', element);

  /// hunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.hunterSchmidt([this.element])
      : dbValue = 'hunterSchmidt',
        super('hunterSchmidt', element);

  /// sidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.sidikJonkman([this.element])
      : dbValue = 'sidikJonkman',
        super('sidikJonkman', element);

  /// hedgesMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.hedgesMethod([this.element])
      : dbValue = 'hedgesMethod',
        super('hedgesMethod', element);

  /// tauDersimonianLaird
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauDersimonianLaird([this.element])
      : dbValue = 'tauDersimonianLaird',
        super('tauDersimonianLaird', element);

  /// tauPauleMandel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauPauleMandel([this.element])
      : dbValue = 'tauPauleMandel',
        super('tauPauleMandel', element);

  /// tauRestrictedMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauRestrictedMaximumLikelihood([this.element])
      : dbValue = 'tauRestrictedMaximumLikelihood',
        super('tauRestrictedMaximumLikelihood', element);

  /// tauMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauMaximumLikelihood([this.element])
      : dbValue = 'tauMaximumLikelihood',
        super('tauMaximumLikelihood', element);

  /// tauEmpiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauEmpiricalBayes([this.element])
      : dbValue = 'tauEmpiricalBayes',
        super('tauEmpiricalBayes', element);

  /// tauHunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauHunterSchmidt([this.element])
      : dbValue = 'tauHunterSchmidt',
        super('tauHunterSchmidt', element);

  /// tauSidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauSidikJonkman([this.element])
      : dbValue = 'tauSidikJonkman',
        super('tauSidikJonkman', element);

  /// tauHedges
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.tauHedges([this.element])
      : dbValue = 'tauHedges',
        super('tauHedges', element);

  /// poolMantelHaenzsel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.poolMantelHaenzsel([this.element])
      : dbValue = 'poolMantelHaenzsel',
        super('poolMantelHaenzsel', element);

  /// poolInverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.poolInverseVariance([this.element])
      : dbValue = 'poolInverseVariance',
        super('poolInverseVariance', element);

  /// poolPeto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.poolPeto([this.element])
      : dbValue = 'poolPeto',
        super('poolPeto', element);

  /// poolGeneralizedLinearMixedModel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticModelCode.poolGeneralizedLinearMixedModel([this.element])
      : dbValue = 'poolGeneralizedLinearMixedModel',
        super('poolGeneralizedLinearMixedModel', element);

  /// For instances where an Element is present but not value

  StatisticModelCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StatisticModelCode._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'oneTailedTest',
    'twoTailedTest',
    'zTest',
    'oneSampleTTest',
    'twoSampleTTest',
    'pairedTTest',
    'chiSquareTest',
    'chiSquareTestTrend',
    'pearsonCorrelation',
    'anova',
    'anovaOneWay',
    'anovaTwoWay',
    'anovaTwoWayReplication',
    'manova',
    'anovaThreeWay',
    'signTest',
    'wilcoxonSignedRankTest',
    'wilcoxonRankSumTest',
    'mannWhitneyUTest',
    'fishersExactTest',
    'mcnemarsTest',
    'kruskalWallisTest',
    'spearmanCorrelation',
    'kendallCorrelation',
    'friedmanTest',
    'goodmanKruskasGamma',
    'glm',
    'glmProbit',
    'glmLogit',
    'glmIdentity',
    'glmLog',
    'glmGeneralizedLogit',
    'glmm',
    'glmmProbit',
    'glmmLogit',
    'glmmIdentity',
    'glmmLog',
    'glmmGeneralizedLogit',
    'linearRegression',
    'logisticRegression',
    'polynomialRegression',
    'coxProportionalHazards',
    'binomialDistributionRegression',
    'multinomialDistributionRegression',
    'poissonRegression',
    'negativeBinomialRegression',
    'zeroCellConstant',
    'zeroCellContinuityCorrection',
    'adjusted',
    'interactionTerm',
    'manteHaenszelMethod',
    'metaAnalysis',
    'inverseVariance',
    'petoMethod',
    'hartungKnapp',
    'modifiedHartungKnapp',
    'effectsFixed',
    'effectsRandom',
    'chiSquareTestHomogeneity',
    'dersimonianLairdMethod',
    'pauleMandelMethod',
    'restrictedLikelihood',
    'maximumLikelihood',
    'empiricalBayes',
    'hunterSchmidt',
    'sidikJonkman',
    'hedgesMethod',
    'tauDersimonianLaird',
    'tauPauleMandel',
    'tauRestrictedMaximumLikelihood',
    'tauMaximumLikelihood',
    'tauEmpiricalBayes',
    'tauHunterSchmidt',
    'tauSidikJonkman',
    'tauHedges',
    'poolMantelHaenzsel',
    'poolInverseVariance',
    'poolPeto',
    'poolGeneralizedLinearMixedModel',
  ];

  /// Returns the enum value with an element attached
  StatisticModelCode withElement(Element? newElement) {
    return StatisticModelCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StatisticModelCode.$value';
}
