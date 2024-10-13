/// The presentation types of notes.
enum NoteType {
  /// Display: Display
  /// Definition: Display the note.
  display,

  /// Display: Print (Form)
  /// Definition: Print the note on the form.
  print,

  /// Display: Print (Operator)
  /// Definition: Print the note for the operator.
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

  /// Returns a [String] from a [NoteType] enum.
  String toJson() => toString();

  /// Returns a [NoteType] from a [String] enum.
  static NoteType fromString(String str) {
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

  /// Returns a [NoteType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static NoteType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
