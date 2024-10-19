// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifier subgroups in a population for measuring purposes.
class MeasureStratifierExample {
  // Private constructor for internal use (like enum)
  MeasureStratifierExample._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureStratifierExample values
  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample age = MeasureStratifierExample._(
    'age',
  );

  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample gender = MeasureStratifierExample._(
    'gender',
  );

  /// region
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample region = MeasureStratifierExample._(
    'region',
  );

  /// For instances where an Element is present but not value

  static final MeasureStratifierExample elementOnly =
      MeasureStratifierExample._('');

  /// List of all enum-like values
  static final List<MeasureStratifierExample> values = [
    age,
    gender,
    region,
  ];

  /// Returns the enum value with an element attached
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureStratifierExample] from JSON.
  static MeasureStratifierExample fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly.withElement(element);
    }
    return MeasureStratifierExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureStratifierExample.$fhirCode';
}
