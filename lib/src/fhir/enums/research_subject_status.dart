// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatus {
  // Private constructor for internal use (like enum)
  ResearchSubjectStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchSubjectStatus values
  /// candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus candidate = ResearchSubjectStatus._(
    'candidate',
  );

  /// eligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus eligible = ResearchSubjectStatus._(
    'eligible',
  );

  /// follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus follow_up = ResearchSubjectStatus._(
    'follow-up',
  );

  /// ineligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus ineligible = ResearchSubjectStatus._(
    'ineligible',
  );

  /// not_registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus not_registered = ResearchSubjectStatus._(
    'not-registered',
  );

  /// off_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus off_study = ResearchSubjectStatus._(
    'off-study',
  );

  /// on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study = ResearchSubjectStatus._(
    'on-study',
  );

  /// on_study_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study_intervention =
      ResearchSubjectStatus._(
    'on-study-intervention',
  );

  /// on_study_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study_observation =
      ResearchSubjectStatus._(
    'on-study-observation',
  );

  /// pending_on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus pending_on_study = ResearchSubjectStatus._(
    'pending-on-study',
  );

  /// potential_candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus potential_candidate =
      ResearchSubjectStatus._(
    'potential-candidate',
  );

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus screening = ResearchSubjectStatus._(
    'screening',
  );

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus withdrawn = ResearchSubjectStatus._(
    'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchSubjectStatus elementOnly = ResearchSubjectStatus._('');

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

  /// Returns the enum value with an element attached
  ResearchSubjectStatus withElement(Element? newElement) {
    return ResearchSubjectStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchSubjectStatus] from JSON.
  static ResearchSubjectStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus.elementOnly.withElement(element);
    }
    return ResearchSubjectStatus._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
