/// A categorisation for a frequency of occurence of an undesirable effect.
enum UndesirablEffectFrequency {
  /// Display: Common
  Common,

  /// Display: Uncommon
  Uncommon,

  /// Display: Rare
  Rare,
  ;

  @override
  String toString() {
    switch (this) {
      case Common:
        return 'Common';
      case Uncommon:
        return 'Uncommon';
      case Rare:
        return 'Rare';
    }
  }

  /// Returns a [String] from a [UndesirablEffectFrequency] enum.
  String toJson() => toString();

  /// Returns a [UndesirablEffectFrequency] from a [String] enum.
  static UndesirablEffectFrequency fromString(String str) {
    switch (str) {
      case 'Common':
        return UndesirablEffectFrequency.Common;
      case 'Uncommon':
        return UndesirablEffectFrequency.Uncommon;
      case 'Rare':
        return UndesirablEffectFrequency.Rare;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [UndesirablEffectFrequency] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static UndesirablEffectFrequency fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
