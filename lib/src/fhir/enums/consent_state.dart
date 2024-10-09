/// Indicates the state of the consent.
enum ConsentState {
  /// Display: Pending
  /// Definition: The consent is in development or awaiting use but is not yet intended to be acted upon.
  draft,

  /// Display: Proposed
  /// Definition: The consent has been proposed but not yet agreed to by all parties. The negotiation stage.
  proposed,

  /// Display: Active
  /// Definition: The consent is to be followed and enforced.
  active,

  /// Display: Rejected
  /// Definition: The consent has been rejected by one or more of the parties.
  rejected,

  /// Display: Inactive
  /// Definition: The consent is terminated or replaced.
  inactive,

  /// Display: Entered in Error
  /// Definition: The consent was created wrongly (e.g. wrong patient) and should be ignored.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case draft:
        return 'draft';
      case proposed:
        return 'proposed';
      case active:
        return 'active';
      case rejected:
        return 'rejected';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static ConsentState fromString(String str) {
    switch (str) {
      case 'draft':
        return ConsentState.draft;
      case 'proposed':
        return ConsentState.proposed;
      case 'active':
        return ConsentState.active;
      case 'rejected':
        return ConsentState.rejected;
      case 'inactive':
        return ConsentState.inactive;
      case 'entered-in-error':
        return ConsentState.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConsentState fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
