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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResearchStudyObjectiveType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResearchStudyObjectiveType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyObjectiveType.elementOnly.withElement(element);
    }
    return ResearchStudyObjectiveType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResearchStudyObjectiveType withElement(Element? newElement) {
    return ResearchStudyObjectiveType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
