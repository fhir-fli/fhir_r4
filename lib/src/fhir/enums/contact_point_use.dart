import 'package:json_annotation/json_annotation.dart';

/// Use of contact point.
enum ContactPointUse {
  /// Display: Home
  /// Definition: A communication contact point at a home; attempted contacts for business purposes might intrude privacy and chances are one will contact family or other household members instead of the person one wishes to call. Typically used with urgent cases, or if no other contacts are available.
  @JsonValue('home')
  home,

  /// Display: Work
  /// Definition: An office contact point. First choice for business related contacts during business hours.
  @JsonValue('work')
  work,

  /// Display: Temp
  /// Definition: A temporary contact point. The period can provide more detailed information.
  @JsonValue('temp')
  temp,

  /// Display: Old
  /// Definition: This contact point is no longer in use (or was never correct, but retained for records).
  @JsonValue('old')
  old,

  /// Display: Mobile
  /// Definition: A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business.
  @JsonValue('mobile')
  mobile,
  ;

  @override
  String toString() {
    switch (this) {
      case home:
        return 'home';
      case work:
        return 'work';
      case temp:
        return 'temp';
      case old:
        return 'old';
      case mobile:
        return 'mobile';
    }
  }

  String toJson() => toString();
  ContactPointUse fromString(String str) {
    switch (str) {
      case 'home':
        return ContactPointUse.home;
      case 'work':
        return ContactPointUse.work;
      case 'temp':
        return ContactPointUse.temp;
      case 'old':
        return ContactPointUse.old;
      case 'mobile':
        return ContactPointUse.mobile;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ContactPointUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
