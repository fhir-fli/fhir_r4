// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for why the study ended prematurely.
enum ResearchStudyReasonStopped {
  /// Display: Accrual Goal Met
  /// Definition: The study prematurely ended because the accrual goal was met.
  accrual_goal_met('accrual-goal-met'),

  /// Display: Closed due to toxicity
  /// Definition: The study prematurely ended due to toxicity.
  closed_due_to_toxicity('closed-due-to-toxicity'),

  /// Display: Closed due to lack of study progress
  /// Definition: The study prematurely ended due to lack of study progress.
  closed_due_to_lack_of_study_progress('closed-due-to-lack-of-study-progress'),

  /// Display: Temporarily closed per study design
  /// Definition: The study prematurely ended temporarily per study design.
  temporarily_closed_per_study_design('temporarily-closed-per-study-design'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResearchStudyReasonStopped(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResearchStudyReasonStopped] instances.
  static ResearchStudyReasonStopped fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyReasonStopped.elementOnly.withElement(
        element,
      );
    }
    return ResearchStudyReasonStopped.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ResearchStudyReasonStopped withElement(Element? newElement) {
    return ResearchStudyReasonStopped.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
