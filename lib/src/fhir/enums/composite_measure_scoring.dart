/// The composite scoring method of the measure.
enum CompositeMeasureScoring {
  /// Display: Opportunity
  /// Definition: Opportunity scoring combines the scores from component measures by combining the numerators and denominators for each component.
  opportunity,

  /// Display: All-or-nothing
  /// Definition: All-or-nothing scoring includes an individual in the numerator of the composite measure if they are in the numerators of all of the component measures in which they are in the denominator.
  all_or_nothing,

  /// Display: Linear
  /// Definition: Linear scoring gives an individual a score based on the number of numerators in which they appear.
  linear,

  /// Display: Weighted
  /// Definition: Weighted scoring gives an individual a score based on a weighted factor for each component numerator in which they appear.
  weighted,
  ;

  @override
  String toString() {
    switch (this) {
      case opportunity:
        return 'opportunity';
      case all_or_nothing:
        return 'all-or-nothing';
      case linear:
        return 'linear';
      case weighted:
        return 'weighted';
    }
  }

  /// Returns a [String] from a [CompositeMeasureScoring] enum.
  String toJson() => toString();

  /// Returns a [CompositeMeasureScoring] from a [String] enum.
  static CompositeMeasureScoring fromString(String str) {
    switch (str) {
      case 'opportunity':
        return CompositeMeasureScoring.opportunity;
      case 'all-or-nothing':
        return CompositeMeasureScoring.all_or_nothing;
      case 'linear':
        return CompositeMeasureScoring.linear;
      case 'weighted':
        return CompositeMeasureScoring.weighted;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CompositeMeasureScoring] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CompositeMeasureScoring fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
