// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The scoring type of the measure.
@collection
class MeasureScoring {
  /// Constructor for internal use (like enum)
  MeasureScoring({this.fhirCode, this.element})
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

  /// MeasureScoring values
  /// proportion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureScoring proportion = MeasureScoring(
    fhirCode: 'proportion',
  );

  /// ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureScoring ratio = MeasureScoring(
    fhirCode: 'ratio',
  );

  /// continuous_variable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureScoring continuous_variable = MeasureScoring(
    fhirCode: 'continuous-variable',
  );

  /// cohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureScoring cohort = MeasureScoring(
    fhirCode: 'cohort',
  );

  /// For instances where an Element is present but not value

  static final MeasureScoring elementOnly = MeasureScoring();

  /// List of all enum-like values
  static final List<MeasureScoring> values = [
    proportion,
    ratio,
    continuous_variable,
    cohort,
  ];

  /// Returns the enum value with an element attached
  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureScoring] from JSON.
  static MeasureScoring fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly.withElement(element);
    }
    return MeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureScoring.$fhirCode';
}
