// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a Category of supply.
enum SupplyType {
  /// Display: Central Supply
  /// Definition: Supply is stored and requested from central supply.
  central('central'),

  /// Display: Non-Stock
  /// Definition: Supply is not onsite and must be requested from an outside vendor using a non-stock requisition.
  nonstock('nonstock'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SupplyType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SupplyType] instances.
  static SupplyType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyType.elementOnly.withElement(
        element,
      );
    }
    return SupplyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SupplyType withElement(Element? newElement) {
    return SupplyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
