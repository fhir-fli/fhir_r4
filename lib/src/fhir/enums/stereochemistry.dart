import 'package:json_annotation/json_annotation.dart';

/// The optical rotation type of a substance.
enum Stereochemistry {
  /// Display: constitutional isomer
  @JsonValue('ConstitutionalIsomer')
  ConstitutionalIsomer,

  /// Display: stereoisomer
  @JsonValue('Stereoisomer')
  Stereoisomer,

  /// Display: enantiomer
  @JsonValue('Enantiomer')
  Enantiomer,
  ;

  @override
  String toString() {
    switch (this) {
      case ConstitutionalIsomer:
        return 'ConstitutionalIsomer';
      case Stereoisomer:
        return 'Stereoisomer';
      case Enantiomer:
        return 'Enantiomer';
    }
  }

  String toJson() => toString();
  Stereochemistry fromString(String str) {
    switch (str) {
      case 'ConstitutionalIsomer':
        return Stereochemistry.ConstitutionalIsomer;
      case 'Stereoisomer':
        return Stereochemistry.Stereoisomer;
      case 'Enantiomer':
        return Stereochemistry.Enantiomer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  Stereochemistry fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
