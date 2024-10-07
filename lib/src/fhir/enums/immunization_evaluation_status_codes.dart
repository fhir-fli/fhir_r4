import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
enum ImmunizationEvaluationStatusCodes {
  @JsonValue('completed')
  completed,
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  ImmunizationEvaluationStatusCodes fromString(String str) {
    switch (str) {
      case 'completed':
        return ImmunizationEvaluationStatusCodes.completed;
      case 'entered-in-error':
        return ImmunizationEvaluationStatusCodes.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ImmunizationEvaluationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
