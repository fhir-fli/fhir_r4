/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
enum ImmunizationFundingSource {
  /// Display: Private
  /// Definition: The vaccine was purchased with private funds.
  private,

  /// Display: Public
  /// Definition: The vaccine was purchased with public funds.
  public,
  ;

  @override
  String toString() {
    switch (this) {
      case private:
        return 'private';
      case public:
        return 'public';
    }
  }

  /// Returns a [String] from a [ImmunizationFundingSource] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationFundingSource] from a [String] enum.
  static ImmunizationFundingSource fromString(String str) {
    switch (str) {
      case 'private':
        return ImmunizationFundingSource.private;
      case 'public':
        return ImmunizationFundingSource.public;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ImmunizationFundingSource] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationFundingSource fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
