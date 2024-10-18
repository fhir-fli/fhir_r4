// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The reason why the supply item was requested.
enum SupplyRequestReason {
  /// Display: Patient Care
  /// Definition: The supply has been requested for use in direct patient care.
  patient_care('patient-care'),

  /// Display: Ward Stock
  /// Definition: The supply has been requested for creating or replenishing ward stock.
  ward_stock('ward-stock'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SupplyRequestReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SupplyRequestReason] instances.
  static SupplyRequestReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestReason.elementOnly.withElement(
        element,
      );
    }
    return SupplyRequestReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SupplyRequestReason withElement(Element? newElement) {
    return SupplyRequestReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
