import 'package:json_annotation/json_annotation.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
enum XPathUsageType {
  /// Display: Normal
  /// Definition: The search parameter is derived directly from the selected nodes based on the type definitions.
  @JsonValue('normal')
  normal,

  /// Display: Phonetic
  /// Definition: The search parameter is derived by a phonetic transform from the selected nodes.
  @JsonValue('phonetic')
  phonetic,

  /// Display: Nearby
  /// Definition: The search parameter is based on a spatial transform of the selected nodes.
  @JsonValue('nearby')
  nearby,

  /// Display: Distance
  /// Definition: The search parameter is based on a spatial transform of the selected nodes, using physical distance from the middle.
  @JsonValue('distance')
  distance,

  /// Display: Other
  /// Definition: The interpretation of the xpath statement is unknown (and can't be automated).
  @JsonValue('other')
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case normal:
        return 'normal';
      case phonetic:
        return 'phonetic';
      case nearby:
        return 'nearby';
      case distance:
        return 'distance';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  static XPathUsageType fromString(String str) {
    switch (str) {
      case 'normal':
        return XPathUsageType.normal;
      case 'phonetic':
        return XPathUsageType.phonetic;
      case 'nearby':
        return XPathUsageType.nearby;
      case 'distance':
        return XPathUsageType.distance;
      case 'other':
        return XPathUsageType.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static XPathUsageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
