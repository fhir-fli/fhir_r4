import 'package:json_annotation/json_annotation.dart';

/// Codes identifying the lifecycle stage of an Invoice.
enum InvoiceStatus {
  /// Display: draft
  /// Definition: the invoice has been prepared but not yet finalized.
  @JsonValue('draft')
  draft,
  /// Display: issued
  /// Definition: the invoice has been finalized and sent to the recipient.
  @JsonValue('issued')
  issued,
  /// Display: balanced
  /// Definition: the invoice has been balaced / completely paid.
  @JsonValue('balanced')
  balanced,
  /// Display: cancelled
  /// Definition: the invoice was cancelled.
  @JsonValue('cancelled')
  cancelled,
  /// Display: entered in error
  /// Definition: the invoice was determined as entered in error before it was issued.
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case draft: return 'draft';
        case issued: return 'issued';
        case balanced: return 'balanced';
        case cancelled: return 'cancelled';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  InvoiceStatus fromString(String str) {
    switch(str) {
      case 'draft': return InvoiceStatus.draft;
      case 'issued': return InvoiceStatus.issued;
      case 'balanced': return InvoiceStatus.balanced;
      case 'cancelled': return InvoiceStatus.cancelled;
      case 'entered-in-error': return InvoiceStatus.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 InvoiceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
