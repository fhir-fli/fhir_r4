/// This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a patients visit.
enum SpecialArrangements {
  /// Display: Wheelchair
  /// Definition: The patient requires a wheelchair to be made available for the encounter.
  wheel,

  /// Display: Additional bedding
  /// Definition: An additional bed made available for a person accompanying the patient, for example a parent accompanying a child.
  add_bed,

  /// Display: Interpreter
  /// Definition: The patient is not fluent in the local language and requires an interpreter to be available. Refer to the Patient.Language property for the type of interpreter required.
  int,

  /// Display: Attendant
  /// Definition: A person who accompanies a patient to provide assistive services necessary for the patient's care during the encounter.
  att,

  /// Display: Guide dog
  /// Definition: The patient has a guide dog and the location used for the encounter should be able to support the presence of the service animal.
  dog,
  ;

  @override
  String toString() {
    switch (this) {
      case wheel:
        return 'wheel';
      case add_bed:
        return 'add-bed';
      case int:
        return 'int';
      case att:
        return 'att';
      case dog:
        return 'dog';
    }
  }

  /// Returns a [String] from a [SpecialArrangements] enum.
  String toJson() => toString();

  /// Returns a [SpecialArrangements] from a [String] enum.
  static SpecialArrangements fromString(String str) {
    switch (str) {
      case 'wheel':
        return SpecialArrangements.wheel;
      case 'add-bed':
        return SpecialArrangements.add_bed;
      case 'int':
        return SpecialArrangements.int;
      case 'att':
        return SpecialArrangements.att;
      case 'dog':
        return SpecialArrangements.dog;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SpecialArrangements] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SpecialArrangements fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
