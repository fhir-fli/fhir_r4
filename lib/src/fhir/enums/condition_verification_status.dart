import 'package:json_annotation/json_annotation.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
enum ConditionVerificationStatus {
  /// Display: Unconfirmed
  /// Definition: There is not sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  @JsonValue('unconfirmed')
  unconfirmed,

  /// Display: Confirmed
  /// Definition: There is sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  @JsonValue('confirmed')
  confirmed,

  /// Display: Refuted
  /// Definition: This condition has been ruled out by diagnostic and clinical evidence.
  @JsonValue('refuted')
  refuted,

  /// Display: Entered in Error
  /// Definition: The statement was entered in error and is not valid.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case unconfirmed:
        return 'unconfirmed';
      case confirmed:
        return 'confirmed';
      case refuted:
        return 'refuted';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  ConditionVerificationStatus fromString(String str) {
    switch (str) {
      case 'unconfirmed':
        return ConditionVerificationStatus.unconfirmed;
      case 'confirmed':
        return ConditionVerificationStatus.confirmed;
      case 'refuted':
        return ConditionVerificationStatus.refuted;
      case 'entered-in-error':
        return ConditionVerificationStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConditionVerificationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
