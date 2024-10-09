import 'package:json_annotation/json_annotation.dart';

/// A categorisation for incidence of occurence of an interaction.
enum InteractionIncidence {
  /// Display: Theoretical
  @JsonValue('Theoretical')
  Theoretical,

  /// Display: Observed
  @JsonValue('Observed')
  Observed,
  ;

  @override
  String toString() {
    switch (this) {
      case Theoretical:
        return 'Theoretical';
      case Observed:
        return 'Observed';
    }
  }

  String toJson() => toString();
  static InteractionIncidence fromString(String str) {
    switch (str) {
      case 'Theoretical':
        return InteractionIncidence.Theoretical;
      case 'Observed':
        return InteractionIncidence.Observed;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static InteractionIncidence fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
