// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Evidence focus characteristic code.
@Entity()
class FocusCharacteristicCode extends FhirCode {
  /// Factory constructor to create [FocusCharacteristicCode] from JSON.
  factory FocusCharacteristicCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FocusCharacteristicCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return FocusCharacteristicCode._(value, element);
    }
    throw ArgumentError(
      'FocusCharacteristicCode.fromJson: JSON value is not a valid value',
    );
  }

  /// citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.citation([this.element])
      : dbValue = 'citation',
        super('citation', element);

  /// clinical_outcomes_observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.clinical_outcomes_observed([this.element])
      : dbValue = 'clinical-outcomes-observed',
        super('clinical-outcomes-observed', element);

  /// population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.population([this.element])
      : dbValue = 'population',
        super('population', element);

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.exposure([this.element])
      : dbValue = 'exposure',
        super('exposure', element);

  /// comparator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.comparator([this.element])
      : dbValue = 'comparator',
        super('comparator', element);

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.outcome([this.element])
      : dbValue = 'outcome',
        super('outcome', element);

  /// medication_exposures
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.medication_exposures([this.element])
      : dbValue = 'medication-exposures',
        super('medication-exposures', element);

  /// study_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FocusCharacteristicCode.study_type([this.element])
      : dbValue = 'study-type',
        super('study-type', element);

  /// For instances where an Element is present but not value

  FocusCharacteristicCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FocusCharacteristicCode._(super.input, [super.element])
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
    'citation',
    'clinical-outcomes-observed',
    'population',
    'exposure',
    'comparator',
    'outcome',
    'medication-exposures',
    'study-type',
  ];

  /// Returns the enum value with an element attached
  FocusCharacteristicCode withElement(Element? newElement) {
    return FocusCharacteristicCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FocusCharacteristicCode.$value';
}
