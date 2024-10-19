// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Identifier subgroups in a population for measuring purposes.
@collection
class MeasureStratifierExample {
  /// Constructor for internal use (like enum)
  MeasureStratifierExample({this.fhirCode, this.element})
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

  /// MeasureStratifierExample values
  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample age = MeasureStratifierExample(
    fhirCode: 'age',
  );

  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample gender = MeasureStratifierExample(
    fhirCode: 'gender',
  );

  /// region
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureStratifierExample region = MeasureStratifierExample(
    fhirCode: 'region',
  );

  /// For instances where an Element is present but not value

  static final MeasureStratifierExample elementOnly =
      MeasureStratifierExample();

  /// List of all enum-like values
  static final List<MeasureStratifierExample> values = [
    age,
    gender,
    region,
  ];

  /// Returns the enum value with an element attached
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
