import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
enum ImmunizationEvaluationDoseStatusCodes {
  /// Display: Valid
  /// Definition: The dose counts toward fulfilling a path to immunity for a patient, providing protection against the target disease.
  @JsonValue('valid')
  valid,

  /// Display: Not valid
  /// Definition: The dose does not count toward fulfilling a path to immunity for a patient.
  @JsonValue('notvalid')
  notvalid,
  ;

  @override
  String toString() {
    switch (this) {
      case valid:
        return 'valid';
      case notvalid:
        return 'notvalid';
    }
  }

  String toJson() => toString();
  ImmunizationEvaluationDoseStatusCodes fromString(String str) {
    switch (str) {
      case 'valid':
        return ImmunizationEvaluationDoseStatusCodes.valid;
      case 'notvalid':
        return ImmunizationEvaluationDoseStatusCodes.notvalid;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ImmunizationEvaluationDoseStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
