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

  /// Returns a [String] from a [AdjudicationReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [AdjudicationReasonCodes] from a [String] enum.
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

  /// Returns a [AdjudicationReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdjudicationReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
