// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example Measure Groups for the Measure Resource.
@collection
class MeasureGroupExample {
  /// Constructor for internal use (like enum)
  MeasureGroupExample({this.fhirCode, this.element})
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

  /// MeasureGroupExample values
  /// primary_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureGroupExample primary_rate = MeasureGroupExample(
    fhirCode: 'primary-rate',
  );

  /// secondary_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureGroupExample secondary_rate = MeasureGroupExample(
    fhirCode: 'secondary-rate',
  );

  /// For instances where an Element is present but not value

  static final MeasureGroupExample elementOnly = MeasureGroupExample();

  /// List of all enum-like values
  static final List<MeasureGroupExample> values = [
    primary_rate,
    secondary_rate,
  ];

  /// Returns the enum value with an element attached
  MeasureGroupExample withElement(Element? newElement) {
    return MeasureGroupExample(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureGroupExample] from JSON.
  static MeasureGroupExample fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureGroupExample.elementOnly.withElement(element);
    }
    return MeasureGroupExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureGroupExample.$fhirCode';
}
