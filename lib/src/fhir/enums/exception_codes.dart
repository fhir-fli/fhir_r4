import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Exception codes.
enum ExceptionCodes {
  /// Display: Student (Fulltime)
  /// Definition: Fulltime Student
  @JsonValue('student')
  student,
  /// Display: Disabled
  /// Definition: Disabled
  @JsonValue('disabled')
  disabled,
;

@override
  String toString() {
      switch(this) {
        case student: return 'student';
        case disabled: return 'disabled';
      }
      }
String toJson() => toString();
  ExceptionCodes fromString(String str) {
    switch(str) {
      case 'student': return ExceptionCodes.student;
      case 'disabled': return ExceptionCodes.disabled;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExceptionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

