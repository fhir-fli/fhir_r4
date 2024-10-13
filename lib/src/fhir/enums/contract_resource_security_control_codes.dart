/// This value set contract specific codes for security control.
enum ContractResourceSecurityControlCodes {
  /// Display: Policy
  /// Definition: To be completed
  policy,
  ;

  @override
  String toString() {
    switch (this) {
      case policy:
        return 'policy';
    }
  }

  /// Returns a [String] from a [ContractResourceSecurityControlCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceSecurityControlCodes] from a [String] enum.
  static ContractResourceSecurityControlCodes fromString(String str) {
    switch (str) {
      case 'policy':
        return ContractResourceSecurityControlCodes.policy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceSecurityControlCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceSecurityControlCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
