import 'package:json_annotation/json_annotation.dart';

/// Codes that convey the current status of the research study.
enum ResearchStudyStatus {
  /// Display: Active
  /// Definition: Study is opened for accrual.
  @JsonValue('active')
  active,

  /// Display: Administratively Completed
  /// Definition: Study is completed prematurely and will not resume; patients are no longer examined nor treated.
  @JsonValue('administratively-completed')
  administratively_completed,

  /// Display: Approved
  /// Definition: Protocol is approved by the review board.
  @JsonValue('approved')
  approved,

  /// Display: Closed to Accrual
  /// Definition: Study is closed for accrual; patients can be examined and treated.
  @JsonValue('closed-to-accrual')
  closed_to_accrual,

  /// Display: Closed to Accrual and Intervention
  /// Definition: Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have completed treatment or intervention but are still being followed according to the primary objective of the study.
  @JsonValue('closed-to-accrual-and-intervention')
  closed_to_accrual_and_intervention,

  /// Display: Completed
  /// Definition: Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have completed treatment or intervention but are still being followed according to the primary objective of the study.
  @JsonValue('completed')
  completed,

  /// Display: Disapproved
  /// Definition: Protocol was disapproved by the review board.
  @JsonValue('disapproved')
  disapproved,

  /// Display: In Review
  /// Definition: Protocol is submitted to the review board for approval.
  @JsonValue('in-review')
  in_review,

  /// Display: Temporarily Closed to Accrual
  /// Definition: Study is temporarily closed for accrual; can be potentially resumed in the future; patients can be examined and treated.
  @JsonValue('temporarily-closed-to-accrual')
  temporarily_closed_to_accrual,

  /// Display: Temporarily Closed to Accrual and Intervention
  /// Definition: Study is temporarily closed for accrual and intervention and potentially can be resumed in the future.
  @JsonValue('temporarily-closed-to-accrual-and-intervention')
  temporarily_closed_to_accrual_and_intervention,

  /// Display: Withdrawn
  /// Definition: Protocol was withdrawn by the lead organization.
  @JsonValue('withdrawn')
  withdrawn,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case administratively_completed:
        return 'administratively-completed';
      case approved:
        return 'approved';
      case closed_to_accrual:
        return 'closed-to-accrual';
      case closed_to_accrual_and_intervention:
        return 'closed-to-accrual-and-intervention';
      case completed:
        return 'completed';
      case disapproved:
        return 'disapproved';
      case in_review:
        return 'in-review';
      case temporarily_closed_to_accrual:
        return 'temporarily-closed-to-accrual';
      case temporarily_closed_to_accrual_and_intervention:
        return 'temporarily-closed-to-accrual-and-intervention';
      case withdrawn:
        return 'withdrawn';
    }
  }

  String toJson() => toString();
  ResearchStudyStatus fromString(String str) {
    switch (str) {
      case 'active':
        return ResearchStudyStatus.active;
      case 'administratively-completed':
        return ResearchStudyStatus.administratively_completed;
      case 'approved':
        return ResearchStudyStatus.approved;
      case 'closed-to-accrual':
        return ResearchStudyStatus.closed_to_accrual;
      case 'closed-to-accrual-and-intervention':
        return ResearchStudyStatus.closed_to_accrual_and_intervention;
      case 'completed':
        return ResearchStudyStatus.completed;
      case 'disapproved':
        return ResearchStudyStatus.disapproved;
      case 'in-review':
        return ResearchStudyStatus.in_review;
      case 'temporarily-closed-to-accrual':
        return ResearchStudyStatus.temporarily_closed_to_accrual;
      case 'temporarily-closed-to-accrual-and-intervention':
        return ResearchStudyStatus
            .temporarily_closed_to_accrual_and_intervention;
      case 'withdrawn':
        return ResearchStudyStatus.withdrawn;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ResearchStudyStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
