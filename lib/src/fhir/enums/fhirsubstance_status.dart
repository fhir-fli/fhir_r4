/// A code to indicate if the substance is actively used.
enum FHIRSubstanceStatus {
  /// Display: Active
  /// Definition: The substance is considered for use or reference.
  active,

  /// Display: Inactive
  /// Definition: The substance is considered for reference, but not for use.
  inactive,

  /// Display: Entered in Error
  /// Definition: The substance was entered in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [FHIRSubstanceStatus] enum.
  String toJson() => toString();

  /// Returns a [FHIRSubstanceStatus] from a [String] enum.
  static FHIRSubstanceStatus fromString(String str) {
    switch (str) {
      case 'active':
        return FHIRSubstanceStatus.active;
      case 'inactive':
        return FHIRSubstanceStatus.inactive;
      case 'entered-in-error':
        return FHIRSubstanceStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FHIRSubstanceStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FHIRSubstanceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
