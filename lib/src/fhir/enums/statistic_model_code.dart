// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
class StatisticModelCode {
  // Private constructor for internal use (like enum)
  StatisticModelCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StatisticModelCode values
  /// oneTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode oneTailedTest = StatisticModelCode._(
    'oneTailedTest',
  );

  /// twoTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode twoTailedTest = StatisticModelCode._(
    'twoTailedTest',
  );

  /// zTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zTest = StatisticModelCode._(
    'zTest',
  );

  /// oneSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode oneSampleTTest = StatisticModelCode._(
    'oneSampleTTest',
  );

  /// twoSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode twoSampleTTest = StatisticModelCode._(
    'twoSampleTTest',
  );

  /// pairedTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pairedTTest = StatisticModelCode._(
    'pairedTTest',
  );

  /// chiSquareTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTest = StatisticModelCode._(
    'chiSquareTest',
  );

  /// chiSquareTestTrend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTestTrend = StatisticModelCode._(
    'chiSquareTestTrend',
  );

  /// pearsonCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pearsonCorrelation = StatisticModelCode._(
    'pearsonCorrelation',
  );

  /// anova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anova = StatisticModelCode._(
    'anova',
  );

  /// anovaOneWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaOneWay = StatisticModelCode._(
    'anovaOneWay',
  );

  /// anovaTwoWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaTwoWay = StatisticModelCode._(
    'anovaTwoWay',
  );

  /// anovaTwoWayReplication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaTwoWayReplication = StatisticModelCode._(
    'anovaTwoWayReplication',
  );

  /// manova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode manova = StatisticModelCode._(
    'manova',
  );

  /// anovaThreeWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaThreeWay = StatisticModelCode._(
    'anovaThreeWay',
  );

  /// signTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode signTest = StatisticModelCode._(
    'signTest',
  );

  /// wilcoxonSignedRankTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode wilcoxonSignedRankTest = StatisticModelCode._(
    'wilcoxonSignedRankTest',
  );

  /// wilcoxonRankSumTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode wilcoxonRankSumTest = StatisticModelCode._(
    'wilcoxonRankSumTest',
  );

  /// mannWhitneyUTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode mannWhitneyUTest = StatisticModelCode._(
    'mannWhitneyUTest',
  );

  /// fishersExactTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode fishersExactTest = StatisticModelCode._(
    'fishersExactTest',
  );

  /// mcnemarsTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode mcnemarsTest = StatisticModelCode._(
    'mcnemarsTest',
  );

  /// kruskalWallisTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode kruskalWallisTest = StatisticModelCode._(
    'kruskalWallisTest',
  );

  /// spearmanCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode spearmanCorrelation = StatisticModelCode._(
    'spearmanCorrelation',
  );

  /// kendallCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode kendallCorrelation = StatisticModelCode._(
    'kendallCorrelation',
  );

  /// friedmanTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode friedmanTest = StatisticModelCode._(
    'friedmanTest',
  );

  /// goodmanKruskasGamma
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode goodmanKruskasGamma = StatisticModelCode._(
    'goodmanKruskasGamma',
  );

  /// glm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glm = StatisticModelCode._(
    'glm',
  );

  /// glmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmProbit = StatisticModelCode._(
    'glmProbit',
  );

  /// glmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmLogit = StatisticModelCode._(
    'glmLogit',
  );

  /// glmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmIdentity = StatisticModelCode._(
    'glmIdentity',
  );

  /// glmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmLog = StatisticModelCode._(
    'glmLog',
  );

  /// glmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmGeneralizedLogit = StatisticModelCode._(
    'glmGeneralizedLogit',
  );

  /// glmm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmm = StatisticModelCode._(
    'glmm',
  );

  /// glmmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmProbit = StatisticModelCode._(
    'glmmProbit',
  );

  /// glmmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmLogit = StatisticModelCode._(
    'glmmLogit',
  );

  /// glmmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmIdentity = StatisticModelCode._(
    'glmmIdentity',
  );

  /// glmmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmLog = StatisticModelCode._(
    'glmmLog',
  );

  /// glmmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmGeneralizedLogit = StatisticModelCode._(
    'glmmGeneralizedLogit',
  );

  /// linearRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode linearRegression = StatisticModelCode._(
    'linearRegression',
  );

  /// logisticRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode logisticRegression = StatisticModelCode._(
    'logisticRegression',
  );

  /// polynomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode polynomialRegression = StatisticModelCode._(
    'polynomialRegression',
  );

  /// coxProportionalHazards
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode coxProportionalHazards = StatisticModelCode._(
    'coxProportionalHazards',
  );

  /// binomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode binomialDistributionRegression =
      StatisticModelCode._(
    'binomialDistributionRegression',
  );

  /// multinomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode multinomialDistributionRegression =
      StatisticModelCode._(
    'multinomialDistributionRegression',
  );

  /// poissonRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poissonRegression = StatisticModelCode._(
    'poissonRegression',
  );

  /// negativeBinomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode negativeBinomialRegression =
      StatisticModelCode._(
    'negativeBinomialRegression',
  );

  /// zeroCellConstant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zeroCellConstant = StatisticModelCode._(
    'zeroCellConstant',
  );

  /// zeroCellContinuityCorrection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zeroCellContinuityCorrection =
      StatisticModelCode._(
    'zeroCellContinuityCorrection',
  );

  /// adjusted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode adjusted = StatisticModelCode._(
    'adjusted',
  );

  /// interactionTerm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode interactionTerm = StatisticModelCode._(
    'interactionTerm',
  );

  /// manteHaenszelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode manteHaenszelMethod = StatisticModelCode._(
    'manteHaenszelMethod',
  );

  /// metaAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode metaAnalysis = StatisticModelCode._(
    'metaAnalysis',
  );

  /// inverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode inverseVariance = StatisticModelCode._(
    'inverseVariance',
  );

  /// petoMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode petoMethod = StatisticModelCode._(
    'petoMethod',
  );

  /// hartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hartungKnapp = StatisticModelCode._(
    'hartungKnapp',
  );

  /// modifiedHartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode modifiedHartungKnapp = StatisticModelCode._(
    'modifiedHartungKnapp',
  );

  /// effectsFixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode effectsFixed = StatisticModelCode._(
    'effectsFixed',
  );

  /// effectsRandom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode effectsRandom = StatisticModelCode._(
    'effectsRandom',
  );

  /// chiSquareTestHomogeneity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTestHomogeneity =
      StatisticModelCode._(
    'chiSquareTestHomogeneity',
  );

  /// dersimonianLairdMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode dersimonianLairdMethod = StatisticModelCode._(
    'dersimonianLairdMethod',
  );

  /// pauleMandelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pauleMandelMethod = StatisticModelCode._(
    'pauleMandelMethod',
  );

  /// restrictedLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode restrictedLikelihood = StatisticModelCode._(
    'restrictedLikelihood',
  );

  /// maximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode maximumLikelihood = StatisticModelCode._(
    'maximumLikelihood',
  );

  /// empiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode empiricalBayes = StatisticModelCode._(
    'empiricalBayes',
  );

  /// hunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hunterSchmidt = StatisticModelCode._(
    'hunterSchmidt',
  );

  /// sidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode sidikJonkman = StatisticModelCode._(
    'sidikJonkman',
  );

  /// hedgesMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hedgesMethod = StatisticModelCode._(
    'hedgesMethod',
  );

  /// tauDersimonianLaird
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauDersimonianLaird = StatisticModelCode._(
    'tauDersimonianLaird',
  );

  /// tauPauleMandel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauPauleMandel = StatisticModelCode._(
    'tauPauleMandel',
  );

  /// tauRestrictedMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauRestrictedMaximumLikelihood =
      StatisticModelCode._(
    'tauRestrictedMaximumLikelihood',
  );

  /// tauMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauMaximumLikelihood = StatisticModelCode._(
    'tauMaximumLikelihood',
  );

  /// tauEmpiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauEmpiricalBayes = StatisticModelCode._(
    'tauEmpiricalBayes',
  );

  /// tauHunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauHunterSchmidt = StatisticModelCode._(
    'tauHunterSchmidt',
  );

  /// tauSidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauSidikJonkman = StatisticModelCode._(
    'tauSidikJonkman',
  );

  /// tauHedges
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauHedges = StatisticModelCode._(
    'tauHedges',
  );

  /// poolMantelHaenzsel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolMantelHaenzsel = StatisticModelCode._(
    'poolMantelHaenzsel',
  );

  /// poolInverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolInverseVariance = StatisticModelCode._(
    'poolInverseVariance',
  );

  /// poolPeto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolPeto = StatisticModelCode._(
    'poolPeto',
  );

  /// poolGeneralizedLinearMixedModel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolGeneralizedLinearMixedModel =
      StatisticModelCode._(
    'poolGeneralizedLinearMixedModel',
  );

  /// For instances where an Element is present but not value

  static final StatisticModelCode elementOnly = StatisticModelCode._('');

  /// List of all enum-like values
  static final List<StatisticModelCode> values = [
    oneTailedTest,
    twoTailedTest,
    zTest,
    oneSampleTTest,
    twoSampleTTest,
    pairedTTest,
    chiSquareTest,
    chiSquareTestTrend,
    pearsonCorrelation,
    anova,
    anovaOneWay,
    anovaTwoWay,
    anovaTwoWayReplication,
    manova,
    anovaThreeWay,
    signTest,
    wilcoxonSignedRankTest,
    wilcoxonRankSumTest,
    mannWhitneyUTest,
    fishersExactTest,
    mcnemarsTest,
    kruskalWallisTest,
    spearmanCorrelation,
    kendallCorrelation,
    friedmanTest,
    goodmanKruskasGamma,
    glm,
    glmProbit,
    glmLogit,
    glmIdentity,
    glmLog,
    glmGeneralizedLogit,
    glmm,
    glmmProbit,
    glmmLogit,
    glmmIdentity,
    glmmLog,
    glmmGeneralizedLogit,
    linearRegression,
    logisticRegression,
    polynomialRegression,
    coxProportionalHazards,
    binomialDistributionRegression,
    multinomialDistributionRegression,
    poissonRegression,
    negativeBinomialRegression,
    zeroCellConstant,
    zeroCellContinuityCorrection,
    adjusted,
    interactionTerm,
    manteHaenszelMethod,
    metaAnalysis,
    inverseVariance,
    petoMethod,
    hartungKnapp,
    modifiedHartungKnapp,
    effectsFixed,
    effectsRandom,
    chiSquareTestHomogeneity,
    dersimonianLairdMethod,
    pauleMandelMethod,
    restrictedLikelihood,
    maximumLikelihood,
    empiricalBayes,
    hunterSchmidt,
    sidikJonkman,
    hedgesMethod,
    tauDersimonianLaird,
    tauPauleMandel,
    tauRestrictedMaximumLikelihood,
    tauMaximumLikelihood,
    tauEmpiricalBayes,
    tauHunterSchmidt,
    tauSidikJonkman,
    tauHedges,
    poolMantelHaenzsel,
    poolInverseVariance,
    poolPeto,
    poolGeneralizedLinearMixedModel,
  ];

  /// Returns the enum value with an element attached
  StatisticModelCode withElement(Element? newElement) {
    return StatisticModelCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StatisticModelCode] from JSON.
  static StatisticModelCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticModelCode.elementOnly.withElement(element);
    }
    return StatisticModelCode._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
