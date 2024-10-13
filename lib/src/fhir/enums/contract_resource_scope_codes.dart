/// This value set contract specific codes for security category.
enum ContractResourceScopeCodes {
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

  /// Returns a [String] from a [ContractResourceScopeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceScopeCodes] from a [String] enum.
  static ContractResourceScopeCodes fromString(String str) {
    switch (str) {
      case 'policy':
        return ContractResourceScopeCodes.policy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceScopeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
