/// Example use codes for the List resource - typical kinds of use.
enum ExampleUseCodesForList {
  /// Display: Alerts
  /// Definition: A list of alerts for the patient.
  alerts,

  /// Display: Adverse Reactions
  /// Definition: A list of part adverse reactions.
  adverserxns,

  /// Display: Allergies
  /// Definition: A list of Allergies for the patient.
  allergies,

  /// Display: Medication List
  /// Definition: A list of medication statements for the patient.
  medications,

  /// Display: Problem List
  /// Definition: A list of problems that the patient is known of have (or have had in the past).
  problems,

  /// Display: Worklist
  /// Definition: A list of items that constitute a set of work to be performed (typically this code would be specialized for more specific uses, such as a ward round list).
  worklist,

  /// Display: Waiting List
  /// Definition: A list of items waiting for an event (perhaps a surgical patient waiting list).
  waiting,

  /// Display: Protocols
  /// Definition: A set of protocols to be followed.
  protocols,

  /// Display: Care Plans
  /// Definition: A set of care plans that apply in a particular context of care.
  plans,
  ;

  @override
  String toString() {
    switch (this) {
      case alerts:
        return 'alerts';
      case adverserxns:
        return 'adverserxns';
      case allergies:
        return 'allergies';
      case medications:
        return 'medications';
      case problems:
        return 'problems';
      case worklist:
        return 'worklist';
      case waiting:
        return 'waiting';
      case protocols:
        return 'protocols';
      case plans:
        return 'plans';
    }
  }

  String toJson() => toString();
  static ExampleUseCodesForList fromString(String str) {
    switch (str) {
      case 'alerts':
        return ExampleUseCodesForList.alerts;
      case 'adverserxns':
        return ExampleUseCodesForList.adverserxns;
      case 'allergies':
        return ExampleUseCodesForList.allergies;
      case 'medications':
        return ExampleUseCodesForList.medications;
      case 'problems':
        return ExampleUseCodesForList.problems;
      case 'worklist':
        return ExampleUseCodesForList.worklist;
      case 'waiting':
        return ExampleUseCodesForList.waiting;
      case 'protocols':
        return ExampleUseCodesForList.protocols;
      case 'plans':
        return ExampleUseCodesForList.plans;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExampleUseCodesForList fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
