/// How a rule statement is applied, such as adding additional consent or removing consent.
enum ConsentProvisionType {
  /// Display: Opt Out
  /// Definition: Consent is denied for actions meeting these rules.
  deny,

  /// Display: Opt In
  /// Definition: Consent is provided for actions meeting these rules.
  permit,
  ;

  @override
  String toString() {
    switch (this) {
      case deny:
        return 'deny';
      case permit:
        return 'permit';
    }
  }

  /// Returns a [String] from a [ConsentProvisionType] enum.
  String toJson() => toString();

  /// Returns a [ConsentProvisionType] from a [String] enum.
  static ConsentProvisionType fromString(String str) {
    switch (str) {
      case 'deny':
        return ConsentProvisionType.deny;
      case 'permit':
        return ConsentProvisionType.permit;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConsentProvisionType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConsentProvisionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
