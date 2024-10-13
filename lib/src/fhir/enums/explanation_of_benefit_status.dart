/// A code specifying the state of the resource instance.
enum ExplanationOfBenefitStatus {
  /// Display: Active
  /// Definition: The resource instance is currently in-force.
  active,

  /// Display: Cancelled
  /// Definition: The resource instance is withdrawn, rescinded or reversed.
  cancelled,

  /// Display: Draft
  /// Definition: A new resource instance the contents of which is not complete.
  draft,

  /// Display: Entered In Error
  /// Definition: The resource instance was entered in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case cancelled:
        return 'cancelled';
      case draft:
        return 'draft';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [ExplanationOfBenefitStatus] enum.
  String toJson() => toString();

  /// Returns a [ExplanationOfBenefitStatus] from a [String] enum.
  static ExplanationOfBenefitStatus fromString(String str) {
    switch (str) {
      case 'active':
        return ExplanationOfBenefitStatus.active;
      case 'cancelled':
        return ExplanationOfBenefitStatus.cancelled;
      case 'draft':
        return ExplanationOfBenefitStatus.draft;
      case 'entered-in-error':
        return ExplanationOfBenefitStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExplanationOfBenefitStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExplanationOfBenefitStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
