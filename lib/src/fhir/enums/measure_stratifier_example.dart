// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifier subgroups in a population for measuring purposes.
@Entity()
class MeasureStratifierExample extends FhirCode {
  /// Factory constructor to create [MeasureStratifierExample] from JSON.
  factory MeasureStratifierExample.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureStratifierExample._(value, element);
    }
    throw ArgumentError(
      'MeasureStratifierExample.fromJson: JSON value is not a valid value',
    );
  }

  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureStratifierExample.age([this.element])
      : dbValue = 'age',
        super('age', element);

  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureStratifierExample.gender([this.element])
      : dbValue = 'gender',
        super('gender', element);

  /// region
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureStratifierExample.region([this.element])
      : dbValue = 'region',
        super('region', element);

  /// For instances where an Element is present but not value

  MeasureStratifierExample.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureStratifierExample._(super.input, [super.element])
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
    'age',
    'gender',
    'region',
  ];

  /// Returns the enum value with an element attached
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureStratifierExample.$value';
}
