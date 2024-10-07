import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample ICD-10 Procedure codes.
enum ICD10ProcedureCodes {
  /// Display: PROC-1
  /// Definition: Procedure 1
  @JsonValue('123001')
  value123001,
  /// Display: PROC-2
  /// Definition: Procedure 2
  @JsonValue('123002')
  value123002,
  /// Display: PROC-3
  /// Definition: Procedure 3
  @JsonValue('123003')
  value123003,
;

@override
  String toString() {
      switch(this) {
        case value123001: return '123001';
        case value123002: return '123002';
        case value123003: return '123003';
      }
      }
String toJson() => toString();
  ICD10ProcedureCodes fromString(String str) {
    switch(str) {
      case '123001': return ICD10ProcedureCodes.value123001;
      case '123002': return ICD10ProcedureCodes.value123002;
      case '123003': return ICD10ProcedureCodes.value123003;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ICD10ProcedureCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

