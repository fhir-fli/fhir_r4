/// This value set contract specific codes for asset type.
enum ContractResourceAssetTypeCodes {
  /// Display: Participation
  /// Definition: To be completed
  participation,
  ;

  @override
  String toString() {
    switch (this) {
      case participation:
        return 'participation';
    }
  }

  /// Returns a [String] from a [ContractResourceAssetTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceAssetTypeCodes] from a [String] enum.
  static ContractResourceAssetTypeCodes fromString(String str) {
    switch (str) {
      case 'participation':
        return ContractResourceAssetTypeCodes.participation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceAssetTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceAssetTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
