import 'package:json_annotation/json_annotation.dart';

/// SHALL applications comply with this constraint?
enum ConstraintSeverity {
  /// Display: Error
  /// Definition: If the constraint is violated, the resource is not conformant.
  @JsonValue('error')
  error,

  /// Display: Warning
  /// Definition: If the constraint is violated, the resource is conformant, but it is not necessarily following best practice.
  @JsonValue('warning')
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

  String toJson() => toString();
  ConstraintSeverity fromString(String str) {
    switch (str) {
      case 'error':
        return ConstraintSeverity.error;
      case 'warning':
        return ConstraintSeverity.warning;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConstraintSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
