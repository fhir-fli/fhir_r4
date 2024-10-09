/// This value set includes sample Consent Action codes.
enum ConsentActionCodes {
  /// Display: Collect
  /// Definition: Gather retrieved information for storage
  collect,

  /// Display: Access
  /// Definition: Retrieval without permitting collection, use or disclosure. e.g., no screen-scraping for collection, use or disclosure (view-only access)
  access,

  /// Display: Use
  /// Definition: Utilize the retrieved information
  use,

  /// Display: Disclose
  /// Definition: Transfer retrieved information
  disclose,

  /// Display: Access and Correct
  /// Definition: Allow retrieval of a patient's information for the purpose of update or rectify
  correct,
  ;

  @override
  String toString() {
    switch (this) {
      case collect:
        return 'collect';
      case access:
        return 'access';
      case use:
        return 'use';
      case disclose:
        return 'disclose';
      case correct:
        return 'correct';
    }
  }

  String toJson() => toString();
  static ConsentActionCodes fromString(String str) {
    switch (str) {
      case 'collect':
        return ConsentActionCodes.collect;
      case 'access':
        return ConsentActionCodes.access;
      case 'use':
        return ConsentActionCodes.use;
      case 'disclose':
        return ConsentActionCodes.disclose;
      case 'correct':
        return ConsentActionCodes.correct;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConsentActionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
