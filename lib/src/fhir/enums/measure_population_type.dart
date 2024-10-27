// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of population.
class MeasurePopulationType {
  // Private constructor for internal use (like enum)
  MeasurePopulationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasurePopulationType values
  /// initial_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType initial_population =
      MeasurePopulationType._(
    'initial-population',
  );

  /// numerator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType numerator = MeasurePopulationType._(
    'numerator',
  );

  /// numerator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType numerator_exclusion =
      MeasurePopulationType._(
    'numerator-exclusion',
  );

  /// denominator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator = MeasurePopulationType._(
    'denominator',
  );

  /// denominator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator_exclusion =
      MeasurePopulationType._(
    'denominator-exclusion',
  );

  /// denominator_exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType denominator_exception =
      MeasurePopulationType._(
    'denominator-exception',
  );

  /// measure_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_population =
      MeasurePopulationType._(
    'measure-population',
  );

  /// measure_population_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_population_exclusion =
      MeasurePopulationType._(
    'measure-population-exclusion',
  );

  /// measure_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasurePopulationType measure_observation =
      MeasurePopulationType._(
    'measure-observation',
  );

  /// For instances where an Element is present but not value

  static final MeasurePopulationType elementOnly = MeasurePopulationType._('');

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
    return MeasurePopulationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
