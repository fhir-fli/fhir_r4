/// This value set contract specific codes for action status.
enum ContractResourceActionStatusCodes {
  /// Display: Complete
  /// Definition: To be completed
  complete,
  ;

  @override
  String toString() {
    switch (this) {
      case complete:
        return 'complete';
    }
  }

  String toJson() => toString();
  static ContractResourceActionStatusCodes fromString(String str) {
    switch (str) {
      case 'complete':
        return ContractResourceActionStatusCodes.complete;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceActionStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
