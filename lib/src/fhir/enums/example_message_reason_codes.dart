import 'package:json_annotation/json_annotation.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
enum ExampleMessageReasonCodes {
  /// Display: Admit
  /// Definition: The patient has been admitted.
  @JsonValue('admit')
  admit,

  /// Display: Discharge
  /// Definition: The patient has been discharged.
  @JsonValue('discharge')
  discharge,

  /// Display: Absent
  /// Definition: The patient has temporarily left the institution.
  @JsonValue('absent')
  absent,

  /// Display: Returned
  /// Definition: The patient has returned from a temporary absence.
  @JsonValue('return')
  return_,

  /// Display: Moved
  /// Definition: The patient has been moved to a new location.
  @JsonValue('moved')
  moved,

  /// Display: Edit
  /// Definition: Encounter details have been updated (e.g. to correct a coding error).
  @JsonValue('edit')
  edit,
  ;

  @override
  String toString() {
    switch (this) {
      case admit:
        return 'admit';
      case discharge:
        return 'discharge';
      case absent:
        return 'absent';
      case return_:
        return 'return';
      case moved:
        return 'moved';
      case edit:
        return 'edit';
    }
  }

  String toJson() => toString();
  ExampleMessageReasonCodes fromString(String str) {
    switch (str) {
      case 'admit':
        return ExampleMessageReasonCodes.admit;
      case 'discharge':
        return ExampleMessageReasonCodes.discharge;
      case 'absent':
        return ExampleMessageReasonCodes.absent;
      case 'return':
        return ExampleMessageReasonCodes.return_;
      case 'moved':
        return ExampleMessageReasonCodes.moved;
      case 'edit':
        return ExampleMessageReasonCodes.edit;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ExampleMessageReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
