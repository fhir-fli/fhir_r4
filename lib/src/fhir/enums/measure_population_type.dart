// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of population.
@Entity()
class MeasurePopulationType extends FhirCode {
  /// Factory constructor to create [MeasurePopulationType] from JSON.
  factory MeasurePopulationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasurePopulationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasurePopulationType._(value, element);
    }
    throw ArgumentError(
      'MeasurePopulationType.fromJson: JSON value is not a valid value',
    );
  }

  /// initial_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.initial_population([this.element])
      : dbValue = 'initial-population',
        super('initial-population', element);

  /// numerator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.numerator([this.element])
      : dbValue = 'numerator',
        super('numerator', element);

  /// numerator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.numerator_exclusion([this.element])
      : dbValue = 'numerator-exclusion',
        super('numerator-exclusion', element);

  /// denominator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.denominator([this.element])
      : dbValue = 'denominator',
        super('denominator', element);

  /// denominator_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.denominator_exclusion([this.element])
      : dbValue = 'denominator-exclusion',
        super('denominator-exclusion', element);

  /// denominator_exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.denominator_exception([this.element])
      : dbValue = 'denominator-exception',
        super('denominator-exception', element);

  /// measure_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.measure_population([this.element])
      : dbValue = 'measure-population',
        super('measure-population', element);

  /// measure_population_exclusion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.measure_population_exclusion([this.element])
      : dbValue = 'measure-population-exclusion',
        super('measure-population-exclusion', element);

  /// measure_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasurePopulationType.measure_observation([this.element])
      : dbValue = 'measure-observation',
        super('measure-observation', element);

  /// For instances where an Element is present but not value

  MeasurePopulationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasurePopulationType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'initial-population',
    'numerator',
    'numerator-exclusion',
    'denominator',
    'denominator-exclusion',
    'denominator-exception',
    'measure-population',
    'measure-population-exclusion',
    'measure-observation',
  ];

  /// Returns the enum value with an element attached
  MeasurePopulationType withElement(Element? newElement) {
    return MeasurePopulationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasurePopulationType.$value';
}
