/// Lifecycle status of the questionnaire response.
enum QuestionnaireResponseStatus {
  /// Display: In Progress
  /// Definition: This QuestionnaireResponse has been partially filled out with answers but changes or additions are still expected to be made to it.
  in_progress,

  /// Display: Completed
  /// Definition: This QuestionnaireResponse has been filled out with answers and the current content is regarded as definitive.
  completed,

  /// Display: Amended
  /// Definition: This QuestionnaireResponse has been filled out with answers, then marked as complete, yet changes or additions have been made to it afterwards.
  amended,

  /// Display: Entered in Error
  /// Definition: This QuestionnaireResponse was entered in error and voided.
  entered_in_error,

  /// Display: Stopped
  /// Definition: This QuestionnaireResponse has been partially filled out with answers but has been abandoned. It is unknown whether changes or additions are expected to be made to it.
  stopped,
  ;

  @override
  String toString() {
    switch (this) {
      case in_progress:
        return 'in-progress';
      case completed:
        return 'completed';
      case amended:
        return 'amended';
      case entered_in_error:
        return 'entered-in-error';
      case stopped:
        return 'stopped';
    }
  }

  String toJson() => toString();
  static QuestionnaireResponseStatus fromString(String str) {
    switch (str) {
      case 'in-progress':
        return QuestionnaireResponseStatus.in_progress;
      case 'completed':
        return QuestionnaireResponseStatus.completed;
      case 'amended':
        return QuestionnaireResponseStatus.amended;
      case 'entered-in-error':
        return QuestionnaireResponseStatus.entered_in_error;
      case 'stopped':
        return QuestionnaireResponseStatus.stopped;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static QuestionnaireResponseStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
