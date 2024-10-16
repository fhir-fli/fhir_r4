import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
enum StatisticModelCode {
  /// Display: one-tailed test (1 threshold)
  /// Definition: Used for one-tailed test (1 threshold), no additional elements needed
  oneTailedTest('oneTailedTest'),

  /// Display: two-tailed test (2 thresholds)
  /// Definition: Used for two-tailed test (2 threshold), no additional elements needed
  twoTailedTest('twoTailedTest'),

  /// Display: z-test
  /// Definition: Used for z-test, no additional elements needed
  zTest('zTest'),

  /// Display: 1-sample t-test
  /// Definition: Used for 1-sample t-test, may be paired with "value" to express degrees of freedom
  oneSampleTTest('oneSampleTTest'),

  /// Display: 2-sample t-test
  /// Definition: Used for 2-sample t-test, may be paired with "value" to express degrees of freedom
  twoSampleTTest('twoSampleTTest'),

  /// Display: paired t-test
  /// Definition: Used for paired t-test, may be paired with "value" to express degrees of freedom
  pairedTTest('pairedTTest'),

  /// Display: Chi-square test
  /// Definition: Used for Chi-square test, may be paired with "value" to express degrees of freedom
  chiSquareTest('chiSquareTest'),

  /// Display: Chi-square test for trend
  /// Definition: Used for Chi-square test for trend, may be paired with "value" to express degrees of freedom
  chiSquareTestTrend('chiSquareTestTrend'),

  /// Display: Pearson correlation
  /// Definition: Used for Pearson correlation, no additional elements needed
  pearsonCorrelation('pearsonCorrelation'),

  /// Display: ANOVA (ANalysis Of VAriance)
  /// Definition: Used for ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anova('anova'),

  /// Display: one-way ANOVA
  /// Definition: Used for one-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anovaOneWay('anovaOneWay'),

  /// Display: 2-way ANOVA without replication
  /// Definition: Used for 2-way ANOVA without replication method of analysis, may be paired with "value" to express degrees of freedom
  anovaTwoWay('anovaTwoWay'),

  /// Display: 2-way ANOVA with replication
  /// Definition: Used for 2-way ANOVA with replication method of analysis, may be paired with "value" to express degrees of freedom
  anovaTwoWayReplication('anovaTwoWayReplication'),

  /// Display: multivariate ANOVA (MANOVA)
  /// Definition: Used for multivariate ANOVA (MANOVA) method of analysis, may be paired with "value" to express degrees of freedom
  manova('manova'),

  /// Display: 3-way ANOVA
  /// Definition: Used for 3-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anovaThreeWay('anovaThreeWay'),

  /// Display: sign test
  /// Definition: Used for sign test, no additional elements needed
  signTest('signTest'),

  /// Display: Wilcoxon signed-rank test
  /// Definition: Used for Wilcoxon signed-rank test, no additional elements needed
  wilcoxonSignedRankTest('wilcoxonSignedRankTest'),

  /// Display: Wilcoxon rank-sum test
  /// Definition: Used for Wilcoxon rank-sum test, no additional elements needed
  wilcoxonRankSumTest('wilcoxonRankSumTest'),

  /// Display: Mann-Whitney U test
  /// Definition: Used for Mann-Whitney U test, no additional elements needed
  mannWhitneyUTest('mannWhitneyUTest'),

  /// Display: Fisher’s exact test
  /// Definition: Used for Fisher's exact test, may be paired with "value" to express degrees of freedom
  fishersExactTest('fishersExactTest'),

  /// Display: McNemar’s test
  /// Definition: Used for McNemar's test, no additional elements needed
  mcnemarsTest('mcnemarsTest'),

  /// Display: Kruskal Wallis test
  /// Definition: Used for Kruskal Wallis test, may be paired with "value" to express degrees of freedom
  kruskalWallisTest('kruskalWallisTest'),

  /// Display: Spearman correlation
  /// Definition: Used for Spearman correlation, no additional elements needed
  spearmanCorrelation('spearmanCorrelation'),

  /// Display: Kendall correlation
  /// Definition: Used for Kendall correlation, no additional elements needed
  kendallCorrelation('kendallCorrelation'),

  /// Display: Friedman test
  /// Definition: Used for Friedman test, no additional elements needed
  friedmanTest('friedmanTest'),

  /// Display: Goodman Kruska’s Gamma
  /// Definition: Used for Goodman Kruska’s Gamma, no additional elements needed
  goodmanKruskasGamma('goodmanKruskasGamma'),

