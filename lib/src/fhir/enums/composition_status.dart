/// The workflow/clinical status of the composition.
enum CompositionStatus {
  /// Display: Preliminary
  /// Definition: This is a preliminary composition or document (also known as initial or interim). The content may be incomplete or unverified.
  preliminary,

  /// Display: Final
  /// Definition: This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.
  final_,

  /// Display: Amended
  /// Definition: The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person.
  amended,

  /// Display: Entered in Error
  /// Definition: The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case preliminary:
        return 'preliminary';
      case final_:
        return 'final';
      case amended:
        return 'amended';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static CompositionStatus fromString(String str) {
    switch (str) {
      case 'preliminary':
        return CompositionStatus.preliminary;
      case 'final':
        return CompositionStatus.final_;
      case 'amended':
        return CompositionStatus.amended;
      case 'entered-in-error':
        return CompositionStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CompositionStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
