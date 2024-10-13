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

  /// Returns a [String] from a [ContractResourceActionStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [ContractResourceActionStatusCodes] from a [String] enum.
  static ContractResourceActionStatusCodes fromString(String str) {
    switch (str) {
      case 'complete':
        return ContractResourceActionStatusCodes.complete;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContractResourceActionStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContractResourceActionStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
