/// This value set contract specific codes for asset scope.
enum ContractResourceAssetScopeCodes {
  /// Display: Thing
  /// Definition: To be completed
  thing,
  ;

  @override
  String toString() {
    switch (this) {
      case thing:
        return 'thing';
    }
  }

  /// Returns a [String] from a [ContractResourceAssetScopeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceAssetScopeCodes] from a [String] enum.
  static ContractResourceAssetScopeCodes fromString(String str) {
    switch (str) {
      case 'thing':
        return ContractResourceAssetScopeCodes.thing;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceAssetScopeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceAssetScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
