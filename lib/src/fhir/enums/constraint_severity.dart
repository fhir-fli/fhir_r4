/// SHALL applications comply with this constraint?
enum ConstraintSeverity {
  /// Display: Error
  /// Definition: If the constraint is violated, the resource is not conformant.
  error,

  /// Display: Warning
  /// Definition: If the constraint is violated, the resource is conformant, but it is not necessarily following best practice.
  warning,
  ;

  @override
  String toString() {
    switch (this) {
      case error:
        return 'error';
      case warning:
        return 'warning';
    }
  }

  /// Returns a [String] from a [ConstraintSeverity] enum.
  String toJson() => toString();

  /// Returns a [ConstraintSeverity] from a [String] enum.
  static ConstraintSeverity fromString(String str) {
    switch (str) {
      case 'error':
        return ConstraintSeverity.error;
      case 'warning':
        return ConstraintSeverity.warning;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConstraintSeverity] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConstraintSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
