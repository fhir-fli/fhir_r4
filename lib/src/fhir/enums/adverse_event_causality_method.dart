/// TODO.
enum AdverseEventCausalityMethod {
  /// Display: Probability Scale
  ProbabilityScale,

  /// Display: Bayesian
  Bayesian,

  /// Display: Checklist
  Checklist,
  ;

  @override
  String toString() {
    switch (this) {
      case ProbabilityScale:
        return 'ProbabilityScale';
      case Bayesian:
        return 'Bayesian';
      case Checklist:
        return 'Checklist';
    }
  }

  /// Returns a [String] from a [AdverseEventCausalityMethod] enum.
  String toJson() => toString();

  /// Returns a [AdverseEventCausalityMethod] from a [String] enum.
  static AdverseEventCausalityMethod fromString(String str) {
    switch (str) {
      case 'ProbabilityScale':
        return AdverseEventCausalityMethod.ProbabilityScale;
      case 'Bayesian':
        return AdverseEventCausalityMethod.Bayesian;
      case 'Checklist':
        return AdverseEventCausalityMethod.Checklist;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AdverseEventCausalityMethod] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdverseEventCausalityMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
