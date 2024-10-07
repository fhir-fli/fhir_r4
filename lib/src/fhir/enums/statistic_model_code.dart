import 'package:json_annotation/json_annotation.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes.
enum StatisticModelCode {
  /// Display: one-tailed test (1 threshold)
  /// Definition: Used for one-tailed test (1 threshold), no additional elements needed
  @JsonValue('oneTailedTest')
  oneTailedTest,

  /// Display: two-tailed test (2 thresholds)
  /// Definition: Used for two-tailed test (2 threshold), no additional elements needed
  @JsonValue('twoTailedTest')
  twoTailedTest,

  /// Display: z-test
  /// Definition: Used for z-test, no additional elements needed
  @JsonValue('zTest')
  zTest,

  /// Display: 1-sample t-test
  /// Definition: Used for 1-sample t-test, may be paired with "value" to express degrees of freedom
  @JsonValue('oneSampleTTest')
  oneSampleTTest,

  /// Display: 2-sample t-test
  /// Definition: Used for 2-sample t-test, may be paired with "value" to express degrees of freedom
  @JsonValue('twoSampleTTest')
  twoSampleTTest,

  /// Display: paired t-test
  /// Definition: Used for paired t-test, may be paired with "value" to express degrees of freedom
  @JsonValue('pairedTTest')
  pairedTTest,

  /// Display: Chi-square test
  /// Definition: Used for Chi-square test, may be paired with "value" to express degrees of freedom
  @JsonValue('chiSquareTest')
  chiSquareTest,

  /// Display: Chi-square test for trend
  /// Definition: Used for Chi-square test for trend, may be paired with "value" to express degrees of freedom
  @JsonValue('chiSquareTestTrend')
  chiSquareTestTrend,

  /// Display: Pearson correlation
  /// Definition: Used for Pearson correlation, no additional elements needed
  @JsonValue('pearsonCorrelation')
  pearsonCorrelation,

  /// Display: ANOVA (ANalysis Of VAriance)
  /// Definition: Used for ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('anova')
  anova,

  /// Display: one-way ANOVA
  /// Definition: Used for one-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('anovaOneWay')
  anovaOneWay,

  /// Display: 2-way ANOVA without replication
  /// Definition: Used for 2-way ANOVA without replication method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('anovaTwoWay')
  anovaTwoWay,

  /// Display: 2-way ANOVA with replication
  /// Definition: Used for 2-way ANOVA with replication method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('anovaTwoWayReplication')
  anovaTwoWayReplication,

  /// Display: multivariate ANOVA (MANOVA)
  /// Definition: Used for multivariate ANOVA (MANOVA) method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('manova')
  manova,

  /// Display: 3-way ANOVA
  /// Definition: Used for 3-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  @JsonValue('anovaThreeWay')
  anovaThreeWay,

  /// Display: sign test
  /// Definition: Used for sign test, no additional elements needed
  @JsonValue('signTest')
  signTest,

  /// Display: Wilcoxon signed-rank test
  /// Definition: Used for Wilcoxon signed-rank test, no additional elements needed
  @JsonValue('wilcoxonSignedRankTest')
  wilcoxonSignedRankTest,

  /// Display: Wilcoxon rank-sum test
  /// Definition: Used for Wilcoxon rank-sum test, no additional elements needed
  @JsonValue('wilcoxonRankSumTest')
  wilcoxonRankSumTest,

  /// Display: Mann-Whitney U test
  /// Definition: Used for Mann-Whitney U test, no additional elements needed
  @JsonValue('mannWhitneyUTest')
  mannWhitneyUTest,

  /// Display: Fisher’s exact test
  /// Definition: Used for Fisher's exact test, may be paired with "value" to express degrees of freedom
  @JsonValue('fishersExactTest')
  fishersExactTest,

  /// Display: McNemar’s test
  /// Definition: Used for McNemar's test, no additional elements needed
  @JsonValue('mcnemarsTest')
  mcnemarsTest,

  /// Display: Kruskal Wallis test
  /// Definition: Used for Kruskal Wallis test, may be paired with "value" to express degrees of freedom
  @JsonValue('kruskalWallisTest')
  kruskalWallisTest,

  /// Display: Spearman correlation
  /// Definition: Used for Spearman correlation, no additional elements needed
  @JsonValue('spearmanCorrelation')
  spearmanCorrelation,

  /// Display: Kendall correlation
  /// Definition: Used for Kendall correlation, no additional elements needed
  @JsonValue('kendallCorrelation')
  kendallCorrelation,

