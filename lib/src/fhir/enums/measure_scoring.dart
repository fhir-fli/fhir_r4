// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The scoring type of the measure.
@Entity()
class MeasureScoring extends FhirCode {
  /// Factory constructor to create [MeasureScoring] from JSON.
  factory MeasureScoring.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureScoring._(value, element);
    }
    throw ArgumentError(
      'MeasureScoring.fromJson: JSON value is not a valid value',
    );
  }

  /// proportion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureScoring.proportion([this.element])
      : dbValue = 'proportion',
        super('proportion', element);

  /// ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureScoring.ratio([this.element])
      : dbValue = 'ratio',
        super('ratio', element);

  /// continuous_variable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureScoring.continuous_variable([this.element])
      : dbValue = 'continuous-variable',
        super('continuous-variable', element);

  /// cohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureScoring.cohort([this.element])
      : dbValue = 'cohort',
        super('cohort', element);

  /// For instances where an Element is present but not value

  MeasureScoring.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureScoring._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'proportion',
    'ratio',
    'continuous-variable',
    'cohort',
  ];

  /// Returns the enum value with an element attached
  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureScoring.$value';
}
