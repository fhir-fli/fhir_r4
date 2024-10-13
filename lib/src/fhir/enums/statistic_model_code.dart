/// The handling of the variable in statistical analysis for exposures or outcomes.
enum StatisticModelCode {
  /// Display: one-tailed test (1 threshold)
  /// Definition: Used for one-tailed test (1 threshold), no additional elements needed
  oneTailedTest,

  /// Display: two-tailed test (2 thresholds)
  /// Definition: Used for two-tailed test (2 threshold), no additional elements needed
  twoTailedTest,

  /// Display: z-test
  /// Definition: Used for z-test, no additional elements needed
  zTest,

  /// Display: 1-sample t-test
  /// Definition: Used for 1-sample t-test, may be paired with "value" to express degrees of freedom
  oneSampleTTest,

  /// Display: 2-sample t-test
  /// Definition: Used for 2-sample t-test, may be paired with "value" to express degrees of freedom
  twoSampleTTest,

  /// Display: paired t-test
  /// Definition: Used for paired t-test, may be paired with "value" to express degrees of freedom
  pairedTTest,

  /// Display: Chi-square test
  /// Definition: Used for Chi-square test, may be paired with "value" to express degrees of freedom
  chiSquareTest,

  /// Display: Chi-square test for trend
  /// Definition: Used for Chi-square test for trend, may be paired with "value" to express degrees of freedom
  chiSquareTestTrend,

  /// Display: Pearson correlation
  /// Definition: Used for Pearson correlation, no additional elements needed
  pearsonCorrelation,

  /// Display: ANOVA (ANalysis Of VAriance)
  /// Definition: Used for ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anova,

  /// Display: one-way ANOVA
  /// Definition: Used for one-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anovaOneWay,

  /// Display: 2-way ANOVA without replication
  /// Definition: Used for 2-way ANOVA without replication method of analysis, may be paired with "value" to express degrees of freedom
  anovaTwoWay,

  /// Display: 2-way ANOVA with replication
  /// Definition: Used for 2-way ANOVA with replication method of analysis, may be paired with "value" to express degrees of freedom
  anovaTwoWayReplication,

  /// Display: multivariate ANOVA (MANOVA)
  /// Definition: Used for multivariate ANOVA (MANOVA) method of analysis, may be paired with "value" to express degrees of freedom
  manova,

  /// Display: 3-way ANOVA
  /// Definition: Used for 3-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
  anovaThreeWay,

  /// Display: sign test
  /// Definition: Used for sign test, no additional elements needed
  signTest,

  /// Display: Wilcoxon signed-rank test
  /// Definition: Used for Wilcoxon signed-rank test, no additional elements needed
  wilcoxonSignedRankTest,

  /// Display: Wilcoxon rank-sum test
  /// Definition: Used for Wilcoxon rank-sum test, no additional elements needed
  wilcoxonRankSumTest,

  /// Display: Mann-Whitney U test
  /// Definition: Used for Mann-Whitney U test, no additional elements needed
  mannWhitneyUTest,

  /// Display: Fisher’s exact test
  /// Definition: Used for Fisher's exact test, may be paired with "value" to express degrees of freedom
  fishersExactTest,

  /// Display: McNemar’s test
  /// Definition: Used for McNemar's test, no additional elements needed
  mcnemarsTest,

  /// Display: Kruskal Wallis test
  /// Definition: Used for Kruskal Wallis test, may be paired with "value" to express degrees of freedom
  kruskalWallisTest,

  /// Display: Spearman correlation
  /// Definition: Used for Spearman correlation, no additional elements needed
  spearmanCorrelation,

  /// Display: Kendall correlation
  /// Definition: Used for Kendall correlation, no additional elements needed
  kendallCorrelation,

  /// Display: Friedman test
  /// Definition: Used for Friedman test, no additional elements needed
  friedmanTest,

