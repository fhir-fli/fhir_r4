/// Overall type of this authorization.
enum RegulatedAuthorizationType {
  /// Display: Marketing Authorization
  MarketingAuth,

  /// Display: Orphan Drug Authorization
  Orphan,

  /// Display: Pediatric Use Drug Authorization
  Pediatric,
  ;

  @override
  String toString() {
    switch (this) {
      case MarketingAuth:
        return 'MarketingAuth';
      case Orphan:
        return 'Orphan';
      case Pediatric:
        return 'Pediatric';
    }
  }

  /// Returns a [String] from a [RegulatedAuthorizationType] enum.
  String toJson() => toString();

  /// Returns a [RegulatedAuthorizationType] from a [String] enum.
  static RegulatedAuthorizationType fromString(String str) {
    switch (str) {
      case 'MarketingAuth':
        return RegulatedAuthorizationType.MarketingAuth;
      case 'Orphan':
        return RegulatedAuthorizationType.Orphan;
      case 'Pediatric':
        return RegulatedAuthorizationType.Pediatric;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [RegulatedAuthorizationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RegulatedAuthorizationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
