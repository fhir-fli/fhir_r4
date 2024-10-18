// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The intended usage for supplemental data elements in the measure.
enum MeasureDataUsage {
  /// Display: Supplemental Data
  /// Definition: The data is intended to be provided as additional information alongside the measure results.
  supplemental_data('supplemental-data'),

  /// Display: Risk Adjustment Factor
  /// Definition: The data is intended to be used to calculate and apply a risk adjustment model for the measure.
  risk_adjustment_factor('risk-adjustment-factor'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureDataUsage(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureDataUsage] instances.
  static MeasureDataUsage fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly.withElement(
        element,
      );
    }
    return MeasureDataUsage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
