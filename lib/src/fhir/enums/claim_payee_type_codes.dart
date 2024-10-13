/// This value set includes sample Payee Type codes.
enum ClaimPayeeTypeCodes {
  /// Display: Subscriber
  /// Definition: The subscriber (policy holder) will be reimbursed.
  subscriber,

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to the provider (Assignment of Benefit).
  provider,

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to a third party such as a guarrantor.
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case subscriber:
        return 'subscriber';
      case provider:
        return 'provider';
      case other:
        return 'other';
    }
  }

  /// Returns a [String] from a [ClaimPayeeTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ClaimPayeeTypeCodes] from a [String] enum.
  static ClaimPayeeTypeCodes fromString(String str) {
    switch (str) {
      case 'subscriber':
        return ClaimPayeeTypeCodes.subscriber;
      case 'provider':
        return ClaimPayeeTypeCodes.provider;
      case 'other':
        return ClaimPayeeTypeCodes.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ClaimPayeeTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ClaimPayeeTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
