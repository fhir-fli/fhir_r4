/// The status of the document reference.
enum DocumentReferenceStatus {
  /// Display: Current
  /// Definition: This is the current reference for this document.
  current,

  /// Display: Superseded
  /// Definition: This reference has been superseded by another reference.
  superseded,

  /// Display: Entered in Error
  /// Definition: This reference was created in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case current:
        return 'current';
      case superseded:
        return 'superseded';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [DocumentReferenceStatus] enum.
  String toJson() => toString();

  /// Returns a [DocumentReferenceStatus] from a [String] enum.
  static DocumentReferenceStatus fromString(String str) {
    switch (str) {
      case 'current':
        return DocumentReferenceStatus.current;
      case 'superseded':
        return DocumentReferenceStatus.superseded;
      case 'entered-in-error':
        return DocumentReferenceStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DocumentReferenceStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DocumentReferenceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
