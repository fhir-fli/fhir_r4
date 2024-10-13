/// This value set contract specific codes for status.
enum ContractResourceDefinitionTypeCodes {
  /// Display: Temporary Value
  /// Definition: To be completed
  temp,
  ;

  @override
  String toString() {
    switch (this) {
      case temp:
        return 'temp';
    }
  }

  /// Returns a [String] from a [ContractResourceDefinitionTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceDefinitionTypeCodes] from a [String] enum.
  static ContractResourceDefinitionTypeCodes fromString(String str) {
    switch (str) {
      case 'temp':
        return ContractResourceDefinitionTypeCodes.temp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceDefinitionTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceDefinitionTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
