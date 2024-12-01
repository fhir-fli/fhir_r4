// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
class ChargeItemStatus {
  // Private constructor for internal use (like enum)
  ChargeItemStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ChargeItemStatus] from JSON.
  factory ChargeItemStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatus.elementOnly.withElement(element);
    }
    return ChargeItemStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ChargeItemStatus values
  /// planned
  static final ChargeItemStatus planned = ChargeItemStatus._(
    'planned',
  );

  /// billable
  static final ChargeItemStatus billable = ChargeItemStatus._(
    'billable',
  );

  /// not_billable
  static final ChargeItemStatus not_billable = ChargeItemStatus._(
    'not-billable',
  );

  /// aborted
  static final ChargeItemStatus aborted = ChargeItemStatus._(
    'aborted',
  );

  /// billed
  static final ChargeItemStatus billed = ChargeItemStatus._(
    'billed',
  );

  /// entered_in_error
  static final ChargeItemStatus entered_in_error = ChargeItemStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ChargeItemStatus unknown = ChargeItemStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ChargeItemStatus elementOnly = ChargeItemStatus._('');

  /// List of all enum-like values
  static final List<ChargeItemStatus> values = [
    planned,
    billable,
    not_billable,
    aborted,
    billed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ChargeItemStatus withElement(Element? newElement) {
    return ChargeItemStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
