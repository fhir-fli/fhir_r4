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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResearchStudyReasonStopped(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResearchStudyReasonStopped fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyReasonStopped.elementOnly.withElement(element);
    }
    return ResearchStudyReasonStopped.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResearchStudyReasonStopped withElement(Element? newElement) {
    return ResearchStudyReasonStopped.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