  /// Display: Friedman test
  /// Definition: Used for Friedman test, no additional elements needed
  @JsonValue('friedmanTest')
  friedmanTest,

  /// Display: Goodman Kruska’s Gamma
  /// Definition: Used for Goodman Kruska’s Gamma, no additional elements needed
  @JsonValue('goodmanKruskasGamma')
  goodmanKruskasGamma,

  /// Display: GLM (Generalized Linear Model)
  /// Definition: Used for GLM (Generalized Linear Model), no additional elements needed
  @JsonValue('glm')
  glm,

  /// Display: GLM with probit link
  /// Definition: Used for GLM with probit link, no additional elements needed
  @JsonValue('glmProbit')
  glmProbit,

  /// Display: GLM with logit link
  /// Definition: Used for GLM with logit link, no additional elements needed
  @JsonValue('glmLogit')
  glmLogit,

  /// Display: GLM with identity link
  /// Definition: Used for GLM with identity link, no additional elements needed
  @JsonValue('glmIdentity')
  glmIdentity,

  /// Display: GLM with log link
  /// Definition: Used for GLM with log link, no additional elements needed
  @JsonValue('glmLog')
  glmLog,

  /// Display: GLM with generalized logit link
  /// Definition: Used for GLM with generalized logit link, no additional elements needed
  @JsonValue('glmGeneralizedLogit')
  glmGeneralizedLogit,

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Used for Generalized linear mixed model (GLMM), no additional elements needed
  @JsonValue('glmm')
  glmm,

  /// Display: GLMM with probit link
  /// Definition: Used for GLMM with probit link, no additional elements needed
  @JsonValue('glmmProbit')
  glmmProbit,

  /// Display: GLMM with logit link
  /// Definition: Used for GLMM with logit link, no additional elements needed
  @JsonValue('glmmLogit')
  glmmLogit,

  /// Display: GLMM with identity link
  /// Definition: Used for GLMM with identity link, no additional elements needed
  @JsonValue('glmmIdentity')
  glmmIdentity,

  /// Display: GLMM with log link
  /// Definition: Used for GLMM with log link, no additional elements needed
  @JsonValue('glmmLog')
  glmmLog,

  /// Display: GLMM with generalized logit link
  /// Definition: Used for GLMM with generalized logit link, no additional elements needed
  @JsonValue('glmmGeneralizedLogit')
  glmmGeneralizedLogit,

  /// Display: Linear Regression
  /// Definition: Used for linear regression method of analysis, no additional elements needed
  @JsonValue('linearRegression')
  linearRegression,

  /// Display: Logistic Regression
  /// Definition: Used for logistic regression method of analysis, no additional elements needed
  @JsonValue('logisticRegression')
  logisticRegression,

  /// Display: Polynomial Regression
  /// Definition: Used for Polynomial regression method of analysis, no additional elements needed
  @JsonValue('polynomialRegression')
  polynomialRegression,

  /// Display: Cox Proportional Hazards
  /// Definition: Used for Cox proportional hazards method of analysis, no additional elements needed
  @JsonValue('coxProportionalHazards')
  coxProportionalHazards,

  /// Display: Binomial Distribution for Regression
  /// Definition: Used for Binomial Distribution for Regression, no additional elements needed
  @JsonValue('binomialDistributionRegression')
  binomialDistributionRegression,

  /// Display: Multinomial Distribution for Regression
  /// Definition: Used for Multinomial Distribution for Regression, no additional elements needed
  @JsonValue('multinomialDistributionRegression')
  multinomialDistributionRegression,

  /// Display: Poisson Regression
  /// Definition: Used for Poisson Regression, no additional elements needed
  @JsonValue('poissonRegression')
  poissonRegression,

  /// Display: Negative Binomial Regression
  /// Definition: Used for Negative Binomial Regression, no additional elements needed
  @JsonValue('negativeBinomialRegression')
  negativeBinomialRegression,

  /// Display: Zero-cell adjustment with constant
  /// Definition: Zero-cell adjustment done by adding a constant to all cells of affected studies, paired with "value" to define the constant
  @JsonValue('zeroCellConstant')
  zeroCellConstant,

  /// Display: Zero-cell adjustment with continuity correction
  /// Definition: Zero-cell adjustment done by treatment arm continuity correction, no additional elements needed
  @JsonValue('zeroCellContinuityCorrection')
  zeroCellContinuityCorrection,

