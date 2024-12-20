part of 'audit_event.dart';

/// The value of the extra detail.
sealed class ValueXAuditEventDetail extends DataType {}

/// The value of the extra detail.
class StringValueAuditEventDetail extends FhirString
    implements ValueXAuditEventDetail {
  /// Constructor for [StringValueAuditEventDetail]
  StringValueAuditEventDetail(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueAuditEventDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueAuditEventDetail;
}

/// The value of the extra detail.
class Base64BinaryValueAuditEventDetail extends FhirBase64Binary
    implements ValueXAuditEventDetail {
  /// Constructor for [Base64BinaryValueAuditEventDetail]
  Base64BinaryValueAuditEventDetail(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueAuditEventDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json) as Base64BinaryValueAuditEventDetail;
}
