import 'package:json_annotation/json_annotation.dart';

/// Preferred value set for AllergyIntolerance Verification Status.
enum AllergyIntoleranceVerificationStatusCodes {
  /// Display: Unconfirmed
  /// Definition: A low level of certainty about the propensity for a reaction to the identified substance.
  @JsonValue('unconfirmed')
  unconfirmed,
  /// Display: Confirmed
  /// Definition: A high level of certainty about the propensity for a reaction to the identified substance, which may include clinical evidence by testing or rechallenge.
  @JsonValue('confirmed')
  confirmed,
  /// Display: Refuted
  /// Definition: A propensity for a reaction to the identified substance has been disputed or disproven with a sufficient level of clinical certainty to justify invalidating the assertion. This might or might not include testing or rechallenge.
  @JsonValue('refuted')
  refuted,
  /// Display: Entered in Error
  /// Definition: The statement was entered in error and is not valid.
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case unconfirmed: return 'unconfirmed';
        case confirmed: return 'confirmed';
        case refuted: return 'refuted';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  AllergyIntoleranceVerificationStatusCodes fromString(String str) {
    switch(str) {
      case 'unconfirmed': return AllergyIntoleranceVerificationStatusCodes.unconfirmed;
      case 'confirmed': return AllergyIntoleranceVerificationStatusCodes.confirmed;
      case 'refuted': return AllergyIntoleranceVerificationStatusCodes.refuted;
      case 'entered-in-error': return AllergyIntoleranceVerificationStatusCodes.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AllergyIntoleranceVerificationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

