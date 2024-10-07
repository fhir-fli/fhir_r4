import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Program Reason Span codes.
enum ExampleProgramReasonCodes {
  /// Display: Child Asthma
  /// Definition: Child Asthma Program
  @JsonValue('as')
  as_,
  /// Display: Hemodialysis
  /// Definition: Hemodialysis Program.
  @JsonValue('hd')
  hd,
  /// Display: Autism Screening
  /// Definition: Autism Screening Program.
  @JsonValue('auscr')
  auscr,
  /// Display: None
  /// Definition: No program code applies.
  @JsonValue('none')
  none,
;

@override
  String toString() {
      switch(this) {
        case as_: return 'as';
        case hd: return 'hd';
        case auscr: return 'auscr';
        case none: return 'none';
      }
      }
String toJson() => toString();
  ExampleProgramReasonCodes fromString(String str) {
    switch(str) {
      case 'as': return ExampleProgramReasonCodes.as_;
      case 'hd': return ExampleProgramReasonCodes.hd;
      case 'auscr': return ExampleProgramReasonCodes.auscr;
      case 'none': return ExampleProgramReasonCodes.none;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleProgramReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

