/// Codes describing the reason why a family member's history is not available.
enum FamilyHistoryAbsentReason {
  /// Display: Subject Unknown
  /// Definition: Patient does not know the subject, e.g. the biological parent of an adopted patient.
  subject_unknown,

  /// Display: Information Withheld
  /// Definition: The patient withheld or refused to share the information.
  withheld,

  /// Display: Unable To Obtain
  /// Definition: Information cannot be obtained; e.g. unconscious patient.
  unable_to_obtain,

  /// Display: Deferred
  /// Definition: Patient does not have the information now, but can provide the information at a later date.
  deferred_,
  ;

  @override
  String toString() {
    switch (this) {
      case subject_unknown:
        return 'subject-unknown';
      case withheld:
        return 'withheld';
      case unable_to_obtain:
        return 'unable-to-obtain';
      case deferred_:
        return 'deferred';
    }
  }

  /// Returns a [String] from a [FamilyHistoryAbsentReason] enum.
  String toJson() => toString();

  /// Returns a [FamilyHistoryAbsentReason] from a [String] enum.
  static FamilyHistoryAbsentReason fromString(String str) {
    switch (str) {
      case 'subject-unknown':
        return FamilyHistoryAbsentReason.subject_unknown;
      case 'withheld':
        return FamilyHistoryAbsentReason.withheld;
      case 'unable-to-obtain':
        return FamilyHistoryAbsentReason.unable_to_obtain;
      case 'deferred':
        return FamilyHistoryAbsentReason.deferred_;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FamilyHistoryAbsentReason] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FamilyHistoryAbsentReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
