import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine preventable disease. This value set is provided as a suggestive example.
enum ImmunizationRecommendationStatusCodes {
  /// Display: Due
  /// Definition: The patient is due for their next vaccination.
  @JsonValue('due')
  due,

  /// Display: Overdue
  /// Definition: The patient is considered overdue for their next vaccination.
  @JsonValue('overdue')
  overdue,

  /// Display: Immune
  /// Definition: The patient is immune to the target disease and further immunization against the disease is not likely to provide benefit.
  @JsonValue('immune')
  immune,

  /// Display: Contraindicated
  /// Definition: The patient is contraindicated for futher doses.
  @JsonValue('contraindicated')
  contraindicated,

  /// Display: Complete
  /// Definition: The patient is fully protected and no further doses are recommended.
  @JsonValue('complete')
  complete,
  ;

  @override
  String toString() {
    switch (this) {
      case due:
        return 'due';
      case overdue:
        return 'overdue';
      case immune:
        return 'immune';
      case contraindicated:
        return 'contraindicated';
      case complete:
        return 'complete';
    }
  }

  String toJson() => toString();
  static ImmunizationRecommendationStatusCodes fromString(String str) {
    switch (str) {
      case 'due':
        return ImmunizationRecommendationStatusCodes.due;
      case 'overdue':
        return ImmunizationRecommendationStatusCodes.overdue;
      case 'immune':
        return ImmunizationRecommendationStatusCodes.immune;
      case 'contraindicated':
        return ImmunizationRecommendationStatusCodes.contraindicated;
      case 'complete':
        return ImmunizationRecommendationStatusCodes.complete;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImmunizationRecommendationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
