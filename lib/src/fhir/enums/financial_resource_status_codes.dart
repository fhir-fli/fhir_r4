import 'package:json_annotation/json_annotation.dart';

/// This value set includes Status codes.
enum FinancialResourceStatusCodes {
  /// Display: Active
  /// Definition: The instance is currently in-force.
  @JsonValue('active')
  active,

  /// Display: Cancelled
  /// Definition: The instance is withdrawn, rescinded or reversed.
  @JsonValue('cancelled')
  cancelled,

  /// Display: Draft
  /// Definition: A new instance the contents of which is not complete.
  @JsonValue('draft')
  draft,

  /// Display: Entered in Error
  /// Definition: The instance was entered in error.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case cancelled:
        return 'cancelled';
      case draft:
        return 'draft';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static FinancialResourceStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return FinancialResourceStatusCodes.active;
      case 'cancelled':
        return FinancialResourceStatusCodes.cancelled;
      case 'draft':
        return FinancialResourceStatusCodes.draft;
      case 'entered-in-error':
        return FinancialResourceStatusCodes.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static FinancialResourceStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