  /// Display: Adjusted analysis
  /// Definition: Used for adjusted analysis, paired with variable element(s)
  @JsonValue('adjusted')
  adjusted,

  /// Display: Interaction term
  /// Definition: Used for interaction term, paired with "value" and two or more variable elements
  @JsonValue('interactionTerm')
  interactionTerm,

  /// Display: Mantel-Haenszel method
  /// Definition: Used for Mantel-Haenszel method, no additional elements needed
  @JsonValue('manteHaenszelMethod')
  manteHaenszelMethod,

  /// Display: Meta-analysis
  /// Definition: Used for meta-analysis, no additional elements needed
  @JsonValue('metaAnalysis')
  metaAnalysis,

  /// Display: Inverse variance method
  /// Definition: Used for inverse variance method of meta-analysis, no additional elements needed
  @JsonValue('inverseVariance')
  inverseVariance,

  /// Display: Peto method
  /// Definition: Used for Peto method of meta-analysis, no additional elements needed
  @JsonValue('petoMethod')
  petoMethod,

  /// Display: Hartung-Knapp adjustment
  /// Definition: Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  @JsonValue('hartungKnapp')
  hartungKnapp,

  /// Display: Modified Hartung-Knapp adjustment
  /// Definition: Modified Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  @JsonValue('modifiedHartungKnapp')
  modifiedHartungKnapp,

  /// Display: Fixed-effects
  /// Definition: From a fixed-effects analysis, no additional elements needed
  @JsonValue('effectsFixed')
  effectsFixed,

  /// Display: Random-effects
  /// Definition: From a random-effects analysis, no additional elements needed
  @JsonValue('effectsRandom')
  effectsRandom,

  /// Display: Chi-square test for homogeneity
  /// Definition: Used for Chi-square test for homogeneity, may be paired with "value" to express degrees of freedom
  @JsonValue('chiSquareTestHomogeneity')
  chiSquareTestHomogeneity,

  /// Display: Dersimonian-Laird method
  /// Definition: Used for Dersimonian-Laird method of tau estimation, no additional elements needed
  @JsonValue('dersimonianLairdMethod')
  dersimonianLairdMethod,

  /// Display: Paule-Mandel method
  /// Definition: Used for Paule-Mandel method of tau estimation, no additional elements needed
  @JsonValue('pauleMandelMethod')
  pauleMandelMethod,

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Used for Restricted Maximum Likelihood method of tau estimation, no additional elements needed
  @JsonValue('restrictedLikelihood')
  restrictedLikelihood,

  /// Display: Maximum Likelihood method
  /// Definition: Used for Maximum Likelihood method of tau estimation, no additional elements needed
  @JsonValue('maximumLikelihood')
  maximumLikelihood,

  /// Display: Empirical Bayes method
  /// Definition: Used for Empirical Bayes method of tau estimation, no additional elements needed
  @JsonValue('empiricalBayes')
  empiricalBayes,

  /// Display: Hunter-Schmidt method
  /// Definition: Used for Hunter-Schmidt method of tau estimation, no additional elements needed
  @JsonValue('hunterSchmidt')
  hunterSchmidt,

  /// Display: Sidik-Jonkman method
  /// Definition: Used for Sidik-Jonkman method of tau estimation, no additional elements needed
  @JsonValue('sidikJonkman')
  sidikJonkman,

  /// Display: Hedges method
  /// Definition: Used for Hedges method of tau estimation, no additional elements needed
  @JsonValue('hedgesMethod')
  hedgesMethod,

  /// Display: Dersimonian-Laird method
  /// Definition: Dersimonian-Laird method for tau squared
  @JsonValue('tauDersimonianLaird')
  tauDersimonianLaird,

  /// Display: Paule-Mandel method
  /// Definition: Paule-Mandel method for tau squared
  @JsonValue('tauPauleMandel')
  tauPauleMandel,

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Restricted Maximum Likelihood method for tau squared
  @JsonValue('tauRestrictedMaximumLikelihood')
  tauRestrictedMaximumLikelihood,

  /// Display: Maximum Likelihood method
  /// Definition: Maximum Likelihood method for tau squared
  @JsonValue('tauMaximumLikelihood')
  tauMaximumLikelihood,

  /// Display: Empirical Bayes method
  /// Definition: Empirical Bayes method for tau squared
  @JsonValue('tauEmpiricalBayes')
  tauEmpiricalBayes,

