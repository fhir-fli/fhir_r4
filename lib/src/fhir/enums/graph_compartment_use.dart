/// Defines how a compartment rule is used.
enum GraphCompartmentUse {
  /// Display: Condition
  /// Definition: This compartment rule is a condition for whether the rule applies.
  condition,

  /// Display: Requirement
  /// Definition: This compartment rule is enforced on any relationships that meet the conditions.
  requirement,
  ;

  @override
  String toString() {
    switch (this) {
      case condition:
        return 'condition';
      case requirement:
        return 'requirement';
    }
  }

  String toJson() => toString();
  static GraphCompartmentUse fromString(String str) {
    switch (str) {
      case 'condition':
        return GraphCompartmentUse.condition;
      case 'requirement':
        return GraphCompartmentUse.requirement;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GraphCompartmentUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
