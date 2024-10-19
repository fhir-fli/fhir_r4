// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for why the study ended prematurely.
@Entity()
class ResearchStudyReasonStopped extends FhirCode {
  /// Factory constructor to create [ResearchStudyReasonStopped] from JSON.
  factory ResearchStudyReasonStopped.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyReasonStopped.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchStudyReasonStopped._(value, element);
    }
    throw ArgumentError(
      'ResearchStudyReasonStopped.fromJson: JSON value is not a valid value',
    );
  }

  /// accrual_goal_met
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyReasonStopped.accrual_goal_met([this.element])
      : dbValue = 'accrual-goal-met',
        super('accrual-goal-met', element);

  /// closed_due_to_toxicity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyReasonStopped.closed_due_to_toxicity([this.element])
      : dbValue = 'closed-due-to-toxicity',
        super('closed-due-to-toxicity', element);

  /// closed_due_to_lack_of_study_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyReasonStopped.closed_due_to_lack_of_study_progress(
      [this.element])
      : dbValue = 'closed-due-to-lack-of-study-progress',
        super('closed-due-to-lack-of-study-progress', element);

  /// temporarily_closed_per_study_design
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyReasonStopped.temporarily_closed_per_study_design([this.element])
      : dbValue = 'temporarily-closed-per-study-design',
        super('temporarily-closed-per-study-design', element);

  /// For instances where an Element is present but not value

  ResearchStudyReasonStopped.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchStudyReasonStopped._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'accrual-goal-met',
    'closed-due-to-toxicity',
    'closed-due-to-lack-of-study-progress',
    'temporarily-closed-per-study-design',
  ];

  /// Returns the enum value with an element attached
  ResearchStudyReasonStopped withElement(Element? newElement) {
    return ResearchStudyReasonStopped._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyReasonStopped.$value';
}
