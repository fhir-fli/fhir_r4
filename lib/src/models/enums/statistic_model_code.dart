// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
class StatisticModelCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StatisticModelCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [StatisticModelCode] from JSON.
  factory StatisticModelCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticModelCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StatisticModelCode cannot be constructed from JSON.',
      );
    }
    return StatisticModelCode._(value: value, element: element);
  }

  /// oneTailedTest
  static final StatisticModelCode oneTailedTest = StatisticModelCode._(
    value: 'oneTailedTest',
  );

  /// twoTailedTest
  static final StatisticModelCode twoTailedTest = StatisticModelCode._(
    value: 'twoTailedTest',
  );

  /// zTest
  static final StatisticModelCode zTest = StatisticModelCode._(
    value: 'zTest',
  );

  /// oneSampleTTest
  static final StatisticModelCode oneSampleTTest = StatisticModelCode._(
    value: 'oneSampleTTest',
  );

  /// twoSampleTTest
  static final StatisticModelCode twoSampleTTest = StatisticModelCode._(
    value: 'twoSampleTTest',
  );

  /// pairedTTest
  static final StatisticModelCode pairedTTest = StatisticModelCode._(
    value: 'pairedTTest',
  );

  /// chiSquareTest
  static final StatisticModelCode chiSquareTest = StatisticModelCode._(
    value: 'chiSquareTest',
  );

  /// chiSquareTestTrend
  static final StatisticModelCode chiSquareTestTrend = StatisticModelCode._(
    value: 'chiSquareTestTrend',
  );

  /// pearsonCorrelation
  static final StatisticModelCode pearsonCorrelation = StatisticModelCode._(
    value: 'pearsonCorrelation',
  );

  /// anova
  static final StatisticModelCode anova = StatisticModelCode._(
    value: 'anova',
  );

  /// anovaOneWay
  static final StatisticModelCode anovaOneWay = StatisticModelCode._(
    value: 'anovaOneWay',
  );

  /// anovaTwoWay
  static final StatisticModelCode anovaTwoWay = StatisticModelCode._(
    value: 'anovaTwoWay',
  );

  /// anovaTwoWayReplication
  static final StatisticModelCode anovaTwoWayReplication = StatisticModelCode._(
    value: 'anovaTwoWayReplication',
  );

  /// manova
  static final StatisticModelCode manova = StatisticModelCode._(
    value: 'manova',
  );

  /// anovaThreeWay
  static final StatisticModelCode anovaThreeWay = StatisticModelCode._(
    value: 'anovaThreeWay',
  );

  /// signTest
  static final StatisticModelCode signTest = StatisticModelCode._(
    value: 'signTest',
  );

  /// wilcoxonSignedRankTest
  static final StatisticModelCode wilcoxonSignedRankTest = StatisticModelCode._(
    value: 'wilcoxonSignedRankTest',
  );

  /// wilcoxonRankSumTest
  static final StatisticModelCode wilcoxonRankSumTest = StatisticModelCode._(
    value: 'wilcoxonRankSumTest',
  );

  /// mannWhitneyUTest
  static final StatisticModelCode mannWhitneyUTest = StatisticModelCode._(
    value: 'mannWhitneyUTest',
  );

  /// fishersExactTest
  static final StatisticModelCode fishersExactTest = StatisticModelCode._(
    value: 'fishersExactTest',
  );

  /// mcnemarsTest
  static final StatisticModelCode mcnemarsTest = StatisticModelCode._(
    value: 'mcnemarsTest',
  );

  /// kruskalWallisTest
  static final StatisticModelCode kruskalWallisTest = StatisticModelCode._(
    value: 'kruskalWallisTest',
  );

  /// spearmanCorrelation
  static final StatisticModelCode spearmanCorrelation = StatisticModelCode._(
    value: 'spearmanCorrelation',
  );

  /// kendallCorrelation
  static final StatisticModelCode kendallCorrelation = StatisticModelCode._(
    value: 'kendallCorrelation',
  );

  /// friedmanTest
  static final StatisticModelCode friedmanTest = StatisticModelCode._(
    value: 'friedmanTest',
  );

  /// goodmanKruskasGamma
  static final StatisticModelCode goodmanKruskasGamma = StatisticModelCode._(
    value: 'goodmanKruskasGamma',
  );

  /// glm
  static final StatisticModelCode glm = StatisticModelCode._(
    value: 'glm',
  );

  /// glmProbit
  static final StatisticModelCode glmProbit = StatisticModelCode._(
    value: 'glmProbit',
  );

  /// glmLogit
  static final StatisticModelCode glmLogit = StatisticModelCode._(
    value: 'glmLogit',
  );

  /// glmIdentity
  static final StatisticModelCode glmIdentity = StatisticModelCode._(
    value: 'glmIdentity',
  );

  /// glmLog
  static final StatisticModelCode glmLog = StatisticModelCode._(
    value: 'glmLog',
  );

  /// glmGeneralizedLogit
  static final StatisticModelCode glmGeneralizedLogit = StatisticModelCode._(
    value: 'glmGeneralizedLogit',
  );

  /// glmm
  static final StatisticModelCode glmm = StatisticModelCode._(
    value: 'glmm',
  );

  /// glmmProbit
  static final StatisticModelCode glmmProbit = StatisticModelCode._(
    value: 'glmmProbit',
  );

  /// glmmLogit
  static final StatisticModelCode glmmLogit = StatisticModelCode._(
    value: 'glmmLogit',
  );

  /// glmmIdentity
  static final StatisticModelCode glmmIdentity = StatisticModelCode._(
    value: 'glmmIdentity',
  );

  /// glmmLog
  static final StatisticModelCode glmmLog = StatisticModelCode._(
    value: 'glmmLog',
  );

  /// glmmGeneralizedLogit
  static final StatisticModelCode glmmGeneralizedLogit = StatisticModelCode._(
    value: 'glmmGeneralizedLogit',
  );

  /// linearRegression
  static final StatisticModelCode linearRegression = StatisticModelCode._(
    value: 'linearRegression',
  );

  /// logisticRegression
  static final StatisticModelCode logisticRegression = StatisticModelCode._(
    value: 'logisticRegression',
  );

  /// polynomialRegression
  static final StatisticModelCode polynomialRegression = StatisticModelCode._(
    value: 'polynomialRegression',
  );

  /// coxProportionalHazards
  static final StatisticModelCode coxProportionalHazards = StatisticModelCode._(
    value: 'coxProportionalHazards',
  );

  /// binomialDistributionRegression
  static final StatisticModelCode binomialDistributionRegression =
      StatisticModelCode._(
    value: 'binomialDistributionRegression',
  );

  /// multinomialDistributionRegression
  static final StatisticModelCode multinomialDistributionRegression =
      StatisticModelCode._(
    value: 'multinomialDistributionRegression',
  );

  /// poissonRegression
  static final StatisticModelCode poissonRegression = StatisticModelCode._(
    value: 'poissonRegression',
  );

  /// negativeBinomialRegression
  static final StatisticModelCode negativeBinomialRegression =
      StatisticModelCode._(
    value: 'negativeBinomialRegression',
  );

  /// zeroCellConstant
  static final StatisticModelCode zeroCellConstant = StatisticModelCode._(
    value: 'zeroCellConstant',
  );

  /// zeroCellContinuityCorrection
  static final StatisticModelCode zeroCellContinuityCorrection =
      StatisticModelCode._(
    value: 'zeroCellContinuityCorrection',
  );

  /// adjusted
  static final StatisticModelCode adjusted = StatisticModelCode._(
    value: 'adjusted',
  );

  /// interactionTerm
  static final StatisticModelCode interactionTerm = StatisticModelCode._(
    value: 'interactionTerm',
  );

  /// manteHaenszelMethod
  static final StatisticModelCode manteHaenszelMethod = StatisticModelCode._(
    value: 'manteHaenszelMethod',
  );

  /// metaAnalysis
  static final StatisticModelCode metaAnalysis = StatisticModelCode._(
    value: 'metaAnalysis',
  );

  /// inverseVariance
  static final StatisticModelCode inverseVariance = StatisticModelCode._(
    value: 'inverseVariance',
  );

  /// petoMethod
  static final StatisticModelCode petoMethod = StatisticModelCode._(
    value: 'petoMethod',
  );

  /// hartungKnapp
  static final StatisticModelCode hartungKnapp = StatisticModelCode._(
    value: 'hartungKnapp',
  );

  /// modifiedHartungKnapp
  static final StatisticModelCode modifiedHartungKnapp = StatisticModelCode._(
    value: 'modifiedHartungKnapp',
  );

  /// effectsFixed
  static final StatisticModelCode effectsFixed = StatisticModelCode._(
    value: 'effectsFixed',
  );

  /// effectsRandom
  static final StatisticModelCode effectsRandom = StatisticModelCode._(
    value: 'effectsRandom',
  );

  /// chiSquareTestHomogeneity
  static final StatisticModelCode chiSquareTestHomogeneity =
      StatisticModelCode._(
    value: 'chiSquareTestHomogeneity',
  );

  /// dersimonianLairdMethod
  static final StatisticModelCode dersimonianLairdMethod = StatisticModelCode._(
    value: 'dersimonianLairdMethod',
  );

  /// pauleMandelMethod
  static final StatisticModelCode pauleMandelMethod = StatisticModelCode._(
    value: 'pauleMandelMethod',
  );

  /// restrictedLikelihood
  static final StatisticModelCode restrictedLikelihood = StatisticModelCode._(
    value: 'restrictedLikelihood',
  );

  /// maximumLikelihood
  static final StatisticModelCode maximumLikelihood = StatisticModelCode._(
    value: 'maximumLikelihood',
  );

  /// empiricalBayes
  static final StatisticModelCode empiricalBayes = StatisticModelCode._(
    value: 'empiricalBayes',
  );

  /// hunterSchmidt
  static final StatisticModelCode hunterSchmidt = StatisticModelCode._(
    value: 'hunterSchmidt',
  );

  /// sidikJonkman
  static final StatisticModelCode sidikJonkman = StatisticModelCode._(
    value: 'sidikJonkman',
  );

  /// hedgesMethod
  static final StatisticModelCode hedgesMethod = StatisticModelCode._(
    value: 'hedgesMethod',
  );

  /// tauDersimonianLaird
  static final StatisticModelCode tauDersimonianLaird = StatisticModelCode._(
    value: 'tauDersimonianLaird',
  );

  /// tauPauleMandel
  static final StatisticModelCode tauPauleMandel = StatisticModelCode._(
    value: 'tauPauleMandel',
  );

  /// tauRestrictedMaximumLikelihood
  static final StatisticModelCode tauRestrictedMaximumLikelihood =
      StatisticModelCode._(
    value: 'tauRestrictedMaximumLikelihood',
  );

  /// tauMaximumLikelihood
  static final StatisticModelCode tauMaximumLikelihood = StatisticModelCode._(
    value: 'tauMaximumLikelihood',
  );

  /// tauEmpiricalBayes
  static final StatisticModelCode tauEmpiricalBayes = StatisticModelCode._(
    value: 'tauEmpiricalBayes',
  );

  /// tauHunterSchmidt
  static final StatisticModelCode tauHunterSchmidt = StatisticModelCode._(
    value: 'tauHunterSchmidt',
  );

  /// tauSidikJonkman
  static final StatisticModelCode tauSidikJonkman = StatisticModelCode._(
    value: 'tauSidikJonkman',
  );

  /// tauHedges
  static final StatisticModelCode tauHedges = StatisticModelCode._(
    value: 'tauHedges',
  );

  /// poolMantelHaenzsel
  static final StatisticModelCode poolMantelHaenzsel = StatisticModelCode._(
    value: 'poolMantelHaenzsel',
  );

  /// poolInverseVariance
  static final StatisticModelCode poolInverseVariance = StatisticModelCode._(
    value: 'poolInverseVariance',
  );

  /// poolPeto
  static final StatisticModelCode poolPeto = StatisticModelCode._(
    value: 'poolPeto',
  );

  /// poolGeneralizedLinearMixedModel
  static final StatisticModelCode poolGeneralizedLinearMixedModel =
      StatisticModelCode._(
    value: 'poolGeneralizedLinearMixedModel',
  );

  /// For instances where an Element is present but not value

  static final StatisticModelCode elementOnly = StatisticModelCode._(value: '');

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

  /// Clones the current instance
  @override
  StatisticModelCode clone() => StatisticModelCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StatisticModelCode withElement(Element? newElement) {
    return StatisticModelCode._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  StatisticModelCode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StatisticModelCode._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
