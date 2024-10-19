// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for why the study ended prematurely.
@collection
class ResearchStudyReasonStopped {
  /// Constructor for internal use (like enum)
  ResearchStudyReasonStopped({this.fhirCode, this.element})
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

  /// ResearchStudyReasonStopped values
  /// accrual_goal_met
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyReasonStopped accrual_goal_met =
      ResearchStudyReasonStopped(
    fhirCode: 'accrual-goal-met',
  );

  /// closed_due_to_toxicity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyReasonStopped closed_due_to_toxicity =
      ResearchStudyReasonStopped(
    fhirCode: 'closed-due-to-toxicity',
  );

  /// closed_due_to_lack_of_study_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyReasonStopped closed_due_to_lack_of_study_progress =
      ResearchStudyReasonStopped(
    fhirCode: 'closed-due-to-lack-of-study-progress',
  );

  /// temporarily_closed_per_study_design
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyReasonStopped temporarily_closed_per_study_design =
      ResearchStudyReasonStopped(
    fhirCode: 'temporarily-closed-per-study-design',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyReasonStopped elementOnly =
      ResearchStudyReasonStopped();

  /// List of all enum-like values
  static final List<ResearchStudyReasonStopped> values = [
    accrual_goal_met,
    closed_due_to_toxicity,
    closed_due_to_lack_of_study_progress,
    temporarily_closed_per_study_design,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyReasonStopped withElement(Element? newElement) {
    return ResearchStudyReasonStopped(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchStudyReasonStopped] from JSON.
  static ResearchStudyReasonStopped fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyReasonStopped.elementOnly.withElement(element);
    }
    return ResearchStudyReasonStopped.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyReasonStopped.$fhirCode';
}
