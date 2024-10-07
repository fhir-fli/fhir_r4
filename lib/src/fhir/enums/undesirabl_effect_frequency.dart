import 'package:json_annotation/json_annotation.dart';

/// A categorisation for a frequency of occurence of an undesirable effect.
enum UndesirablEffectFrequency {
  /// Display: Common
  @JsonValue('Common')
  Common,

  /// Display: Uncommon
  @JsonValue('Uncommon')
  Uncommon,

  /// Display: Rare
  @JsonValue('Rare')
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

  String toJson() => toString();
  UndesirablEffectFrequency fromString(String str) {
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

  UndesirablEffectFrequency fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
