// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The intended usage for supplemental data elements in the measure.
@collection
class MeasureDataUsage {
  /// Constructor for internal use (like enum)
  MeasureDataUsage({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureDataUsage values
  /// supplemental_data
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureDataUsage supplemental_data = MeasureDataUsage(
    fhirCode: 'supplemental-data',
  );

  /// risk_adjustment_factor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureDataUsage risk_adjustment_factor = MeasureDataUsage(
    fhirCode: 'risk-adjustment-factor',
  );

  /// For instances where an Element is present but not value

  static final MeasureDataUsage elementOnly = MeasureDataUsage();

  /// List of all enum-like values
  static final List<MeasureDataUsage> values = [
    supplemental_data,
    risk_adjustment_factor,
  ];

  /// Returns the enum value with an element attached
  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureDataUsage] from JSON.
  static MeasureDataUsage fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly.withElement(element);
    }
    return MeasureDataUsage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureDataUsage.$fhirCode';
}
