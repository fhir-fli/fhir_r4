/// Common Tag Codes defined by FHIR project
enum CommonTags {
  /// Display: Actionable
  /// Definition: This request is intended to be acted upon, not merely stored
  actionable,
  ;

  @override
  String toString() {
    switch (this) {
      case actionable:
        return 'actionable';
    }
  }

  /// Returns a [String] from a [CommonTags] enum.
  String toJson() => toString();

  /// Returns a [CommonTags] from a [String] enum.
  static CommonTags fromString(String str) {
    switch (str) {
      case 'actionable':
        return CommonTags.actionable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CommonTags] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CommonTags fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
