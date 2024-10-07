import 'package:json_annotation/json_annotation.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
enum ChargeItemStatus {
  /// Display: Planned
  /// Definition: The charge item has been entered, but the charged service is not  yet complete, so it shall not be billed yet but might be used in the context of pre-authorization.
  @JsonValue('planned')
  planned,

  /// Display: Billable
  /// Definition: The charge item is ready for billing.
  @JsonValue('billable')
  billable,

  /// Display: Not billable
  /// Definition: The charge item has been determined to be not billable (e.g. due to rules associated with the billing code).
  @JsonValue('not-billable')
  not_billable,

  /// Display: Aborted
  /// Definition: The processing of the charge was aborted.
  @JsonValue('aborted')
  aborted,

  /// Display: Billed
  /// Definition: The charge item has been billed (e.g. a billing engine has generated financial transactions by applying the associated ruled for the charge item to the context of the Encounter, and placed them into Claims/Invoices.
  @JsonValue('billed')
  billed,

  /// Display: Entered in Error
  /// Definition: The charge item has been entered in error and should not be processed for billing.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this charge item  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case planned:
        return 'planned';
      case billable:
        return 'billable';
      case not_billable:
        return 'not-billable';
      case aborted:
        return 'aborted';
      case billed:
        return 'billed';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  ChargeItemStatus fromString(String str) {
    switch (str) {
      case 'planned':
        return ChargeItemStatus.planned;
      case 'billable':
        return ChargeItemStatus.billable;
      case 'not-billable':
        return ChargeItemStatus.not_billable;
      case 'aborted':
        return ChargeItemStatus.aborted;
      case 'billed':
        return ChargeItemStatus.billed;
      case 'entered-in-error':
        return ChargeItemStatus.entered_in_error;
      case 'unknown':
        return ChargeItemStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ChargeItemStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
