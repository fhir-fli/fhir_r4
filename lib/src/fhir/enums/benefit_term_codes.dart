/// This value set includes a smattering of Benefit Term codes.
enum BenefitTermCodes {
  /// Display: Annual
  /// Definition: Annual, renewing on the anniversary
  annual,

  /// Display: Day
  /// Definition: Per day
  day,

  /// Display: Lifetime
  /// Definition: For the total term, lifetime, of the policy or coverage
  lifetime,
  ;

  @override
  String toString() {
    switch (this) {
      case annual:
        return 'annual';
      case day:
        return 'day';
      case lifetime:
        return 'lifetime';
    }
  }

  /// Returns a [String] from a [BenefitTermCodes] enum.
  String toJson() => toString();

  /// Returns a [BenefitTermCodes] from a [String] enum.
  static BenefitTermCodes fromString(String str) {
    switch (str) {
      case 'annual':
        return BenefitTermCodes.annual;
      case 'day':
        return BenefitTermCodes.day;
      case 'lifetime':
        return BenefitTermCodes.lifetime;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [BenefitTermCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static BenefitTermCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
