import 'package:json_annotation/json_annotation.dart';

/// Criterion for rejection of the specimen by laboratory.
enum RejectionCriterion {
  /// Display: hemolized specimen
  /// Definition: blood specimen hemolized.
  @JsonValue('hemolized')
  hemolized,

  /// Display: insufficient specimen volume
  /// Definition: insufficient quantity of specimen.
  @JsonValue('insufficient')
  insufficient,

  /// Display: broken specimen container
  /// Definition: specimen container broken.
  @JsonValue('broken')
  broken,

  /// Display: specimen clotted
  /// Definition: specimen clotted.
  @JsonValue('clotted')
  clotted,

  /// Display: specimen temperature inappropriate
  /// Definition: specimen temperature inappropriate.
  @JsonValue('wrong-temperature')
  wrong_temperature,
  ;

  @override
  String toString() {
    switch (this) {
      case hemolized:
        return 'hemolized';
      case insufficient:
        return 'insufficient';
      case broken:
        return 'broken';
      case clotted:
        return 'clotted';
      case wrong_temperature:
        return 'wrong-temperature';
    }
  }

  String toJson() => toString();
  static RejectionCriterion fromString(String str) {
    switch (str) {
      case 'hemolized':
        return RejectionCriterion.hemolized;
      case 'insufficient':
        return RejectionCriterion.insufficient;
      case 'broken':
        return RejectionCriterion.broken;
      case 'clotted':
        return RejectionCriterion.clotted;
      case 'wrong-temperature':
        return RejectionCriterion.wrong_temperature;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RejectionCriterion fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
