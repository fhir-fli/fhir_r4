/// This value set includes smattering of Adjudication Reason codes.
enum AdjudicationReasonCodes {
  /// Display: Not covered
  /// Definition: Not covered
  ar001,

  /// Display: Plan Limit Reached
  /// Definition: Plan Limit Reached
  ar002,
  ;

  @override
  String toString() {
    switch (this) {
      case ar001:
        return 'ar001';
      case ar002:
        return 'ar002';
    }
  }

  String toJson() => toString();
  static AdjudicationReasonCodes fromString(String str) {
    switch (str) {
      case 'ar001':
        return AdjudicationReasonCodes.ar001;
      case 'ar002':
        return AdjudicationReasonCodes.ar002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdjudicationReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
