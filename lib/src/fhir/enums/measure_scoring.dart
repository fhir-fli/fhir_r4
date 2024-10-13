/// The scoring type of the measure.
enum MeasureScoring {
  /// Display: Proportion
  /// Definition: The measure score is defined using a proportion.
  proportion,

  /// Display: Ratio
  /// Definition: The measure score is defined using a ratio.
  ratio,

  /// Display: Continuous Variable
  /// Definition: The score is defined by a calculation of some quantity.
  continuous_variable,

  /// Display: Cohort
  /// Definition: The measure is a cohort definition.
  cohort,
  ;

  @override
  String toString() {
    switch (this) {
      case proportion:
        return 'proportion';
      case ratio:
        return 'ratio';
      case continuous_variable:
        return 'continuous-variable';
      case cohort:
        return 'cohort';
    }
  }

  /// Returns a [String] from a [MeasureScoring] enum.
  String toJson() => toString();

  /// Returns a [MeasureScoring] from a [String] enum.
  static MeasureScoring fromString(String str) {
    switch (str) {
      case 'proportion':
        return MeasureScoring.proportion;
      case 'ratio':
        return MeasureScoring.ratio;
      case 'continuous-variable':
        return MeasureScoring.continuous_variable;
      case 'cohort':
        return MeasureScoring.cohort;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureScoring] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureScoring fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
