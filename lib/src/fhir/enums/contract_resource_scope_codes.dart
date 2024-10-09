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

  String toJson() => toString();
  static ContractResourceScopeCodes fromString(String str) {
    switch (str) {
      case 'policy':
        return ContractResourceScopeCodes.policy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
