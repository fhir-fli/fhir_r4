// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
@collection
class StatisticModelCode {
  /// Constructor for internal use (like enum)
  StatisticModelCode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StatisticModelCode values
  /// oneTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode oneTailedTest = StatisticModelCode(
    fhirCode: 'oneTailedTest',
  );

  /// twoTailedTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode twoTailedTest = StatisticModelCode(
    fhirCode: 'twoTailedTest',
  );

  /// zTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zTest = StatisticModelCode(
    fhirCode: 'zTest',
  );

  /// oneSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode oneSampleTTest = StatisticModelCode(
    fhirCode: 'oneSampleTTest',
  );

  /// twoSampleTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode twoSampleTTest = StatisticModelCode(
    fhirCode: 'twoSampleTTest',
  );

  /// pairedTTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pairedTTest = StatisticModelCode(
    fhirCode: 'pairedTTest',
  );

  /// chiSquareTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTest = StatisticModelCode(
    fhirCode: 'chiSquareTest',
  );

  /// chiSquareTestTrend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTestTrend = StatisticModelCode(
    fhirCode: 'chiSquareTestTrend',
  );

  /// pearsonCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pearsonCorrelation = StatisticModelCode(
    fhirCode: 'pearsonCorrelation',
  );

  /// anova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anova = StatisticModelCode(
    fhirCode: 'anova',
  );

  /// anovaOneWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaOneWay = StatisticModelCode(
    fhirCode: 'anovaOneWay',
  );

  /// anovaTwoWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaTwoWay = StatisticModelCode(
    fhirCode: 'anovaTwoWay',
  );

  /// anovaTwoWayReplication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaTwoWayReplication = StatisticModelCode(
    fhirCode: 'anovaTwoWayReplication',
  );

  /// manova
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode manova = StatisticModelCode(
    fhirCode: 'manova',
  );

  /// anovaThreeWay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode anovaThreeWay = StatisticModelCode(
    fhirCode: 'anovaThreeWay',
  );

  /// signTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode signTest = StatisticModelCode(
    fhirCode: 'signTest',
  );

  /// wilcoxonSignedRankTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode wilcoxonSignedRankTest = StatisticModelCode(
    fhirCode: 'wilcoxonSignedRankTest',
  );

  /// wilcoxonRankSumTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode wilcoxonRankSumTest = StatisticModelCode(
    fhirCode: 'wilcoxonRankSumTest',
  );

  /// mannWhitneyUTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode mannWhitneyUTest = StatisticModelCode(
    fhirCode: 'mannWhitneyUTest',
  );

  /// fishersExactTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode fishersExactTest = StatisticModelCode(
    fhirCode: 'fishersExactTest',
  );

  /// mcnemarsTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode mcnemarsTest = StatisticModelCode(
    fhirCode: 'mcnemarsTest',
  );

  /// kruskalWallisTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode kruskalWallisTest = StatisticModelCode(
    fhirCode: 'kruskalWallisTest',
  );

  /// spearmanCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode spearmanCorrelation = StatisticModelCode(
    fhirCode: 'spearmanCorrelation',
  );

  /// kendallCorrelation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode kendallCorrelation = StatisticModelCode(
    fhirCode: 'kendallCorrelation',
  );

  /// friedmanTest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode friedmanTest = StatisticModelCode(
    fhirCode: 'friedmanTest',
  );

  /// goodmanKruskasGamma
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode goodmanKruskasGamma = StatisticModelCode(
    fhirCode: 'goodmanKruskasGamma',
  );

  /// glm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glm = StatisticModelCode(
    fhirCode: 'glm',
  );

  /// glmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmProbit = StatisticModelCode(
    fhirCode: 'glmProbit',
  );

  /// glmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmLogit = StatisticModelCode(
    fhirCode: 'glmLogit',
  );

  /// glmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmIdentity = StatisticModelCode(
    fhirCode: 'glmIdentity',
  );

  /// glmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmLog = StatisticModelCode(
    fhirCode: 'glmLog',
  );

  /// glmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmGeneralizedLogit = StatisticModelCode(
    fhirCode: 'glmGeneralizedLogit',
  );

  /// glmm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmm = StatisticModelCode(
    fhirCode: 'glmm',
  );

  /// glmmProbit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmProbit = StatisticModelCode(
    fhirCode: 'glmmProbit',
  );

  /// glmmLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmLogit = StatisticModelCode(
    fhirCode: 'glmmLogit',
  );

  /// glmmIdentity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmIdentity = StatisticModelCode(
    fhirCode: 'glmmIdentity',
  );

  /// glmmLog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmLog = StatisticModelCode(
    fhirCode: 'glmmLog',
  );

  /// glmmGeneralizedLogit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode glmmGeneralizedLogit = StatisticModelCode(
    fhirCode: 'glmmGeneralizedLogit',
  );

  /// linearRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode linearRegression = StatisticModelCode(
    fhirCode: 'linearRegression',
  );

  /// logisticRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode logisticRegression = StatisticModelCode(
    fhirCode: 'logisticRegression',
  );

  /// polynomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode polynomialRegression = StatisticModelCode(
    fhirCode: 'polynomialRegression',
  );

  /// coxProportionalHazards
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode coxProportionalHazards = StatisticModelCode(
    fhirCode: 'coxProportionalHazards',
  );

  /// binomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode binomialDistributionRegression =
      StatisticModelCode(
    fhirCode: 'binomialDistributionRegression',
  );

  /// multinomialDistributionRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode multinomialDistributionRegression =
      StatisticModelCode(
    fhirCode: 'multinomialDistributionRegression',
  );

  /// poissonRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poissonRegression = StatisticModelCode(
    fhirCode: 'poissonRegression',
  );

  /// negativeBinomialRegression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode negativeBinomialRegression =
      StatisticModelCode(
    fhirCode: 'negativeBinomialRegression',
  );

  /// zeroCellConstant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zeroCellConstant = StatisticModelCode(
    fhirCode: 'zeroCellConstant',
  );

  /// zeroCellContinuityCorrection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode zeroCellContinuityCorrection =
      StatisticModelCode(
    fhirCode: 'zeroCellContinuityCorrection',
  );

  /// adjusted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode adjusted = StatisticModelCode(
    fhirCode: 'adjusted',
  );

  /// interactionTerm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode interactionTerm = StatisticModelCode(
    fhirCode: 'interactionTerm',
  );

  /// manteHaenszelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode manteHaenszelMethod = StatisticModelCode(
    fhirCode: 'manteHaenszelMethod',
  );

  /// metaAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode metaAnalysis = StatisticModelCode(
    fhirCode: 'metaAnalysis',
  );

  /// inverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode inverseVariance = StatisticModelCode(
    fhirCode: 'inverseVariance',
  );

  /// petoMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode petoMethod = StatisticModelCode(
    fhirCode: 'petoMethod',
  );

  /// hartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hartungKnapp = StatisticModelCode(
    fhirCode: 'hartungKnapp',
  );

  /// modifiedHartungKnapp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode modifiedHartungKnapp = StatisticModelCode(
    fhirCode: 'modifiedHartungKnapp',
  );

  /// effectsFixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode effectsFixed = StatisticModelCode(
    fhirCode: 'effectsFixed',
  );

  /// effectsRandom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode effectsRandom = StatisticModelCode(
    fhirCode: 'effectsRandom',
  );

  /// chiSquareTestHomogeneity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode chiSquareTestHomogeneity = StatisticModelCode(
    fhirCode: 'chiSquareTestHomogeneity',
  );

  /// dersimonianLairdMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode dersimonianLairdMethod = StatisticModelCode(
    fhirCode: 'dersimonianLairdMethod',
  );

  /// pauleMandelMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode pauleMandelMethod = StatisticModelCode(
    fhirCode: 'pauleMandelMethod',
  );

  /// restrictedLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode restrictedLikelihood = StatisticModelCode(
    fhirCode: 'restrictedLikelihood',
  );

  /// maximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode maximumLikelihood = StatisticModelCode(
    fhirCode: 'maximumLikelihood',
  );

  /// empiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode empiricalBayes = StatisticModelCode(
    fhirCode: 'empiricalBayes',
  );

  /// hunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hunterSchmidt = StatisticModelCode(
    fhirCode: 'hunterSchmidt',
  );

  /// sidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode sidikJonkman = StatisticModelCode(
    fhirCode: 'sidikJonkman',
  );

  /// hedgesMethod
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode hedgesMethod = StatisticModelCode(
    fhirCode: 'hedgesMethod',
  );

  /// tauDersimonianLaird
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauDersimonianLaird = StatisticModelCode(
    fhirCode: 'tauDersimonianLaird',
  );

  /// tauPauleMandel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauPauleMandel = StatisticModelCode(
    fhirCode: 'tauPauleMandel',
  );

  /// tauRestrictedMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauRestrictedMaximumLikelihood =
      StatisticModelCode(
    fhirCode: 'tauRestrictedMaximumLikelihood',
  );

  /// tauMaximumLikelihood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauMaximumLikelihood = StatisticModelCode(
    fhirCode: 'tauMaximumLikelihood',
  );

  /// tauEmpiricalBayes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauEmpiricalBayes = StatisticModelCode(
    fhirCode: 'tauEmpiricalBayes',
  );

  /// tauHunterSchmidt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauHunterSchmidt = StatisticModelCode(
    fhirCode: 'tauHunterSchmidt',
  );

  /// tauSidikJonkman
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauSidikJonkman = StatisticModelCode(
    fhirCode: 'tauSidikJonkman',
  );

  /// tauHedges
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode tauHedges = StatisticModelCode(
    fhirCode: 'tauHedges',
  );

  /// poolMantelHaenzsel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolMantelHaenzsel = StatisticModelCode(
    fhirCode: 'poolMantelHaenzsel',
  );

  /// poolInverseVariance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolInverseVariance = StatisticModelCode(
    fhirCode: 'poolInverseVariance',
  );

  /// poolPeto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolPeto = StatisticModelCode(
    fhirCode: 'poolPeto',
  );

  /// poolGeneralizedLinearMixedModel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticModelCode poolGeneralizedLinearMixedModel =
      StatisticModelCode(
    fhirCode: 'poolGeneralizedLinearMixedModel',
  );

  /// For instances where an Element is present but not value

  static final StatisticModelCode elementOnly = StatisticModelCode();

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
    return StatisticModelCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return StatisticModelCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StatisticModelCode.$fhirCode';
}
