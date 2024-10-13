/// Codes for why the study ended prematurely.
enum ResearchStudyReasonStopped {
  /// Display: Accrual Goal Met
  /// Definition: The study prematurely ended because the accrual goal was met.
  accrual_goal_met,

  /// Display: Closed due to toxicity
  /// Definition: The study prematurely ended due to toxicity.
  closed_due_to_toxicity,

  /// Display: Closed due to lack of study progress
  /// Definition: The study prematurely ended due to lack of study progress.
  closed_due_to_lack_of_study_progress,

  /// Display: Temporarily closed per study design
  /// Definition: The study prematurely ended temporarily per study design.
  temporarily_closed_per_study_design,
  ;

  @override
  String toString() {
    switch (this) {
      case accrual_goal_met:
        return 'accrual-goal-met';
      case closed_due_to_toxicity:
        return 'closed-due-to-toxicity';
      case closed_due_to_lack_of_study_progress:
        return 'closed-due-to-lack-of-study-progress';
      case temporarily_closed_per_study_design:
        return 'temporarily-closed-per-study-design';
    }
  }

  /// Returns a [String] from a [ResearchStudyReasonStopped] enum.
  String toJson() => toString();

  /// Returns a [ResearchStudyReasonStopped] from a [String] enum.
  static ResearchStudyReasonStopped fromString(String str) {
    switch (str) {
      case 'accrual-goal-met':
        return ResearchStudyReasonStopped.accrual_goal_met;
      case 'closed-due-to-toxicity':
        return ResearchStudyReasonStopped.closed_due_to_toxicity;
      case 'closed-due-to-lack-of-study-progress':
        return ResearchStudyReasonStopped.closed_due_to_lack_of_study_progress;
      case 'temporarily-closed-per-study-design':
        return ResearchStudyReasonStopped.temporarily_closed_per_study_design;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ResearchStudyReasonStopped] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ResearchStudyReasonStopped fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
