/// This value set contract specific codes for offer party participation.
enum ContractResourcePartyRoleCodes {
  /// Display: FLunky
  /// Definition: To be completed
  flunky,
  ;

  @override
  String toString() {
    switch (this) {
      case flunky:
        return 'flunky';
    }
  }

  /// Returns a [String] from a [ContractResourcePartyRoleCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourcePartyRoleCodes] from a [String] enum.
  static ContractResourcePartyRoleCodes fromString(String str) {
    switch (str) {
      case 'flunky':
        return ContractResourcePartyRoleCodes.flunky;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourcePartyRoleCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourcePartyRoleCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
