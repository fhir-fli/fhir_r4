// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
class StatisticModelCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StatisticModelCode._(super.value, [super.element]);

  /// Factory constructor to create [StatisticModelCode] from JSON.
  factory StatisticModelCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticModelCode.elementOnly.withElement(element);
    }
    return StatisticModelCode._(value, element);
  }

  /// oneTailedTest
  static final StatisticModelCode oneTailedTest = StatisticModelCode._(
    'oneTailedTest',
  );

  /// twoTailedTest
  static final StatisticModelCode twoTailedTest = StatisticModelCode._(
    'twoTailedTest',
  );

  /// zTest
  static final StatisticModelCode zTest = StatisticModelCode._(
    'zTest',
  );

  /// oneSampleTTest
  static final StatisticModelCode oneSampleTTest = StatisticModelCode._(
    'oneSampleTTest',
  );

  /// twoSampleTTest
  static final StatisticModelCode twoSampleTTest = StatisticModelCode._(
    'twoSampleTTest',
  );

  /// pairedTTest
  static final StatisticModelCode pairedTTest = StatisticModelCode._(
    'pairedTTest',
  );

  /// chiSquareTest
  static final StatisticModelCode chiSquareTest = StatisticModelCode._(
    'chiSquareTest',
  );

  /// chiSquareTestTrend
  static final StatisticModelCode chiSquareTestTrend = StatisticModelCode._(
    'chiSquareTestTrend',
  );

  /// pearsonCorrelation
  static final StatisticModelCode pearsonCorrelation = StatisticModelCode._(
    'pearsonCorrelation',
  );

  /// anova
  static final StatisticModelCode anova = StatisticModelCode._(
    'anova',
  );

  /// anovaOneWay
  static final StatisticModelCode anovaOneWay = StatisticModelCode._(
    'anovaOneWay',
  );

  /// anovaTwoWay
  static final StatisticModelCode anovaTwoWay = StatisticModelCode._(
    'anovaTwoWay',
  );

  /// anovaTwoWayReplication
  static final StatisticModelCode anovaTwoWayReplication = StatisticModelCode._(
    'anovaTwoWayReplication',
  );

  /// manova
  static final StatisticModelCode manova = StatisticModelCode._(
    'manova',
  );

  /// anovaThreeWay
  static final StatisticModelCode anovaThreeWay = StatisticModelCode._(
    'anovaThreeWay',
  );

  /// signTest
  static final StatisticModelCode signTest = StatisticModelCode._(
    'signTest',
  );

  /// wilcoxonSignedRankTest
  static final StatisticModelCode wilcoxonSignedRankTest = StatisticModelCode._(
    'wilcoxonSignedRankTest',
  );

  /// wilcoxonRankSumTest
  static final StatisticModelCode wilcoxonRankSumTest = StatisticModelCode._(
    'wilcoxonRankSumTest',
  );

  /// mannWhitneyUTest
  static final StatisticModelCode mannWhitneyUTest = StatisticModelCode._(
    'mannWhitneyUTest',
  );

  /// fishersExactTest
  static final StatisticModelCode fishersExactTest = StatisticModelCode._(
    'fishersExactTest',
  );

  /// mcnemarsTest
  static final StatisticModelCode mcnemarsTest = StatisticModelCode._(
    'mcnemarsTest',
  );

  /// kruskalWallisTest
  static final StatisticModelCode kruskalWallisTest = StatisticModelCode._(
    'kruskalWallisTest',
  );

  /// spearmanCorrelation
  static final StatisticModelCode spearmanCorrelation = StatisticModelCode._(
    'spearmanCorrelation',
  );

  /// kendallCorrelation
  static final StatisticModelCode kendallCorrelation = StatisticModelCode._(
    'kendallCorrelation',
  );

  /// friedmanTest
  static final StatisticModelCode friedmanTest = StatisticModelCode._(
    'friedmanTest',
  );

  /// goodmanKruskasGamma
  static final StatisticModelCode goodmanKruskasGamma = StatisticModelCode._(
    'goodmanKruskasGamma',
  );

  /// glm
  static final StatisticModelCode glm = StatisticModelCode._(
    'glm',
  );

  /// glmProbit
  static final StatisticModelCode glmProbit = StatisticModelCode._(
    'glmProbit',
  );

  /// glmLogit
  static final StatisticModelCode glmLogit = StatisticModelCode._(
    'glmLogit',
  );

  /// glmIdentity
  static final StatisticModelCode glmIdentity = StatisticModelCode._(
    'glmIdentity',
  );

  /// glmLog
  static final StatisticModelCode glmLog = StatisticModelCode._(
    'glmLog',
  );

  /// glmGeneralizedLogit
  static final StatisticModelCode glmGeneralizedLogit = StatisticModelCode._(
    'glmGeneralizedLogit',
  );

  /// glmm
  static final StatisticModelCode glmm = StatisticModelCode._(
    'glmm',
  );

  /// glmmProbit
  static final StatisticModelCode glmmProbit = StatisticModelCode._(
    'glmmProbit',
  );

  /// glmmLogit
  static final StatisticModelCode glmmLogit = StatisticModelCode._(
    'glmmLogit',
  );

  /// glmmIdentity
  static final StatisticModelCode glmmIdentity = StatisticModelCode._(
    'glmmIdentity',
  );

  /// glmmLog
  static final StatisticModelCode glmmLog = StatisticModelCode._(
    'glmmLog',
  );

  /// glmmGeneralizedLogit
  static final StatisticModelCode glmmGeneralizedLogit = StatisticModelCode._(
    'glmmGeneralizedLogit',
  );

  /// linearRegression
  static final StatisticModelCode linearRegression = StatisticModelCode._(
    'linearRegression',
  );

  /// logisticRegression
  static final StatisticModelCode logisticRegression = StatisticModelCode._(
    'logisticRegression',
  );

  /// polynomialRegression
  static final StatisticModelCode polynomialRegression = StatisticModelCode._(
    'polynomialRegression',
  );

  /// coxProportionalHazards
  static final StatisticModelCode coxProportionalHazards = StatisticModelCode._(
    'coxProportionalHazards',
  );

  /// binomialDistributionRegression
  static final StatisticModelCode binomialDistributionRegression =
      StatisticModelCode._(
    'binomialDistributionRegression',
  );

  /// multinomialDistributionRegression
  static final StatisticModelCode multinomialDistributionRegression =
      StatisticModelCode._(
    'multinomialDistributionRegression',
  );

  /// poissonRegression
  static final StatisticModelCode poissonRegression = StatisticModelCode._(
    'poissonRegression',
  );

  /// negativeBinomialRegression
  static final StatisticModelCode negativeBinomialRegression =
      StatisticModelCode._(
    'negativeBinomialRegression',
  );

  /// zeroCellConstant
  static final StatisticModelCode zeroCellConstant = StatisticModelCode._(
    'zeroCellConstant',
  );

  /// zeroCellContinuityCorrection
  static final StatisticModelCode zeroCellContinuityCorrection =
      StatisticModelCode._(
    'zeroCellContinuityCorrection',
  );

  /// adjusted
  static final StatisticModelCode adjusted = StatisticModelCode._(
    'adjusted',
  );

  /// interactionTerm
  static final StatisticModelCode interactionTerm = StatisticModelCode._(
    'interactionTerm',
  );

  /// manteHaenszelMethod
  static final StatisticModelCode manteHaenszelMethod = StatisticModelCode._(
    'manteHaenszelMethod',
  );

  /// metaAnalysis
  static final StatisticModelCode metaAnalysis = StatisticModelCode._(
    'metaAnalysis',
  );

  /// inverseVariance
  static final StatisticModelCode inverseVariance = StatisticModelCode._(
    'inverseVariance',
  );

  /// petoMethod
  static final StatisticModelCode petoMethod = StatisticModelCode._(
    'petoMethod',
  );

  /// hartungKnapp
  static final StatisticModelCode hartungKnapp = StatisticModelCode._(
    'hartungKnapp',
  );

  /// modifiedHartungKnapp
  static final StatisticModelCode modifiedHartungKnapp = StatisticModelCode._(
    'modifiedHartungKnapp',
  );

  /// effectsFixed
  static final StatisticModelCode effectsFixed = StatisticModelCode._(
    'effectsFixed',
  );

  /// effectsRandom
  static final StatisticModelCode effectsRandom = StatisticModelCode._(
    'effectsRandom',
  );

  /// chiSquareTestHomogeneity
  static final StatisticModelCode chiSquareTestHomogeneity =
      StatisticModelCode._(
    'chiSquareTestHomogeneity',
  );

  /// dersimonianLairdMethod
  static final StatisticModelCode dersimonianLairdMethod = StatisticModelCode._(
    'dersimonianLairdMethod',
  );

  /// pauleMandelMethod
  static final StatisticModelCode pauleMandelMethod = StatisticModelCode._(
    'pauleMandelMethod',
  );

  /// restrictedLikelihood
  static final StatisticModelCode restrictedLikelihood = StatisticModelCode._(
    'restrictedLikelihood',
  );

  /// maximumLikelihood
  static final StatisticModelCode maximumLikelihood = StatisticModelCode._(
    'maximumLikelihood',
  );

  /// empiricalBayes
  static final StatisticModelCode empiricalBayes = StatisticModelCode._(
    'empiricalBayes',
  );

  /// hunterSchmidt
  static final StatisticModelCode hunterSchmidt = StatisticModelCode._(
    'hunterSchmidt',
  );

  /// sidikJonkman
  static final StatisticModelCode sidikJonkman = StatisticModelCode._(
    'sidikJonkman',
  );

  /// hedgesMethod
  static final StatisticModelCode hedgesMethod = StatisticModelCode._(
    'hedgesMethod',
  );

  /// tauDersimonianLaird
  static final StatisticModelCode tauDersimonianLaird = StatisticModelCode._(
    'tauDersimonianLaird',
  );

  /// tauPauleMandel
  static final StatisticModelCode tauPauleMandel = StatisticModelCode._(
    'tauPauleMandel',
  );

  /// tauRestrictedMaximumLikelihood
  static final StatisticModelCode tauRestrictedMaximumLikelihood =
      StatisticModelCode._(
    'tauRestrictedMaximumLikelihood',
  );

  /// tauMaximumLikelihood
  static final StatisticModelCode tauMaximumLikelihood = StatisticModelCode._(
    'tauMaximumLikelihood',
  );

  /// tauEmpiricalBayes
  static final StatisticModelCode tauEmpiricalBayes = StatisticModelCode._(
    'tauEmpiricalBayes',
  );

  /// tauHunterSchmidt
  static final StatisticModelCode tauHunterSchmidt = StatisticModelCode._(
    'tauHunterSchmidt',
  );

  /// tauSidikJonkman
  static final StatisticModelCode tauSidikJonkman = StatisticModelCode._(
    'tauSidikJonkman',
  );

  /// tauHedges
  static final StatisticModelCode tauHedges = StatisticModelCode._(
    'tauHedges',
  );

  /// poolMantelHaenzsel
  static final StatisticModelCode poolMantelHaenzsel = StatisticModelCode._(
    'poolMantelHaenzsel',
  );

  /// poolInverseVariance
  static final StatisticModelCode poolInverseVariance = StatisticModelCode._(
    'poolInverseVariance',
  );

  /// poolPeto
  static final StatisticModelCode poolPeto = StatisticModelCode._(
    'poolPeto',
  );

  /// poolGeneralizedLinearMixedModel
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

  /// Clones the current instance
  @override
  StatisticModelCode clone() =>
      StatisticModelCode._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StatisticModelCode setElement(String name, dynamic elementValue) {
    return StatisticModelCode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StatisticModelCode withElement(Element? newElement) {
    return StatisticModelCode._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StatisticModelCode._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
