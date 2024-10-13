/// A coded concept listing the eye codes.
enum VisionEyes {
  /// Display: Right Eye
  /// Definition: Right Eye.
  right,

  /// Display: Left Eye
  /// Definition: Left Eye.
  left,
  ;

  @override
  String toString() {
    switch (this) {
      case right:
        return 'right';
      case left:
        return 'left';
    }
  }

  /// Returns a [String] from a [VisionEyes] enum.
  String toJson() => toString();

  /// Returns a [VisionEyes] from a [String] enum.
  static VisionEyes fromString(String str) {
    switch (str) {
      case 'right':
        return VisionEyes.right;
      case 'left':
        return VisionEyes.left;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [VisionEyes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static VisionEyes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
