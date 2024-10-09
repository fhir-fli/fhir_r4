import 'package:json_annotation/json_annotation.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
enum GroupMeasure {
  /// Display: Mean
  /// Definition: Aggregated using Mean of participant values.
  @JsonValue('mean')
  mean,

  /// Display: Median
  /// Definition: Aggregated using Median of participant values.
  @JsonValue('median')
  median,

  /// Display: Mean of Study Means
  /// Definition: Aggregated using Mean of study mean values.
  @JsonValue('mean-of-mean')
  mean_of_mean,

  /// Display: Mean of Study Medins
  /// Definition: Aggregated using Mean of study median values.
  @JsonValue('mean-of-median')
  mean_of_median,

  /// Display: Median of Study Means
  /// Definition: Aggregated using Median of study mean values.
  @JsonValue('median-of-mean')
  median_of_mean,

  /// Display: Median of Study Medians
  /// Definition: Aggregated using Median of study median values.
  @JsonValue('median-of-median')
  median_of_median,
  ;

  @override
  String toString() {
    switch (this) {
      case mean:
        return 'mean';
      case median:
        return 'median';
      case mean_of_mean:
        return 'mean-of-mean';
      case mean_of_median:
        return 'mean-of-median';
      case median_of_mean:
        return 'median-of-mean';
      case median_of_median:
        return 'median-of-median';
    }
  }

  String toJson() => toString();
  static GroupMeasure fromString(String str) {
    switch (str) {
      case 'mean':
        return GroupMeasure.mean;
      case 'median':
        return GroupMeasure.median;
      case 'mean-of-mean':
        return GroupMeasure.mean_of_mean;
      case 'mean-of-median':
        return GroupMeasure.mean_of_median;
      case 'median-of-mean':
        return GroupMeasure.median_of_mean;
      case 'median-of-median':
        return GroupMeasure.median_of_median;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GroupMeasure fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
