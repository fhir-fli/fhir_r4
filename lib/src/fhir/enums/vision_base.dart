/// A coded concept listing the base codes.
enum VisionBase {
  /// Display: Up
  /// Definition: top.
  up,

  /// Display: Down
  /// Definition: bottom.
  down,

  /// Display: In
  /// Definition: inner edge.
  in_,

  /// Display: Out
  /// Definition: outer edge.
  out,
  ;

  @override
  String toString() {
    switch (this) {
      case up:
        return 'up';
      case down:
        return 'down';
      case in_:
        return 'in';
      case out:
        return 'out';
    }
  }

  String toJson() => toString();
  static VisionBase fromString(String str) {
    switch (str) {
      case 'up':
        return VisionBase.up;
      case 'down':
        return VisionBase.down;
      case 'in':
        return VisionBase.in_;
      case 'out':
        return VisionBase.out;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static VisionBase fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