  /// Display: Hunter-Schmidt method
  /// Definition: Hunter-Schmidt method for tau squared
  @JsonValue('tauHunterSchmidt')
  tauHunterSchmidt,

  /// Display: Sidik-Jonkman method
  /// Definition: Sidik-Jonkman method for tau squared
  @JsonValue('tauSidikJonkman')
  tauSidikJonkman,

  /// Display: Hedges method
  /// Definition: Hedges method for tau squared
  @JsonValue('tauHedges')
  tauHedges,

  /// Display: Mantel-Haenszel method
  /// Definition: Mantel-Haenszel method for pooling in meta-analysis
  @JsonValue('poolMantelHaenzsel')
  poolMantelHaenzsel,

  /// Display: Inverse variance method
  /// Definition: Inverse variance method for pooling in meta-analysis
  @JsonValue('poolInverseVariance')
  poolInverseVariance,

  /// Display: Peto method
  /// Definition: Peto method for pooling in meta-analysis
  @JsonValue('poolPeto')
  poolPeto,

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Generalized linear mixed model (GLMM) method for pooling in meta-analysis
  @JsonValue('poolGeneralizedLinearMixedModel')
  poolGeneralizedLinearMixedModel,
  ;

  @override
  String toString() {
    switch (this) {
      case oneTailedTest:
        return 'oneTailedTest';
      case twoTailedTest:
        return 'twoTailedTest';
      case zTest:
        return 'zTest';
      case oneSampleTTest:
        return 'oneSampleTTest';
      case twoSampleTTest:
        return 'twoSampleTTest';
      case pairedTTest:
        return 'pairedTTest';
      case chiSquareTest:
        return 'chiSquareTest';
      case chiSquareTestTrend:
        return 'chiSquareTestTrend';
      case pearsonCorrelation:
        return 'pearsonCorrelation';
      case anova:
        return 'anova';
      case anovaOneWay:
        return 'anovaOneWay';
      case anovaTwoWay:
        return 'anovaTwoWay';
      case anovaTwoWayReplication:
        return 'anovaTwoWayReplication';
      case manova:
        return 'manova';
      case anovaThreeWay:
        return 'anovaThreeWay';
      case signTest:
        return 'signTest';
      case wilcoxonSignedRankTest:
        return 'wilcoxonSignedRankTest';
      case wilcoxonRankSumTest:
        return 'wilcoxonRankSumTest';
      case mannWhitneyUTest:
        return 'mannWhitneyUTest';
      case fishersExactTest:
        return 'fishersExactTest';
      case mcnemarsTest:
        return 'mcnemarsTest';
      case kruskalWallisTest:
        return 'kruskalWallisTest';
      case spearmanCorrelation:
        return 'spearmanCorrelation';
      case kendallCorrelation:
        return 'kendallCorrelation';
      case friedmanTest:
        return 'friedmanTest';
      case goodmanKruskasGamma:
        return 'goodmanKruskasGamma';
      case glm:
        return 'glm';
      case glmProbit:
        return 'glmProbit';
      case glmLogit:
        return 'glmLogit';
      case glmIdentity:
        return 'glmIdentity';
      case glmLog:
        return 'glmLog';
      case glmGeneralizedLogit:
        return 'glmGeneralizedLogit';
      case glmm:
        return 'glmm';
      case glmmProbit:
        return 'glmmProbit';
      case glmmLogit:
        return 'glmmLogit';
      case glmmIdentity:
        return 'glmmIdentity';
      case glmmLog:
        return 'glmmLog';
      case glmmGeneralizedLogit:
        return 'glmmGeneralizedLogit';
      case linearRegression:
        return 'linearRegression';
      case logisticRegression:
        return 'logisticRegression';
      case polynomialRegression:
        return 'polynomialRegression';
      case coxProportionalHazards:
        return 'coxProportionalHazards';
      case binomialDistributionRegression:
        return 'binomialDistributionRegression';
      case multinomialDistributionRegression:
        return 'multinomialDistributionRegression';
      case poissonRegression:
        return 'poissonRegression';
      case negativeBinomialRegression:
        return 'negativeBinomialRegression';
      case zeroCellConstant:
        return 'zeroCellConstant';
      case zeroCellContinuityCorrection:
        return 'zeroCellContinuityCorrection';
      case adjusted:
        return 'adjusted';
      case interactionTerm:
        return 'interactionTerm';
      case manteHaenszelMethod:
        return 'manteHaenszelMethod';
      case metaAnalysis:
        return 'metaAnalysis';
      case inverseVariance:
        return 'inverseVariance';
      case petoMethod:
        return 'petoMethod';
      case hartungKnapp:
        return 'hartungKnapp';
      case modifiedHartungKnapp:
        return 'modifiedHartungKnapp';
      case effectsFixed:
        return 'effectsFixed';
      case effectsRandom:
        return 'effectsRandom';
      case chiSquareTestHomogeneity:
        return 'chiSquareTestHomogeneity';
      case dersimonianLairdMethod:
        return 'dersimonianLairdMethod';
      case pauleMandelMethod:
        return 'pauleMandelMethod';
      case restrictedLikelihood:
        return 'restrictedLikelihood';
      case maximumLikelihood:
        return 'maximumLikelihood';
      case empiricalBayes:
        return 'empiricalBayes';
      case hunterSchmidt:
        return 'hunterSchmidt';
      case sidikJonkman:
        return 'sidikJonkman';
      case hedgesMethod:
        return 'hedgesMethod';
      case tauDersimonianLaird:
        return 'tauDersimonianLaird';
      case tauPauleMandel:
        return 'tauPauleMandel';
      case tauRestrictedMaximumLikelihood:
        return 'tauRestrictedMaximumLikelihood';
      case tauMaximumLikelihood:
        return 'tauMaximumLikelihood';
      case tauEmpiricalBayes:
        return 'tauEmpiricalBayes';
      case tauHunterSchmidt:
        return 'tauHunterSchmidt';
      case tauSidikJonkman:
        return 'tauSidikJonkman';
      case tauHedges:
        return 'tauHedges';
      case poolMantelHaenzsel:
        return 'poolMantelHaenzsel';
      case poolInverseVariance:
        return 'poolInverseVariance';
      case poolPeto:
        return 'poolPeto';
      case poolGeneralizedLinearMixedModel:
        return 'poolGeneralizedLinearMixedModel';
    }
  }

