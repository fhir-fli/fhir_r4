/// This value set contract specific codes for status.
enum ContractResourceExpirationTypeCodes {
  /// Display: Breach
  /// Definition: To be completed
  breach,
  ;

  @override
  String toString() {
    switch (this) {
      case breach:
        return 'breach';
    }
  }

  /// Returns a [String] from a [ContractResourceExpirationTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceExpirationTypeCodes] from a [String] enum.
  static ContractResourceExpirationTypeCodes fromString(String str) {
    switch (str) {
      case 'breach':
        return ContractResourceExpirationTypeCodes.breach;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceExpirationTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceExpirationTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
