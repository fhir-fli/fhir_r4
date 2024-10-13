/// The verification status to support or decline the clinical status of the condition or diagnosis.
enum ConditionVerificationStatus {
  /// Display: Unconfirmed
  /// Definition: There is not sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  unconfirmed,

  /// Display: Provisional
  /// Definition: This is a tentative diagnosis - still a candidate that is under consideration.
  provisional,

  /// Display: Differential
  /// Definition: One of a set of potential (and typically mutually exclusive) diagnoses asserted to further guide the diagnostic process and preliminary treatment.
  differential,

  /// Display: Confirmed
  /// Definition: There is sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  confirmed,

  /// Display: Refuted
  /// Definition: This condition has been ruled out by diagnostic and clinical evidence.
  refuted,

  /// Display: Entered in Error
  /// Definition: The statement was entered in error and is not valid.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case unconfirmed:
        return 'unconfirmed';
      case provisional:
        return 'provisional';
      case differential:
        return 'differential';
      case confirmed:
        return 'confirmed';
      case refuted:
        return 'refuted';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [ConditionVerificationStatus] enum.
  String toJson() => toString();

  /// Returns a [ConditionVerificationStatus] from a [String] enum.
  static ConditionVerificationStatus fromString(String str) {
    switch (str) {
      case 'unconfirmed':
        return ConditionVerificationStatus.unconfirmed;
      case 'provisional':
        return ConditionVerificationStatus.provisional;
      case 'differential':
        return ConditionVerificationStatus.differential;
      case 'confirmed':
        return ConditionVerificationStatus.confirmed;
      case 'refuted':
        return ConditionVerificationStatus.refuted;
      case 'entered-in-error':
        return ConditionVerificationStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConditionVerificationStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConditionVerificationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
