/// Preferred value set for Condition Clinical Status.
enum ConditionClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
  active,

  /// Display: Recurrence
  /// Definition: The subject is experiencing a re-occurence or repeating of a previously resolved condition, e.g. urinary tract infection, pancreatitis, cholangitis, conjunctivitis.
  recurrence,

  /// Display: Relapse
  /// Definition: The subject is experiencing a return of a condition, or signs and symptoms after a period of improvement or remission, e.g. relapse of cancer, multiple sclerosis, rheumatoid arthritis, systemic lupus erythematosus, bipolar disorder, [psychotic relapse of] schizophrenia, etc.
  relapse,

  /// Display: Inactive
  /// Definition: The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the condition.
  inactive,

  /// Display: Remission
  /// Definition: The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms returning.
  remission,

  /// Display: Resolved
  /// Definition: The subject is no longer experiencing the symptoms of the condition and there is a negligible perceived risk of the symptoms returning.
  resolved,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case recurrence:
        return 'recurrence';
      case relapse:
        return 'relapse';
      case inactive:
        return 'inactive';
      case remission:
        return 'remission';
      case resolved:
        return 'resolved';
    }
  }

  String toJson() => toString();
  static ConditionClinicalStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return ConditionClinicalStatusCodes.active;
      case 'recurrence':
        return ConditionClinicalStatusCodes.recurrence;
      case 'relapse':
        return ConditionClinicalStatusCodes.relapse;
      case 'inactive':
        return ConditionClinicalStatusCodes.inactive;
      case 'remission':
        return ConditionClinicalStatusCodes.remission;
      case 'resolved':
        return ConditionClinicalStatusCodes.resolved;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConditionClinicalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
