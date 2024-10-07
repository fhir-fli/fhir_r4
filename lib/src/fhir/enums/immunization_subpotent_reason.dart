import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
enum ImmunizationSubpotentReason {
  /// Display: Partial Dose
  /// Definition: The full volume of the dose was not administered to the patient.
  @JsonValue('partial')
  partial,

  /// Display: Cold Chain Break
  /// Definition: The vaccine experienced a cold chain break.
  @JsonValue('coldchainbreak')
  coldchainbreak,

  /// Display: Manufacturer Recall
  /// Definition: The vaccine was recalled by the manufacturer.
  @JsonValue('recall')
  recall,
  ;

  @override
  String toString() {
    switch (this) {
      case partial:
        return 'partial';
      case coldchainbreak:
        return 'coldchainbreak';
      case recall:
        return 'recall';
    }
  }

  String toJson() => toString();
  ImmunizationSubpotentReason fromString(String str) {
    switch (str) {
      case 'partial':
        return ImmunizationSubpotentReason.partial;
      case 'coldchainbreak':
        return ImmunizationSubpotentReason.coldchainbreak;
      case 'recall':
        return ImmunizationSubpotentReason.recall;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ImmunizationSubpotentReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
