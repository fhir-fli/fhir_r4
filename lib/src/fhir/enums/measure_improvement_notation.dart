// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
@collection
class MeasureImprovementNotation {
  /// Constructor for internal use (like enum)
  MeasureImprovementNotation({this.fhirCode, this.element})
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

  /// MeasureImprovementNotation values
  /// increase
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureImprovementNotation increase = MeasureImprovementNotation(
    fhirCode: 'increase',
  );

  /// decrease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureImprovementNotation decrease = MeasureImprovementNotation(
    fhirCode: 'decrease',
  );

  /// For instances where an Element is present but not value

  static final MeasureImprovementNotation elementOnly =
      MeasureImprovementNotation();

  /// List of all enum-like values
  static final List<MeasureImprovementNotation> values = [
    increase,
    decrease,
  ];

  /// Returns the enum value with an element attached
  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureImprovementNotation] from JSON.
  static MeasureImprovementNotation fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureImprovementNotation.elementOnly.withElement(element);
    }
    return MeasureImprovementNotation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureImprovementNotation.$fhirCode';
}
