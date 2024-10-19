// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
class MeasureImprovementNotation {
  // Private constructor for internal use (like enum)
  MeasureImprovementNotation._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureImprovementNotation values
  /// increase
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureImprovementNotation increase =
      MeasureImprovementNotation._(
    'increase',
  );

  /// decrease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureImprovementNotation decrease =
      MeasureImprovementNotation._(
    'decrease',
  );

  /// For instances where an Element is present but not value

  static final MeasureImprovementNotation elementOnly =
      MeasureImprovementNotation._('');

  /// List of all enum-like values
  static final List<MeasureImprovementNotation> values = [
    increase,
    decrease,
  ];

  /// Returns the enum value with an element attached
  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
