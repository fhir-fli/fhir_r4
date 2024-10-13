/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
enum ImmunizationStatusReasonCodes {
  IMMUNE,
  MEDPREC,
  OSTOCK,
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

  /// Returns a [String] from a [ImmunizationStatusReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationStatusReasonCodes] from a [String] enum.
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

  /// Returns a [ImmunizationStatusReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationStatusReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
