/// This value set includes sample Program Reason Span codes.
enum ExampleProgramReasonCodes {
  /// Display: Child Asthma
  /// Definition: Child Asthma Program
  as_,

  /// Display: Hemodialysis
  /// Definition: Hemodialysis Program.
  hd,

  /// Display: Autism Screening
  /// Definition: Autism Screening Program.
  auscr,

  /// Display: None
  /// Definition: No program code applies.
  none,
  ;

  @override
  String toString() {
    switch (this) {
      case as_:
        return 'as';
      case hd:
        return 'hd';
      case auscr:
        return 'auscr';
      case none:
        return 'none';
    }
  }

  String toJson() => toString();
  static ExampleProgramReasonCodes fromString(String str) {
    switch (str) {
      case 'as':
        return ExampleProgramReasonCodes.as_;
      case 'hd':
        return ExampleProgramReasonCodes.hd;
      case 'auscr':
        return ExampleProgramReasonCodes.auscr;
      case 'none':
        return ExampleProgramReasonCodes.none;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExampleProgramReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
