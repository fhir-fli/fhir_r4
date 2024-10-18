// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
enum ChargeItemStatus {
  /// Display: Planned
  /// Definition: The charge item has been entered, but the charged service is not yet complete, so it shall not be billed yet but might be used in the context of pre-authorization.
  planned('planned'),

  /// Display: Billable
  /// Definition: The charge item is ready for billing.
  billable('billable'),

  /// Display: Not billable
  /// Definition: The charge item has been determined to be not billable (e.g. due to rules associated with the billing code).
  not_billable('not-billable'),

  /// Display: Aborted
  /// Definition: The processing of the charge was aborted.
  aborted('aborted'),

  /// Display: Billed
  /// Definition: The charge item has been billed (e.g. a billing engine has generated financial transactions by applying the associated ruled for the charge item to the context of the Encounter, and placed them into Claims/Invoices.
  billed('billed'),

  /// Display: Entered in Error
  /// Definition: The charge item has been entered in error and should not be processed for billing.
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this charge item Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ChargeItemStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ChargeItemStatus] instances.
  static ChargeItemStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatus.elementOnly.withElement(
        element,
      );
    }
    return ChargeItemStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ChargeItemStatus withElement(Element? newElement) {
    return ChargeItemStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