  /// Display: Goodman Kruska’s Gamma
  /// Definition: Used for Goodman Kruska’s Gamma, no additional elements needed
  goodmanKruskasGamma,

  /// Display: GLM (Generalized Linear Model)
  /// Definition: Used for GLM (Generalized Linear Model), no additional elements needed
  glm,

  /// Display: GLM with probit link
  /// Definition: Used for GLM with probit link, no additional elements needed
  glmProbit,

  /// Display: GLM with logit link
  /// Definition: Used for GLM with logit link, no additional elements needed
  glmLogit,

  /// Display: GLM with identity link
  /// Definition: Used for GLM with identity link, no additional elements needed
  glmIdentity,

  /// Display: GLM with log link
  /// Definition: Used for GLM with log link, no additional elements needed
  glmLog,

  /// Display: GLM with generalized logit link
  /// Definition: Used for GLM with generalized logit link, no additional elements needed
  glmGeneralizedLogit,

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Used for Generalized linear mixed model (GLMM), no additional elements needed
  glmm,

  /// Display: GLMM with probit link
  /// Definition: Used for GLMM with probit link, no additional elements needed
  glmmProbit,

  /// Display: GLMM with logit link
  /// Definition: Used for GLMM with logit link, no additional elements needed
  glmmLogit,

  /// Display: GLMM with identity link
  /// Definition: Used for GLMM with identity link, no additional elements needed
  glmmIdentity,

  /// Display: GLMM with log link
  /// Definition: Used for GLMM with log link, no additional elements needed
  glmmLog,

  /// Display: GLMM with generalized logit link
  /// Definition: Used for GLMM with generalized logit link, no additional elements needed
  glmmGeneralizedLogit,

  /// Display: Linear Regression
  /// Definition: Used for linear regression method of analysis, no additional elements needed
  linearRegression,

  /// Display: Logistic Regression
  /// Definition: Used for logistic regression method of analysis, no additional elements needed
  logisticRegression,

  /// Display: Polynomial Regression
  /// Definition: Used for Polynomial regression method of analysis, no additional elements needed
  polynomialRegression,

  /// Display: Cox Proportional Hazards
  /// Definition: Used for Cox proportional hazards method of analysis, no additional elements needed
  coxProportionalHazards,

  /// Display: Binomial Distribution for Regression
  /// Definition: Used for Binomial Distribution for Regression, no additional elements needed
  binomialDistributionRegression,

  /// Display: Multinomial Distribution for Regression
  /// Definition: Used for Multinomial Distribution for Regression, no additional elements needed
  multinomialDistributionRegression,

  /// Display: Poisson Regression
  /// Definition: Used for Poisson Regression, no additional elements needed
  poissonRegression,

  /// Display: Negative Binomial Regression
  /// Definition: Used for Negative Binomial Regression, no additional elements needed
  negativeBinomialRegression,

  /// Display: Zero-cell adjustment with constant
  /// Definition: Zero-cell adjustment done by adding a constant to all cells of affected studies, paired with "value" to define the constant
  zeroCellConstant,

  /// Display: Zero-cell adjustment with continuity correction
  /// Definition: Zero-cell adjustment done by treatment arm continuity correction, no additional elements needed
  zeroCellContinuityCorrection,

  /// Display: Adjusted analysis
  /// Definition: Used for adjusted analysis, paired with variable element(s)
  adjusted,

  /// Display: Interaction term
  /// Definition: Used for interaction term, paired with "value" and two or more variable elements
  interactionTerm,

  /// Display: Mantel-Haenszel method
  /// Definition: Used for Mantel-Haenszel method, no additional elements needed
  manteHaenszelMethod,

  /// Display: Meta-analysis
  /// Definition: Used for meta-analysis, no additional elements needed
  metaAnalysis,

  /// Display: Inverse variance method
  /// Definition: Used for inverse variance method of meta-analysis, no additional elements needed
  inverseVariance,

