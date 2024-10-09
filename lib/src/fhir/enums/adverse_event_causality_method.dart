import 'package:json_annotation/json_annotation.dart';

/// TODO.
enum AdverseEventCausalityMethod {
  /// Display: Probability Scale
  @JsonValue('ProbabilityScale')
  ProbabilityScale,

  /// Display: Bayesian
  @JsonValue('Bayesian')
  Bayesian,

  /// Display: Checklist
  @JsonValue('Checklist')
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

  String toJson() => toString();
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

  static AdverseEventCausalityMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
