/// This value set contract specific codes for asset context.
enum ContractResourceAssetContextCodes {
  /// Display: Custodian
  /// Definition: To be completed
  custodian,
  ;

  @override
  String toString() {
    switch (this) {
      case custodian:
        return 'custodian';
    }
  }

  /// Returns a [String] from a [ContractResourceAssetContextCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceAssetContextCodes] from a [String] enum.
  static ContractResourceAssetContextCodes fromString(String str) {
    switch (str) {
      case 'custodian':
        return ContractResourceAssetContextCodes.custodian;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceAssetContextCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceAssetContextCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
