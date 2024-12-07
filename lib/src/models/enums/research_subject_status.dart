// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ResearchSubjectStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ResearchSubjectStatus] from JSON.
  factory ResearchSubjectStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchSubjectStatus cannot be constructed from JSON.',
      );
    }
    return ResearchSubjectStatus._(value: value, element: element);
  }

  /// candidate
  static final ResearchSubjectStatus candidate = ResearchSubjectStatus._(
    value: 'candidate',
  );

  /// eligible
  static final ResearchSubjectStatus eligible = ResearchSubjectStatus._(
    value: 'eligible',
  );

  /// follow_up
  static final ResearchSubjectStatus follow_up = ResearchSubjectStatus._(
    value: 'follow-up',
  );

  /// ineligible
  static final ResearchSubjectStatus ineligible = ResearchSubjectStatus._(
    value: 'ineligible',
  );

  /// not_registered
  static final ResearchSubjectStatus not_registered = ResearchSubjectStatus._(
    value: 'not-registered',
  );

  /// off_study
  static final ResearchSubjectStatus off_study = ResearchSubjectStatus._(
    value: 'off-study',
  );

  /// on_study
  static final ResearchSubjectStatus on_study = ResearchSubjectStatus._(
    value: 'on-study',
  );

  /// on_study_intervention
  static final ResearchSubjectStatus on_study_intervention =
      ResearchSubjectStatus._(
    value: 'on-study-intervention',
  );

  /// on_study_observation
  static final ResearchSubjectStatus on_study_observation =
      ResearchSubjectStatus._(
    value: 'on-study-observation',
  );

  /// pending_on_study
  static final ResearchSubjectStatus pending_on_study = ResearchSubjectStatus._(
    value: 'pending-on-study',
  );

  /// potential_candidate
  static final ResearchSubjectStatus potential_candidate =
      ResearchSubjectStatus._(
    value: 'potential-candidate',
  );

  /// screening
  static final ResearchSubjectStatus screening = ResearchSubjectStatus._(
    value: 'screening',
  );

  /// withdrawn
  static final ResearchSubjectStatus withdrawn = ResearchSubjectStatus._(
    value: 'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchSubjectStatus elementOnly =
      ResearchSubjectStatus._(value: '');

  /// List of all enum-like values
  static final List<ResearchSubjectStatus> values = [
    candidate,
    eligible,
    follow_up,
    ineligible,
    not_registered,
    off_study,
    on_study,
    on_study_intervention,
    on_study_observation,
    pending_on_study,
    potential_candidate,
    screening,
    withdrawn,
  ];

  /// Clones the current instance
  @override
  ResearchSubjectStatus clone() => ResearchSubjectStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchSubjectStatus withElement(Element? newElement) {
    return ResearchSubjectStatus._(value: value, element: newElement);
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
  ResearchSubjectStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ResearchSubjectStatus._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