  /// Display: GLM (Generalized Linear Model)
  /// Definition: Used for GLM (Generalized Linear Model), no additional elements needed
  glm('glm'),

  /// Display: GLM with probit link
  /// Definition: Used for GLM with probit link, no additional elements needed
  glmProbit('glmProbit'),

  /// Display: GLM with logit link
  /// Definition: Used for GLM with logit link, no additional elements needed
  glmLogit('glmLogit'),

  /// Display: GLM with identity link
  /// Definition: Used for GLM with identity link, no additional elements needed
  glmIdentity('glmIdentity'),

  /// Display: GLM with log link
  /// Definition: Used for GLM with log link, no additional elements needed
  glmLog('glmLog'),

  /// Display: GLM with generalized logit link
  /// Definition: Used for GLM with generalized logit link, no additional elements needed
  glmGeneralizedLogit('glmGeneralizedLogit'),

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Used for Generalized linear mixed model (GLMM), no additional elements needed
  glmm('glmm'),

  /// Display: GLMM with probit link
  /// Definition: Used for GLMM with probit link, no additional elements needed
  glmmProbit('glmmProbit'),

  /// Display: GLMM with logit link
  /// Definition: Used for GLMM with logit link, no additional elements needed
  glmmLogit('glmmLogit'),

  /// Display: GLMM with identity link
  /// Definition: Used for GLMM with identity link, no additional elements needed
  glmmIdentity('glmmIdentity'),

  /// Display: GLMM with log link
  /// Definition: Used for GLMM with log link, no additional elements needed
  glmmLog('glmmLog'),

  /// Display: GLMM with generalized logit link
  /// Definition: Used for GLMM with generalized logit link, no additional elements needed
  glmmGeneralizedLogit('glmmGeneralizedLogit'),

  /// Display: Linear Regression
  /// Definition: Used for linear regression method of analysis, no additional elements needed
  linearRegression('linearRegression'),

  /// Display: Logistic Regression
  /// Definition: Used for logistic regression method of analysis, no additional elements needed
  logisticRegression('logisticRegression'),

  /// Display: Polynomial Regression
  /// Definition: Used for Polynomial regression method of analysis, no additional elements needed
  polynomialRegression('polynomialRegression'),

  /// Display: Cox Proportional Hazards
  /// Definition: Used for Cox proportional hazards method of analysis, no additional elements needed
  coxProportionalHazards('coxProportionalHazards'),

  /// Display: Binomial Distribution for Regression
  /// Definition: Used for Binomial Distribution for Regression, no additional elements needed
  binomialDistributionRegression('binomialDistributionRegression'),

  /// Display: Multinomial Distribution for Regression
  /// Definition: Used for Multinomial Distribution for Regression, no additional elements needed
  multinomialDistributionRegression('multinomialDistributionRegression'),

  /// Display: Poisson Regression
  /// Definition: Used for Poisson Regression, no additional elements needed
  poissonRegression('poissonRegression'),

  /// Display: Negative Binomial Regression
  /// Definition: Used for Negative Binomial Regression, no additional elements needed
  negativeBinomialRegression('negativeBinomialRegression'),

  /// Display: Zero-cell adjustment with constant
  /// Definition: Zero-cell adjustment done by adding a constant to all cells of affected studies, paired with "value" to define the constant
  zeroCellConstant('zeroCellConstant'),

  /// Display: Zero-cell adjustment with continuity correction
  /// Definition: Zero-cell adjustment done by treatment arm continuity correction, no additional elements needed
  zeroCellContinuityCorrection('zeroCellContinuityCorrection'),

  /// Display: Adjusted analysis
  /// Definition: Used for adjusted analysis, paired with variable element(s)
  adjusted('adjusted'),

  /// Display: Interaction term
  /// Definition: Used for interaction term, paired with "value" and two or more variable elements
  interactionTerm('interactionTerm'),

  /// Display: Mantel-Haenszel method
  /// Definition: Used for Mantel-Haenszel method, no additional elements needed
  manteHaenszelMethod('manteHaenszelMethod'),

  /// Display: Meta-analysis
  /// Definition: Used for meta-analysis, no additional elements needed
  metaAnalysis('metaAnalysis'),

  /// Display: Inverse variance method
  /// Definition: Used for inverse variance method of meta-analysis, no additional elements needed
  inverseVariance('inverseVariance'),

