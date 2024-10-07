import 'package:json_annotation/json_annotation.dart';

/// A code specifying the state of the resource instance.
enum ExplanationOfBenefitStatus {
  /// Display: Active
  /// Definition: The resource instance is currently in-force.
  @JsonValue('active')
  active,

  /// Display: Cancelled
  /// Definition: The resource instance is withdrawn, rescinded or reversed.
  @JsonValue('cancelled')
  cancelled,

  /// Display: Draft
  /// Definition: A new resource instance the contents of which is not complete.
  @JsonValue('draft')
  draft,

  /// Display: Entered In Error
  /// Definition: The resource instance was entered in error.
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
  ExplanationOfBenefitStatus fromString(String str) {
    switch (str) {
      case 'active':
        return ExplanationOfBenefitStatus.active;
      case 'cancelled':
        return ExplanationOfBenefitStatus.cancelled;
      case 'draft':
        return ExplanationOfBenefitStatus.draft;
      case 'entered-in-error':
        return ExplanationOfBenefitStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ExplanationOfBenefitStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
