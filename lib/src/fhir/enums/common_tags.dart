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

  String toJson() => toString();
  static CommonTags fromString(String str) {
    switch (str) {
      case 'actionable':
        return CommonTags.actionable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CommonTags fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
