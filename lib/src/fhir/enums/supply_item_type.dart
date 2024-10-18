// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a specific supply item.
enum SupplyItemType {
  /// Display: Medication
  /// Definition: Supply is a kind of medication.
  medication('medication'),

  /// Display: Device
  /// Definition: What is supplied (or requested) is a device.
  device('device'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SupplyItemType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SupplyItemType] instances.
  static SupplyItemType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyItemType.elementOnly.withElement(element);
    }
    return SupplyItemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SupplyItemType withElement(Element? newElement) {
    return SupplyItemType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
