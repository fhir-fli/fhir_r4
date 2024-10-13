/// This value set contract specific codes for asset subtype.
enum ContractResourceAssetSubTypeCodes {
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

  /// Returns a [String] from a [ContractResourceAssetSubTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceAssetSubTypeCodes] from a [String] enum.
  static ContractResourceAssetSubTypeCodes fromString(String str) {
    switch (str) {
      case 'participation':
        return ContractResourceAssetSubTypeCodes.participation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceAssetSubTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceAssetSubTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
