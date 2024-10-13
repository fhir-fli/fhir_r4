/// This value set contract specific codes for status.
enum ContractResourceDefinitionSubtypeCodes {
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

  /// Returns a [String] from a [ContractResourceDefinitionSubtypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceDefinitionSubtypeCodes] from a [String] enum.
  static ContractResourceDefinitionSubtypeCodes fromString(String str) {
    switch (str) {
      case 'temp':
        return ContractResourceDefinitionSubtypeCodes.temp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceDefinitionSubtypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceDefinitionSubtypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
