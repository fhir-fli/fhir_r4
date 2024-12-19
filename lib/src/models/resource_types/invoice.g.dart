part of 'invoice.dart';

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
sealed class ChargeItemXInvoiceLineItem {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
class ReferenceChargeItemInvoiceLineItem extends Reference
    implements ChargeItemXInvoiceLineItem {
  /// Factory constructor for super class
  factory ReferenceChargeItemInvoiceLineItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceChargeItemInvoiceLineItem;
}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
class CodeableConceptChargeItemInvoiceLineItem extends CodeableConcept
    implements ChargeItemXInvoiceLineItem {
  /// Factory constructor for super class
  factory CodeableConceptChargeItemInvoiceLineItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptChargeItemInvoiceLineItem;
}
