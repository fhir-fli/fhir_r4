/// This value set defines the set of codes that can be used to indicate the marital status of a person.
enum MaritalStatusCodes {
  UNK,
  ;

  @override
  String toString() {
    switch (this) {
      case UNK:
        return 'UNK';
    }
  }

  /// Returns a [String] from a [MaritalStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [MaritalStatusCodes] from a [String] enum.
  static MaritalStatusCodes fromString(String str) {
    switch (str) {
      case 'UNK':
        return MaritalStatusCodes.UNK;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MaritalStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MaritalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
