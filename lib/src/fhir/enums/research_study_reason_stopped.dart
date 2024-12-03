// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for why the study ended prematurely.
class ResearchStudyReasonStopped extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ResearchStudyReasonStopped._(super.value, [super.element]);

  /// Factory constructor to create [ResearchStudyReasonStopped] from JSON.
  factory ResearchStudyReasonStopped.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyReasonStopped.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyReasonStopped cannot be constructed from JSON.',
      );
    }
    return ResearchStudyReasonStopped._(value, element);
  }

  /// accrual_goal_met
  static final ResearchStudyReasonStopped accrual_goal_met =
      ResearchStudyReasonStopped._(
    'accrual-goal-met',
  );

  /// closed_due_to_toxicity
  static final ResearchStudyReasonStopped closed_due_to_toxicity =
      ResearchStudyReasonStopped._(
    'closed-due-to-toxicity',
  );

  /// closed_due_to_lack_of_study_progress
  static final ResearchStudyReasonStopped closed_due_to_lack_of_study_progress =
      ResearchStudyReasonStopped._(
    'closed-due-to-lack-of-study-progress',
  );

  /// temporarily_closed_per_study_design
  static final ResearchStudyReasonStopped temporarily_closed_per_study_design =
      ResearchStudyReasonStopped._(
    'temporarily-closed-per-study-design',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyReasonStopped elementOnly =
      ResearchStudyReasonStopped._('');

  /// List of all enum-like values
  static final List<ResearchStudyReasonStopped> values = [
    accrual_goal_met,
    closed_due_to_toxicity,
    closed_due_to_lack_of_study_progress,
    temporarily_closed_per_study_design,
  ];

  /// Clones the current instance
  @override
  ResearchStudyReasonStopped clone() => ResearchStudyReasonStopped._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ResearchStudyReasonStopped setElement(
    String name,
    dynamic elementValue,
  ) {
    return ResearchStudyReasonStopped._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ResearchStudyReasonStopped withElement(Element? newElement) {
    return ResearchStudyReasonStopped._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ResearchStudyReasonStopped copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ResearchStudyReasonStopped._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
