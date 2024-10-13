/// This value set has asset availability codes.
enum ContractResourceAssetAvailiabilityCodes {
  /// Display: Lease
  /// Definition: To be completed
  lease,
  ;

  @override
  String toString() {
    switch (this) {
      case lease:
        return 'lease';
    }
  }

  /// Returns a [String] from a [ContractResourceAssetAvailiabilityCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceAssetAvailiabilityCodes] from a [String] enum.
  static ContractResourceAssetAvailiabilityCodes fromString(String str) {
    switch (str) {
      case 'lease':
        return ContractResourceAssetAvailiabilityCodes.lease;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceAssetAvailiabilityCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceAssetAvailiabilityCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