  /// Display: Peto method
  /// Definition: Used for Peto method of meta-analysis, no additional elements needed
  petoMethod,

  /// Display: Hartung-Knapp adjustment
  /// Definition: Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  hartungKnapp,

  /// Display: Modified Hartung-Knapp adjustment
  /// Definition: Modified Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
  modifiedHartungKnapp,

  /// Display: Fixed-effects
  /// Definition: From a fixed-effects analysis, no additional elements needed
  effectsFixed,

  /// Display: Random-effects
  /// Definition: From a random-effects analysis, no additional elements needed
  effectsRandom,

  /// Display: Chi-square test for homogeneity
  /// Definition: Used for Chi-square test for homogeneity, may be paired with "value" to express degrees of freedom
  chiSquareTestHomogeneity,

  /// Display: Dersimonian-Laird method
  /// Definition: Used for Dersimonian-Laird method of tau estimation, no additional elements needed
  dersimonianLairdMethod,

  /// Display: Paule-Mandel method
  /// Definition: Used for Paule-Mandel method of tau estimation, no additional elements needed
  pauleMandelMethod,

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Used for Restricted Maximum Likelihood method of tau estimation, no additional elements needed
  restrictedLikelihood,

  /// Display: Maximum Likelihood method
  /// Definition: Used for Maximum Likelihood method of tau estimation, no additional elements needed
  maximumLikelihood,

  /// Display: Empirical Bayes method
  /// Definition: Used for Empirical Bayes method of tau estimation, no additional elements needed
  empiricalBayes,

  /// Display: Hunter-Schmidt method
  /// Definition: Used for Hunter-Schmidt method of tau estimation, no additional elements needed
  hunterSchmidt,

  /// Display: Sidik-Jonkman method
  /// Definition: Used for Sidik-Jonkman method of tau estimation, no additional elements needed
  sidikJonkman,

  /// Display: Hedges method
  /// Definition: Used for Hedges method of tau estimation, no additional elements needed
  hedgesMethod,

  /// Display: Dersimonian-Laird method
  /// Definition: Dersimonian-Laird method for tau squared
  tauDersimonianLaird,

  /// Display: Paule-Mandel method
  /// Definition: Paule-Mandel method for tau squared
  tauPauleMandel,

  /// Display: Restricted Maximum Likelihood method
  /// Definition: Restricted Maximum Likelihood method for tau squared
  tauRestrictedMaximumLikelihood,

  /// Display: Maximum Likelihood method
  /// Definition: Maximum Likelihood method for tau squared
  tauMaximumLikelihood,

  /// Display: Empirical Bayes method
  /// Definition: Empirical Bayes method for tau squared
  tauEmpiricalBayes,

  /// Display: Hunter-Schmidt method
  /// Definition: Hunter-Schmidt method for tau squared
  tauHunterSchmidt,

  /// Display: Sidik-Jonkman method
  /// Definition: Sidik-Jonkman method for tau squared
  tauSidikJonkman,

  /// Display: Hedges method
  /// Definition: Hedges method for tau squared
  tauHedges,

  /// Display: Mantel-Haenszel method
  /// Definition: Mantel-Haenszel method for pooling in meta-analysis
  poolMantelHaenzsel,

  /// Display: Inverse variance method
  /// Definition: Inverse variance method for pooling in meta-analysis
  poolInverseVariance,

  /// Display: Peto method
  /// Definition: Peto method for pooling in meta-analysis
  poolPeto,

  /// Display: Generalized linear mixed model (GLMM)
  /// Definition: Generalized linear mixed model (GLMM) method for pooling in meta-analysis
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

  /// Returns a [String] from a [StatisticModelCode] enum.
  String toJson() => toString();

  /// Returns a [StatisticModelCode] from a [String] enum.
  static StatisticModelCode fromString(String str) {
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

  /// Returns a [StatisticModelCode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StatisticModelCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
