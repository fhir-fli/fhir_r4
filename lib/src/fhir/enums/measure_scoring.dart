import 'package:json_annotation/json_annotation.dart';

/// The scoring type of the measure.
enum MeasureScoring {
  /// Display: Proportion
  /// Definition: The measure score is defined using a proportion.
  @JsonValue('proportion')
  proportion,
  /// Display: Ratio
  /// Definition: The measure score is defined using a ratio.
  @JsonValue('ratio')
  ratio,
  /// Display: Continuous Variable
  /// Definition: The score is defined by a calculation of some quantity.
  @JsonValue('continuous-variable')
  continuous_variable,
  /// Display: Cohort
  /// Definition: The measure is a cohort definition.
  @JsonValue('cohort')
  cohort,
;

@override
  String toString() {
      switch(this) {
        case proportion: return 'proportion';
        case ratio: return 'ratio';
        case continuous_variable: return 'continuous-variable';
        case cohort: return 'cohort';
      }
      }
String toJson() => toString();
  MeasureScoring fromString(String str) {
    switch(str) {
      case 'proportion': return MeasureScoring.proportion;
      case 'ratio': return MeasureScoring.ratio;
      case 'continuous-variable': return MeasureScoring.continuous_variable;
      case 'cohort': return MeasureScoring.cohort;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasureScoring fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
