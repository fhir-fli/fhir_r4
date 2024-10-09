import 'package:json_annotation/json_annotation.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
enum AllergyIntoleranceType {
  /// Display: Allergy
  /// Definition: A propensity for hypersensitive reaction(s) to a substance.  These reactions are most typically type I hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
  @JsonValue('allergy')
  allergy,

  /// Display: Intolerance
  /// Definition: A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like".  These reactions are typically (but not necessarily) non-immune.  They are to some degree idiosyncratic and/or patient-specific (i.e. are not a reaction that is expected to occur with most or all patients given similar circumstances).
  @JsonValue('intolerance')
  intolerance,
  ;

  @override
  String toString() {
    switch (this) {
      case allergy:
        return 'allergy';
      case intolerance:
        return 'intolerance';
    }
  }

  String toJson() => toString();
  static AllergyIntoleranceType fromString(String str) {
    switch (str) {
      case 'allergy':
        return AllergyIntoleranceType.allergy;
      case 'intolerance':
        return AllergyIntoleranceType.intolerance;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AllergyIntoleranceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
