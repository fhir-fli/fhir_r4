/// This value set contract specific codes for decision modes.
enum ContractResourceDecisionModeCodes {
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

  /// Returns a [String] from a [ContractResourceDecisionModeCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceDecisionModeCodes] from a [String] enum.
  static ContractResourceDecisionModeCodes fromString(String str) {
    switch (str) {
      case 'policy':
        return ContractResourceDecisionModeCodes.policy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceDecisionModeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceDecisionModeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
