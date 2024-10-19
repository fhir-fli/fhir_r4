// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
@Entity()
class MeasureImprovementNotation extends FhirCode {
  /// Factory constructor to create [MeasureImprovementNotation] from JSON.
  factory MeasureImprovementNotation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureImprovementNotation.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureImprovementNotation._(value, element);
    }
    throw ArgumentError(
      'MeasureImprovementNotation.fromJson: JSON value is not a valid value',
    );
  }

  /// increase
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureImprovementNotation.increase([this.element])
      : dbValue = 'increase',
        super('increase', element);

  /// decrease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureImprovementNotation.decrease([this.element])
      : dbValue = 'decrease',
        super('decrease', element);

  /// For instances where an Element is present but not value

  MeasureImprovementNotation.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureImprovementNotation._(super.input, [super.element])
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
    'increase',
    'decrease',
  ];

  /// Returns the enum value with an element attached
  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureImprovementNotation.$value';
}
