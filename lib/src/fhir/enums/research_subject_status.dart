/// Indicates the progression of a study subject through a study.
enum ResearchSubjectStatus {
  /// Display: Candidate
  /// Definition: An identified person that can be considered for inclusion in a study.
  candidate,

  /// Display: Eligible
  /// Definition: A person that has met the eligibility criteria for inclusion in a study.
  eligible,

  /// Display: Follow-up
  /// Definition: A person is no longer receiving study intervention and/or being evaluated with tests and procedures according to the protocol, but they are being monitored on a protocol-prescribed schedule.
  follow_up,

  /// Display: Ineligible
  /// Definition: A person who did not meet one or more criteria required for participation in a study is considered to have failed screening or is ineligible for the study.
  ineligible,

  /// Display: Not Registered
  /// Definition: A person for whom registration was not completed.
  not_registered,

  /// Display: Off-study
  /// Definition: A person that has ended their participation on a study either because their treatment/observation is complete or through not responding, withdrawal, non-compliance and/or adverse event.
  off_study,

  /// Display: On-study
  /// Definition: A person that is enrolled or registered on a study.
  on_study,

  /// Display: On-study-intervention
  /// Definition: The person is receiving the treatment or participating in an activity (e.g. yoga, diet, etc.) that the study is evaluating.
  on_study_intervention,

  /// Display: On-study-observation
  /// Definition: The subject is being evaluated via tests and assessments according to the study calendar, but is not receiving any intervention. Note that this state is study-dependent and might not exist in all studies.  A synonym for this is "short-term follow-up".
  on_study_observation,

  /// Display: Pending on-study
  /// Definition: A person is pre-registered for a study.
  pending_on_study,

  /// Display: Potential Candidate
  /// Definition: A person that is potentially eligible for participation in the study.
  potential_candidate,

  /// Display: Screening
  /// Definition: A person who is being evaluated for eligibility for a study.
  screening,

  /// Display: Withdrawn
  /// Definition: The person has withdrawn their participation in the study before registration.
  withdrawn,
  ;

  @override
  String toString() {
    switch (this) {
      case candidate:
        return 'candidate';
      case eligible:
        return 'eligible';
      case follow_up:
        return 'follow-up';
      case ineligible:
        return 'ineligible';
      case not_registered:
        return 'not-registered';
      case off_study:
        return 'off-study';
      case on_study:
        return 'on-study';
      case on_study_intervention:
        return 'on-study-intervention';
      case on_study_observation:
        return 'on-study-observation';
      case pending_on_study:
        return 'pending-on-study';
      case potential_candidate:
        return 'potential-candidate';
      case screening:
        return 'screening';
      case withdrawn:
        return 'withdrawn';
    }
  }

  String toJson() => toString();
  static ResearchSubjectStatus fromString(String str) {
    switch (str) {
      case 'candidate':
        return ResearchSubjectStatus.candidate;
      case 'eligible':
        return ResearchSubjectStatus.eligible;
      case 'follow-up':
        return ResearchSubjectStatus.follow_up;
      case 'ineligible':
        return ResearchSubjectStatus.ineligible;
      case 'not-registered':
        return ResearchSubjectStatus.not_registered;
      case 'off-study':
        return ResearchSubjectStatus.off_study;
      case 'on-study':
        return ResearchSubjectStatus.on_study;
      case 'on-study-intervention':
        return ResearchSubjectStatus.on_study_intervention;
      case 'on-study-observation':
        return ResearchSubjectStatus.on_study_observation;
      case 'pending-on-study':
        return ResearchSubjectStatus.pending_on_study;
      case 'potential-candidate':
        return ResearchSubjectStatus.potential_candidate;
      case 'screening':
        return ResearchSubjectStatus.screening;
      case 'withdrawn':
        return ResearchSubjectStatus.withdrawn;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ResearchSubjectStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
