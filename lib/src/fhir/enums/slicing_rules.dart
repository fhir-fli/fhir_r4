/// How slices are interpreted when evaluating an instance.
enum SlicingRules {
  /// Display: Closed
  /// Definition: No additional content is allowed other than that described by the slices in this profile.
  closed,

  /// Display: Open
  /// Definition: Additional content is allowed anywhere in the list.
  open,

  /// Display: Open at End
  /// Definition: Additional content is allowed, but only at the end of the list. Note that using this requires that the slices be ordered, which makes it hard to share uses. This should only be done where absolutely required.
  openAtEnd,
  ;

  @override
  String toString() {
    switch (this) {
      case closed:
        return 'closed';
      case open:
        return 'open';
      case openAtEnd:
        return 'openAtEnd';
    }
  }

  String toJson() => toString();
  static SlicingRules fromString(String str) {
    switch (str) {
      case 'closed':
        return SlicingRules.closed;
      case 'open':
        return SlicingRules.open;
      case 'openAtEnd':
        return SlicingRules.openAtEnd;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SlicingRules fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
