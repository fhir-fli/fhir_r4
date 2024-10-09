import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
enum ImmunizationStatusReasonCodes {
  @JsonValue('IMMUNE')
  IMMUNE,
  @JsonValue('MEDPREC')
  MEDPREC,
  @JsonValue('OSTOCK')
  OSTOCK,
  @JsonValue('PATOBJ')
  PATOBJ,
  ;

  @override
  String toString() {
    switch (this) {
      case IMMUNE:
        return 'IMMUNE';
      case MEDPREC:
        return 'MEDPREC';
      case OSTOCK:
        return 'OSTOCK';
      case PATOBJ:
        return 'PATOBJ';
    }
  }

  String toJson() => toString();
  static ImmunizationStatusReasonCodes fromString(String str) {
    switch (str) {
      case 'IMMUNE':
        return ImmunizationStatusReasonCodes.IMMUNE;
      case 'MEDPREC':
        return ImmunizationStatusReasonCodes.MEDPREC;
      case 'OSTOCK':
        return ImmunizationStatusReasonCodes.OSTOCK;
      case 'PATOBJ':
        return ImmunizationStatusReasonCodes.PATOBJ;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImmunizationStatusReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
