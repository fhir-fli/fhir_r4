// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the kind of study objective.
enum ResearchStudyObjectiveType {
  /// Display: Primary
  /// Definition: The main question to be answered, and the one that drives any statistical planning for the study—e.g., calculation of the sample size to provide the appropriate power for statistical testing.
  primary('primary'),

  /// Display: Secondary
  /// Definition: Question to be answered in the study that is of lesser importance than the primary objective.
  secondary('secondary'),

  /// Display: Exploratory
  /// Definition: Exploratory questions to be answered in the study.
  exploratory('exploratory'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResearchStudyObjectiveType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResearchStudyObjectiveType] instances.
  static ResearchStudyObjectiveType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyObjectiveType.elementOnly.withElement(
        element,
      );
    }
    return ResearchStudyObjectiveType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ResearchStudyObjectiveType withElement(Element? newElement) {
    return ResearchStudyObjectiveType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
