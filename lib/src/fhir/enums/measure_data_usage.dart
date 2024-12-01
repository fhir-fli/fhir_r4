// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The intended usage for supplemental data elements in the measure.
class MeasureDataUsage {
  // Private constructor for internal use (like enum)
  MeasureDataUsage._(this.fhirCode, {this.element});

  /// Factory constructor to create [MeasureDataUsage] from JSON.
  factory MeasureDataUsage.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly.withElement(element);
    }
    return MeasureDataUsage._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureDataUsage values
  /// supplemental_data
  static final MeasureDataUsage supplemental_data = MeasureDataUsage._(
    'supplemental-data',
  );

  /// risk_adjustment_factor
  static final MeasureDataUsage risk_adjustment_factor = MeasureDataUsage._(
    'risk-adjustment-factor',
  );

  /// For instances where an Element is present but not value

  static final MeasureDataUsage elementOnly = MeasureDataUsage._('');

  /// List of all enum-like values
  static final List<MeasureDataUsage> values = [
    supplemental_data,
    risk_adjustment_factor,
  ];

  /// Returns the enum value with an element attached
  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage._(fhirCode, element: newElement);
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
