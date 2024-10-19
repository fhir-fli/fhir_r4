// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example Measure Groups for the Measure Resource.
@Entity()
class MeasureGroupExample extends FhirCode {
  /// Factory constructor to create [MeasureGroupExample] from JSON.
  factory MeasureGroupExample.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureGroupExample.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureGroupExample._(value, element);
    }
    throw ArgumentError(
      'MeasureGroupExample.fromJson: JSON value is not a valid value',
    );
  }

  /// primary_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureGroupExample.primary_rate([this.element])
      : dbValue = 'primary-rate',
        super('primary-rate', element);

  /// secondary_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureGroupExample.secondary_rate([this.element])
      : dbValue = 'secondary-rate',
        super('secondary-rate', element);

  /// For instances where an Element is present but not value

  MeasureGroupExample.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureGroupExample._(super.input, [super.element])
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
    'primary-rate',
    'secondary-rate',
  ];

  /// Returns the enum value with an element attached
  MeasureGroupExample withElement(Element? newElement) {
    return MeasureGroupExample._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureGroupExample.$value';
}
