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

  String toJson() => toString();
  static ContractResourceDecisionModeCodes fromString(String str) {
    switch (str) {
      case 'policy':
        return ContractResourceDecisionModeCodes.policy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceDecisionModeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
