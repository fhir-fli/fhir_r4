// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the progression of a study subject through a study.
enum ResearchSubjectStatus {
  /// Display: Candidate
  /// Definition: An identified person that can be considered for inclusion in a study.
  candidate('candidate'),

  /// Display: Eligible
  /// Definition: A person that has met the eligibility criteria for inclusion in a study.
  eligible('eligible'),

  /// Display: Follow-up
  /// Definition: A person is no longer receiving study intervention and/or being evaluated with tests and procedures according to the protocol, but they are being monitored on a protocol-prescribed schedule.
  follow_up('follow-up'),

  /// Display: Ineligible
  /// Definition: A person who did not meet one or more criteria required for participation in a study is considered to have failed screening or is ineligible for the study.
  ineligible('ineligible'),

  /// Display: Not Registered
  /// Definition: A person for whom registration was not completed.
  not_registered('not-registered'),

  /// Display: Off-study
  /// Definition: A person that has ended their participation on a study either because their treatment/observation is complete or through not responding, withdrawal, non-compliance and/or adverse event.
  off_study('off-study'),

  /// Display: On-study
  /// Definition: A person that is enrolled or registered on a study.
  on_study('on-study'),

  /// Display: On-study-intervention
  /// Definition: The person is receiving the treatment or participating in an activity (e.g. yoga, diet, etc.) that the study is evaluating.
  on_study_intervention('on-study-intervention'),

  /// Display: On-study-observation
  /// Definition: The subject is being evaluated via tests and assessments according to the study calendar, but is not receiving any intervention. Note that this state is study-dependent and might not exist in all studies. A synonym for this is "short-term follow-up".
  on_study_observation('on-study-observation'),

  /// Display: Pending on-study
  /// Definition: A person is pre-registered for a study.
  pending_on_study('pending-on-study'),

  /// Display: Potential Candidate
  /// Definition: A person that is potentially eligible for participation in the study.
  potential_candidate('potential-candidate'),

  /// Display: Screening
  /// Definition: A person who is being evaluated for eligibility for a study.
  screening('screening'),

  /// Display: Withdrawn
  /// Definition: The person has withdrawn their participation in the study before registration.
  withdrawn('withdrawn'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResearchSubjectStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResearchSubjectStatus] instances.
  static ResearchSubjectStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus.elementOnly.withElement(
        element,
      );
    }
    return ResearchSubjectStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ResearchSubjectStatus withElement(Element? newElement) {
    return ResearchSubjectStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