  /// Display: Peto method
  /// Definition: Used for Peto method of meta-analysis, no additional elements needed
  petoMethod('petoMethod'),

  /// Display: Hartung-Knapp adjustment
  /// Definition: Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  hartungKnapp('hartungKnapp'),

  /// Display: Modified Hartung-Knapp adjustment
  /// Definition: Modified Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  modifiedHartungKnapp('modifiedHartungKnapp'),

  /// Display: Fixed-effects
  /// Definition: From a fixed-effects analysis, no additional elements needed
  effectsFixed('effectsFixed'),

  /// Display: Random-effects
  /// Definition: From a random-effects analysis, no additional elements needed
  effectsRandom('effectsRandom'),

  /// Display: Chi-square test for homogeneity
  /// Definition: Used for Chi-square test for homogeneity, may be paired with "value" to express degrees of freedom
  chiSquareTestHomogeneity('chiSquareTestHomogeneity'),

  /// Display: Dersimonian-Laird method
  /// Definition: Used for Dersimonian-Laird method of tau estimation, no additional elements needed
  dersimonianLairdMethod('dersimonianLairdMethod'),

  /// Display: Paule-Mandel method
  /// Definition: Used for Paule-Mandel method of tau estimation, no additional elements needed
  pauleMandelMethod('pauleMandelMethod'),

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Used for Restricted Maximum Likelihood method of tau estimation, no additional elements needed
  restrictedLikelihood('restrictedLikelihood'),

  /// Display: Maximum Likelihood method
  /// Definition: Used for Maximum Likelihood method of tau estimation, no additional elements needed
  maximumLikelihood('maximumLikelihood'),

  /// Display: Empirical Bayes method
  /// Definition: Used for Empirical Bayes method of tau estimation, no additional elements needed
  empiricalBayes('empiricalBayes'),

  /// Display: Hunter-Schmidt method
  /// Definition: Used for Hunter-Schmidt method of tau estimation, no additional elements needed
  hunterSchmidt('hunterSchmidt'),

  /// Display: Sidik-Jonkman method
  /// Definition: Used for Sidik-Jonkman method of tau estimation, no additional elements needed
  sidikJonkman('sidikJonkman'),

  /// Display: Hedges method
  /// Definition: Used for Hedges method of tau estimation, no additional elements needed
  hedgesMethod('hedgesMethod'),

  /// Display: Dersimonian-Laird method
  /// Definition: Dersimonian-Laird method for tau squared
  tauDersimonianLaird('tauDersimonianLaird'),

  /// Display: Paule-Mandel method
  /// Definition: Paule-Mandel method for tau squared
  tauPauleMandel('tauPauleMandel'),

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Restricted Maximum Likelihood method for tau squared
  tauRestrictedMaximumLikelihood('tauRestrictedMaximumLikelihood'),

  /// Display: Maximum Likelihood method
  /// Definition: Maximum Likelihood method for tau squared
  tauMaximumLikelihood('tauMaximumLikelihood'),

  /// Display: Empirical Bayes method
  /// Definition: Empirical Bayes method for tau squared
  tauEmpiricalBayes('tauEmpiricalBayes'),

  /// Display: Hunter-Schmidt method
  /// Definition: Hunter-Schmidt method for tau squared
  tauHunterSchmidt('tauHunterSchmidt'),

  /// Display: Sidik-Jonkman method
  /// Definition: Sidik-Jonkman method for tau squared
  tauSidikJonkman('tauSidikJonkman'),

  /// Display: Hedges method
  /// Definition: Hedges method for tau squared
  tauHedges('tauHedges'),

  /// Display: Mantel-Haenszel method
  /// Definition: Mantel-Haenszel method for pooling in meta-analysis
  poolMantelHaenzsel('poolMantelHaenzsel'),

  /// Display: Inverse variance method
  /// Definition: Inverse variance method for pooling in meta-analysis
  poolInverseVariance('poolInverseVariance'),

  /// Display: Peto method
  /// Definition: Peto method for pooling in meta-analysis
  poolPeto('poolPeto'),

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Generalized linear mixed model (GLMM) method for pooling in meta-analysis
  poolGeneralizedLinearMixedModel('poolGeneralizedLinearMixedModel'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StatisticModelCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StatisticModelCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticModelCode.elementOnly.withElement(element);
    }
    return StatisticModelCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StatisticModelCode withElement(Element? newElement) {
    return StatisticModelCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
