/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
enum ImmunizationSubpotentReason {
  /// Display: Partial Dose
  /// Definition: The full volume of the dose was not administered to the patient.
  partial,

  /// Display: Cold Chain Break
  /// Definition: The vaccine experienced a cold chain break.
  coldchainbreak,

  /// Display: Manufacturer Recall
  /// Definition: The vaccine was recalled by the manufacturer.
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

  /// Returns a [String] from a [ImmunizationSubpotentReason] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationSubpotentReason] from a [String] enum.
  static ImmunizationSubpotentReason fromString(String str) {
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

  /// Returns a [ImmunizationSubpotentReason] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationSubpotentReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
