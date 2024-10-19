// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the kind of study objective.
class ResearchStudyObjectiveType {
  // Private constructor for internal use (like enum)
  ResearchStudyObjectiveType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyObjectiveType values
  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyObjectiveType primary =
      ResearchStudyObjectiveType._(
    'primary',
  );

  /// secondary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyObjectiveType secondary =
      ResearchStudyObjectiveType._(
    'secondary',
  );

  /// exploratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyObjectiveType exploratory =
      ResearchStudyObjectiveType._(
    'exploratory',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyObjectiveType elementOnly =
      ResearchStudyObjectiveType._('');

  /// List of all enum-like values
  static final List<ResearchStudyObjectiveType> values = [
    primary,
    secondary,
    exploratory,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyObjectiveType withElement(Element? newElement) {
    return ResearchStudyObjectiveType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchStudyObjectiveType] from JSON.
  static ResearchStudyObjectiveType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyObjectiveType.elementOnly.withElement(element);
    }
    return ResearchStudyObjectiveType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyObjectiveType.$fhirCode';
}