  String toJson() => toString();
  StatisticModelCode fromString(String str) {
    switch (str) {
      case 'oneTailedTest':
        return StatisticModelCode.oneTailedTest;
      case 'twoTailedTest':
        return StatisticModelCode.twoTailedTest;
      case 'zTest':
        return StatisticModelCode.zTest;
      case 'oneSampleTTest':
        return StatisticModelCode.oneSampleTTest;
      case 'twoSampleTTest':
        return StatisticModelCode.twoSampleTTest;
      case 'pairedTTest':
        return StatisticModelCode.pairedTTest;
      case 'chiSquareTest':
        return StatisticModelCode.chiSquareTest;
      case 'chiSquareTestTrend':
        return StatisticModelCode.chiSquareTestTrend;
      case 'pearsonCorrelation':
        return StatisticModelCode.pearsonCorrelation;
      case 'anova':
        return StatisticModelCode.anova;
      case 'anovaOneWay':
        return StatisticModelCode.anovaOneWay;
      case 'anovaTwoWay':
        return StatisticModelCode.anovaTwoWay;
      case 'anovaTwoWayReplication':
        return StatisticModelCode.anovaTwoWayReplication;
      case 'manova':
        return StatisticModelCode.manova;
      case 'anovaThreeWay':
        return StatisticModelCode.anovaThreeWay;
      case 'signTest':
        return StatisticModelCode.signTest;
      case 'wilcoxonSignedRankTest':
        return StatisticModelCode.wilcoxonSignedRankTest;
      case 'wilcoxonRankSumTest':
        return StatisticModelCode.wilcoxonRankSumTest;
      case 'mannWhitneyUTest':
        return StatisticModelCode.mannWhitneyUTest;
      case 'fishersExactTest':
        return StatisticModelCode.fishersExactTest;
      case 'mcnemarsTest':
        return StatisticModelCode.mcnemarsTest;
      case 'kruskalWallisTest':
        return StatisticModelCode.kruskalWallisTest;
      case 'spearmanCorrelation':
        return StatisticModelCode.spearmanCorrelation;
      case 'kendallCorrelation':
        return StatisticModelCode.kendallCorrelation;
      case 'friedmanTest':
        return StatisticModelCode.friedmanTest;
      case 'goodmanKruskasGamma':
        return StatisticModelCode.goodmanKruskasGamma;
      case 'glm':
        return StatisticModelCode.glm;
      case 'glmProbit':
        return StatisticModelCode.glmProbit;
      case 'glmLogit':
        return StatisticModelCode.glmLogit;
      case 'glmIdentity':
        return StatisticModelCode.glmIdentity;
      case 'glmLog':
        return StatisticModelCode.glmLog;
      case 'glmGeneralizedLogit':
        return StatisticModelCode.glmGeneralizedLogit;
      case 'glmm':
        return StatisticModelCode.glmm;
      case 'glmmProbit':
        return StatisticModelCode.glmmProbit;
      case 'glmmLogit':
        return StatisticModelCode.glmmLogit;
      case 'glmmIdentity':
        return StatisticModelCode.glmmIdentity;
      case 'glmmLog':
        return StatisticModelCode.glmmLog;
      case 'glmmGeneralizedLogit':
        return StatisticModelCode.glmmGeneralizedLogit;
      case 'linearRegression':
        return StatisticModelCode.linearRegression;
      case 'logisticRegression':
        return StatisticModelCode.logisticRegression;
      case 'polynomialRegression':
        return StatisticModelCode.polynomialRegression;
      case 'coxProportionalHazards':
        return StatisticModelCode.coxProportionalHazards;
      case 'binomialDistributionRegression':
        return StatisticModelCode.binomialDistributionRegression;
      case 'multinomialDistributionRegression':
        return StatisticModelCode.multinomialDistributionRegression;
      case 'poissonRegression':
        return StatisticModelCode.poissonRegression;
      case 'negativeBinomialRegression':
        return StatisticModelCode.negativeBinomialRegression;
      case 'zeroCellConstant':
        return StatisticModelCode.zeroCellConstant;
      case 'zeroCellContinuityCorrection':
        return StatisticModelCode.zeroCellContinuityCorrection;
      case 'adjusted':
        return StatisticModelCode.adjusted;
      case 'interactionTerm':
        return StatisticModelCode.interactionTerm;
      case 'manteHaenszelMethod':
        return StatisticModelCode.manteHaenszelMethod;
      case 'metaAnalysis':
        return StatisticModelCode.metaAnalysis;
      case 'inverseVariance':
        return StatisticModelCode.inverseVariance;
      case 'petoMethod':
        return StatisticModelCode.petoMethod;
      case 'hartungKnapp':
        return StatisticModelCode.hartungKnapp;
      case 'modifiedHartungKnapp':
        return StatisticModelCode.modifiedHartungKnapp;
      case 'effectsFixed':
        return StatisticModelCode.effectsFixed;
      case 'effectsRandom':
        return StatisticModelCode.effectsRandom;
      case 'chiSquareTestHomogeneity':
        return StatisticModelCode.chiSquareTestHomogeneity;
      case 'dersimonianLairdMethod':
        return StatisticModelCode.dersimonianLairdMethod;
      case 'pauleMandelMethod':
        return StatisticModelCode.pauleMandelMethod;
      case 'restrictedLikelihood':
        return StatisticModelCode.restrictedLikelihood;
      case 'maximumLikelihood':
        return StatisticModelCode.maximumLikelihood;
      case 'empiricalBayes':
        return StatisticModelCode.empiricalBayes;
      case 'hunterSchmidt':
        return StatisticModelCode.hunterSchmidt;
      case 'sidikJonkman':
        return StatisticModelCode.sidikJonkman;
      case 'hedgesMethod':
        return StatisticModelCode.hedgesMethod;
      case 'tauDersimonianLaird':
        return StatisticModelCode.tauDersimonianLaird;
      case 'tauPauleMandel':
        return StatisticModelCode.tauPauleMandel;
      case 'tauRestrictedMaximumLikelihood':
        return StatisticModelCode.tauRestrictedMaximumLikelihood;
      case 'tauMaximumLikelihood':
        return StatisticModelCode.tauMaximumLikelihood;
      case 'tauEmpiricalBayes':
        return StatisticModelCode.tauEmpiricalBayes;
      case 'tauHunterSchmidt':
        return StatisticModelCode.tauHunterSchmidt;
      case 'tauSidikJonkman':
        return StatisticModelCode.tauSidikJonkman;
      case 'tauHedges':
        return StatisticModelCode.tauHedges;
      case 'poolMantelHaenzsel':
        return StatisticModelCode.poolMantelHaenzsel;
      case 'poolInverseVariance':
        return StatisticModelCode.poolInverseVariance;
      case 'poolPeto':
        return StatisticModelCode.poolPeto;
      case 'poolGeneralizedLinearMixedModel':
        return StatisticModelCode.poolGeneralizedLinearMixedModel;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  StatisticModelCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
