/// Identifies types of events that might trigger the start of a goal.
enum GoalStartEvent {
  /// Display: Admission to hospital
  value32485007,

  /// Display: Discharge from hospital
  value308283009,

  /// Display: Completion time of procedure
  value442137000,

  /// Display: Childbirth
  value386216000,
  ;

  @override
  String toString() {
    switch (this) {
      case value32485007:
        return '32485007';
      case value308283009:
        return '308283009';
      case value442137000:
        return '442137000';
      case value386216000:
        return '386216000';
    }
  }

  /// Returns a [String] from a [GoalStartEvent] enum.
  String toJson() => toString();

  /// Returns a [GoalStartEvent] from a [String] enum.
  static GoalStartEvent fromString(String str) {
    switch (str) {
      case '32485007':
        return GoalStartEvent.value32485007;
      case '308283009':
        return GoalStartEvent.value308283009;
      case '442137000':
        return GoalStartEvent.value442137000;
      case '386216000':
        return GoalStartEvent.value386216000;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [GoalStartEvent] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static GoalStartEvent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
