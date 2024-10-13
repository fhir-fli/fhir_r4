/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
enum ExampleClaimSubTypeCodes {
  /// Display: Orthodontic Claim
  /// Definition: A claim for Orthodontic Services.
  ortho,

  /// Display: Emergency Claim
  /// Definition: A claim for emergency services.
  emergency,
  ;

  @override
  String toString() {
    switch (this) {
      case ortho:
        return 'ortho';
      case emergency:
        return 'emergency';
    }
  }

  /// Returns a [String] from a [ExampleClaimSubTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleClaimSubTypeCodes] from a [String] enum.
  static ExampleClaimSubTypeCodes fromString(String str) {
    switch (str) {
      case 'ortho':
        return ExampleClaimSubTypeCodes.ortho;
      case 'emergency':
        return ExampleClaimSubTypeCodes.emergency;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleClaimSubTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleClaimSubTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
