// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the progression of a study subject through a study.
@collection
class ResearchSubjectStatus {
  /// Constructor for internal use (like enum)
  ResearchSubjectStatus({this.fhirCode, this.element})
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

  /// ResearchSubjectStatus values
  /// candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus candidate = ResearchSubjectStatus(
    fhirCode: 'candidate',
  );

  /// eligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus eligible = ResearchSubjectStatus(
    fhirCode: 'eligible',
  );

  /// follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus follow_up = ResearchSubjectStatus(
    fhirCode: 'follow-up',
  );

  /// ineligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus ineligible = ResearchSubjectStatus(
    fhirCode: 'ineligible',
  );

  /// not_registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus not_registered = ResearchSubjectStatus(
    fhirCode: 'not-registered',
  );

  /// off_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus off_study = ResearchSubjectStatus(
    fhirCode: 'off-study',
  );

  /// on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study = ResearchSubjectStatus(
    fhirCode: 'on-study',
  );

  /// on_study_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study_intervention =
      ResearchSubjectStatus(
    fhirCode: 'on-study-intervention',
  );

  /// on_study_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus on_study_observation =
      ResearchSubjectStatus(
    fhirCode: 'on-study-observation',
  );

  /// pending_on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus pending_on_study = ResearchSubjectStatus(
    fhirCode: 'pending-on-study',
  );

  /// potential_candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus potential_candidate =
      ResearchSubjectStatus(
    fhirCode: 'potential-candidate',
  );

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus screening = ResearchSubjectStatus(
    fhirCode: 'screening',
  );

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchSubjectStatus withdrawn = ResearchSubjectStatus(
    fhirCode: 'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchSubjectStatus elementOnly = ResearchSubjectStatus();

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
    return ResearchSubjectStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ResearchSubjectStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchSubjectStatus.$fhirCode';
}
