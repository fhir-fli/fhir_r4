import 'package:json_annotation/json_annotation.dart';

/// The presentation types of notes.
enum NoteType {
  /// Display: Display
  /// Definition: Display the note.
  @JsonValue('display')
  display,

  /// Display: Print (Form)
  /// Definition: Print the note on the form.
  @JsonValue('print')
  print,

  /// Display: Print (Operator)
  /// Definition: Print the note for the operator.
  @JsonValue('printoper')
  printoper,
  ;

  @override
  String toString() {
    switch (this) {
      case display:
        return 'display';
      case print:
        return 'print';
      case printoper:
        return 'printoper';
    }
  }

  String toJson() => toString();
  NoteType fromString(String str) {
    switch (str) {
      case 'display':
        return NoteType.display;
      case 'print':
        return NoteType.print;
      case 'printoper':
        return NoteType.printoper;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  NoteType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
