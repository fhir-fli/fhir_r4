/// Details of how a designation would be used
enum DesignationUse {
  value900000000000003001,
  value900000000000013009,
  ;

  @override
  String toString() {
    switch (this) {
      case value900000000000003001:
        return '900000000000003001';
      case value900000000000013009:
        return '900000000000013009';
    }
  }

  /// Returns a [String] from a [DesignationUse] enum.
  String toJson() => toString();

  /// Returns a [DesignationUse] from a [String] enum.
  static DesignationUse fromString(String str) {
    switch (str) {
      case '900000000000003001':
        return DesignationUse.value900000000000003001;
      case '900000000000013009':
        return DesignationUse.value900000000000013009;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DesignationUse] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DesignationUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
