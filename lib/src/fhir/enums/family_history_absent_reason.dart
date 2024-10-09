import 'package:json_annotation/json_annotation.dart';

/// Codes describing the reason why a family member's history is not available.
enum FamilyHistoryAbsentReason {
  /// Display: Subject Unknown
  /// Definition: Patient does not know the subject, e.g. the biological parent of an adopted patient.
  @JsonValue('subject-unknown')
  subject_unknown,

  /// Display: Information Withheld
  /// Definition: The patient withheld or refused to share the information.
  @JsonValue('withheld')
  withheld,

  /// Display: Unable To Obtain
  /// Definition: Information cannot be obtained; e.g. unconscious patient.
  @JsonValue('unable-to-obtain')
  unable_to_obtain,

  /// Display: Deferred
  /// Definition: Patient does not have the information now, but can provide the information at a later date.
  @JsonValue('deferred')
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

  String toJson() => toString();
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

  static FamilyHistoryAbsentReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
