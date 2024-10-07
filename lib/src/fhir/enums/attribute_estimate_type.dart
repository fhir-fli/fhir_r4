import 'package:json_annotation/json_annotation.dart';

/// A statistic about a statistic, e.g.  Confidence interval or p-value
enum AttributeEstimateType {
  /// Display: Cochran's Q statistic
  /// Definition: A measure of heterogeneity across study computed by summing the squared deviations of each study's estimate from the overall meta-analytic estimate, weighting each study's contribution in the same manner as in the meta-analysis.
  @JsonValue('0000419')
  value0000419,

  /// Display: Confidence interval
  /// Definition: A range of values considered compatible with the observed data at the specified confidence level
  @JsonValue('C53324')
  C53324,

  /// Display: Credible interval
  /// Definition: An interval of a posterior distribution which is such that the density at any point inside the interval is greater than the density at any point outside and that the area under the curve for that interval is equal to a prespecified probability level. For any probability level there is generally only one such interval, which is also often known as the highest posterior density region. Unlike the usual confidence interval associated with frequentist inference, here the intervals specify the range within which parameters lie with a certain probability. The bayesian counterparts of the confidence interval used in frequentists statistics.
  @JsonValue('0000455')
  value0000455,

  /// Display: I-squared
  /// Definition: The percentage of total variation across studies that is due to heterogeneity rather than chance. I2 can be readily calculated from basic results obtained from a typical meta-analysis as i2 = 100%×(q - df)/q, where q is cochran's heterogeneity statistic and df the degrees of freedom. Negative values of i2 are put equal to zero so that i2 lies between 0% and 100%. A value of 0% indicates no observed heterogeneity, and larger values show increasing heterogeneity. Unlike cochran's q, it does not inherently depend upon the number of studies considered. A confidence interval for i² is constructed using either i) the iterative non-central chi-squared distribution method of hedges and piggott (2001); or ii) the test-based method of higgins and thompson (2002). The non-central chi-square method is currently the method of choice (higgins, personal communication, 2006) – it is computed if the 'exact' option is selected.
  @JsonValue('0000420')
  value0000420,

  /// Display: Interquartile range
  /// Definition: The difference between the 3d and 1st quartiles is called the interquartile range and it is used as a measure of variability (dispersion).
  @JsonValue('C53245')
  C53245,

  /// Display: P-value
  /// Definition: The probability of obtaining the results obtained, or more extreme results, if the hypothesis being tested and all other model assumptions are true
  @JsonValue('C44185')
  C44185,

  /// Display: Range
  /// Definition: The difference between the lowest and highest numerical values; the limits or scale of variation.
  @JsonValue('C38013')
  C38013,

  /// Display: Standard deviation
  /// Definition: A measure of the range of values in a set of numbers. Standard deviation is a statistic used as a measure of the dispersion or variation in a distribution, equal to the square root of the arithmetic mean of the squares of the deviations from the arithmetic mean.
  @JsonValue('C53322')
  C53322,

  /// Display: Standard error of the mean
  /// Definition: The standard deviation of the sample-mean's estimate of a population mean. It is calculated by dividing the sample standard deviation (i.e., the sample-based estimate of the standard deviation of the population) by the square root of n , the size (number of observations) of the sample.
  @JsonValue('0000037')
  value0000037,

  /// Display: Tau squared
  /// Definition: An estimate of the between-study variance in a random-effects meta-analysis. The square root of this number (i.e. Tau) is the estimated standard deviation of underlying effects across studies.
  @JsonValue('0000421')
  value0000421,

  /// Display: Variance
  /// Definition: A measure of the variability in a sample or population. It is calculated as the mean squared deviation (MSD) of the individual values from their common mean. In calculating the MSD, the divisor n is commonly used for a population variance and the divisor n-1 for a sample variance.
  @JsonValue('C48918')
  C48918,
  ;

  @override
  String toString() {
    switch (this) {
      case value0000419:
        return '0000419';
      case C53324:
        return 'C53324';
      case value0000455:
        return '0000455';
      case value0000420:
        return '0000420';
      case C53245:
        return 'C53245';
      case C44185:
        return 'C44185';
      case C38013:
        return 'C38013';
      case C53322:
        return 'C53322';
      case value0000037:
        return '0000037';
      case value0000421:
        return '0000421';
      case C48918:
        return 'C48918';
    }
  }

  String toJson() => toString();
  AttributeEstimateType fromString(String str) {
    switch (str) {
      case '0000419':
        return AttributeEstimateType.value0000419;
      case 'C53324':
        return AttributeEstimateType.C53324;
      case '0000455':
        return AttributeEstimateType.value0000455;
      case '0000420':
        return AttributeEstimateType.value0000420;
      case 'C53245':
        return AttributeEstimateType.C53245;
      case 'C44185':
        return AttributeEstimateType.C44185;
      case 'C38013':
        return AttributeEstimateType.C38013;
      case 'C53322':
        return AttributeEstimateType.C53322;
      case '0000037':
        return AttributeEstimateType.value0000037;
      case '0000421':
        return AttributeEstimateType.value0000421;
      case 'C48918':
        return AttributeEstimateType.C48918;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AttributeEstimateType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
