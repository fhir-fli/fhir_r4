/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was administered. This value set is provided as a suggestive example.
enum ImmunizationReasonCodes {
  value429060002,
  value281657000,
  ;

  @override
  String toString() {
    switch (this) {
      case value429060002:
        return '429060002';
      case value281657000:
        return '281657000';
    }
  }

  /// Returns a [String] from a [ImmunizationReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationReasonCodes] from a [String] enum.
  static ImmunizationReasonCodes fromString(String str) {
    switch (str) {
      case '429060002':
        return ImmunizationReasonCodes.value429060002;
      case '281657000':
        return ImmunizationReasonCodes.value281657000;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ImmunizationReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
