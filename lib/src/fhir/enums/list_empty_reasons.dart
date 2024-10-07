import 'package:json_annotation/json_annotation.dart';

/// General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list) or to a workflow related list (i.e. consultation list).
enum ListEmptyReasons {
  /// Display: Nil Known
  /// Definition: Clinical judgment that there are no known items for this list after reasonable investigation. Note that this a positive statement by a clinical user, and not a default position asserted by a computer system in the lack of other information. Example uses:  * For allergies: the patient or patient's agent/guardian has asserted that he/she is not aware of any allergies (NKA - nil known allergies)  * For medications: the patient or patient's agent/guardian has asserted that the patient is known to be taking no medications  * For diagnoses, problems and procedures: the patient or patient's agent/guardian has asserted that there is no known event to record.
  @JsonValue('nilknown')
  nilknown,

  /// Display: Not Asked
  /// Definition: The investigation to find out whether there are items for this list has not occurred.
  @JsonValue('notasked')
  notasked,

  /// Display: Information Withheld
  /// Definition: The content of the list was not provided due to privacy or confidentiality concerns. Note that it should not be assumed that this means that the particular information in question was withheld due to its contents - it can also be a policy decision.
  @JsonValue('withheld')
  withheld,

  /// Display: Unavailable
  /// Definition: Information to populate this list cannot be obtained; e.g. unconscious patient.
  @JsonValue('unavailable')
  unavailable,

  /// Display: Not Started
  /// Definition: The work to populate this list has not yet begun.
  @JsonValue('notstarted')
  notstarted,

  /// Display: Closed
  /// Definition: This list has now closed or has ceased to be relevant or useful.
  @JsonValue('closed')
  closed,
  ;

  @override
  String toString() {
    switch (this) {
      case nilknown:
        return 'nilknown';
      case notasked:
        return 'notasked';
      case withheld:
        return 'withheld';
      case unavailable:
        return 'unavailable';
      case notstarted:
        return 'notstarted';
      case closed:
        return 'closed';
    }
  }

  String toJson() => toString();
  ListEmptyReasons fromString(String str) {
    switch (str) {
      case 'nilknown':
        return ListEmptyReasons.nilknown;
      case 'notasked':
        return ListEmptyReasons.notasked;
      case 'withheld':
        return ListEmptyReasons.withheld;
      case 'unavailable':
        return ListEmptyReasons.unavailable;
      case 'notstarted':
        return ListEmptyReasons.notstarted;
      case 'closed':
        return ListEmptyReasons.closed;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ListEmptyReasons fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
