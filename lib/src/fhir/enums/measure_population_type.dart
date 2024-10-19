// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of population.
@collection
class MeasurePopulationType {
  /// Constructor for internal use (like enum)
  MeasurePopulationType({this.fhirCode, this.element})
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

  /// MeasurePopulationType values
  /// initial_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType initial_population = MeasurePopulationType(
    fhirCode: 'initial-population',
  );

  /// numerator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType numerator = MeasurePopulationType(
    fhirCode: 'numerator',
  );

  /// numerator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType numerator_exclusion =
      MeasurePopulationType(
    fhirCode: 'numerator-exclusion',
  );

  /// denominator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator = MeasurePopulationType(
    fhirCode: 'denominator',
  );

  /// denominator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator_exclusion =
      MeasurePopulationType(
    fhirCode: 'denominator-exclusion',
  );

  /// denominator_exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator_exception =
      MeasurePopulationType(
    fhirCode: 'denominator-exception',
  );

  /// measure_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_population = MeasurePopulationType(
    fhirCode: 'measure-population',
  );

  /// measure_population_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_population_exclusion =
      MeasurePopulationType(
    fhirCode: 'measure-population-exclusion',
  );

  /// measure_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_observation =
      MeasurePopulationType(
    fhirCode: 'measure-observation',
  );

  /// For instances where an Element is present but not value

  static final MeasurePopulationType elementOnly = MeasurePopulationType();

  /// List of all enum-like values
  static final List<MeasurePopulationType> values = [
    initial_population,
    numerator,
    numerator_exclusion,
    denominator,
    denominator_exclusion,
    denominator_exception,
    measure_population,
    measure_population_exclusion,
    measure_observation,
  ];

  /// Returns the enum value with an element attached
  MeasurePopulationType withElement(Element? newElement) {
    return MeasurePopulationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasurePopulationType] from JSON.
  static MeasurePopulationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasurePopulationType.elementOnly.withElement(element);
    }
    return MeasurePopulationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasurePopulationType.$fhirCode';
}
