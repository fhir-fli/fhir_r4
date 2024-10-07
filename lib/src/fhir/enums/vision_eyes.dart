import 'package:json_annotation/json_annotation.dart';

/// A coded concept listing the eye codes.
enum VisionEyes {
  /// Display: Right Eye
  /// Definition: Right Eye.
  @JsonValue('right')
  right,
  /// Display: Left Eye
  /// Definition: Left Eye.
  @JsonValue('left')
  left,
;

@override
  String toString() {
      switch(this) {
        case right: return 'right';
        case left: return 'left';
      }
      }
String toJson() => toString();
  VisionEyes fromString(String str) {
    switch(str) {
      case 'right': return VisionEyes.right;
      case 'left': return VisionEyes.left;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 VisionEyes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

