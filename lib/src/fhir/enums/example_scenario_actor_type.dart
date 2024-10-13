/// The type of actor - system or human.
enum ExampleScenarioActorType {
  /// Display: Person
  /// Definition: A person.
  person,

  /// Display: System
  /// Definition: A system.
  entity,
  ;

  @override
  String toString() {
    switch (this) {
      case person:
        return 'person';
      case entity:
        return 'entity';
    }
  }

  /// Returns a [String] from a [ExampleScenarioActorType] enum.
  String toJson() => toString();

  /// Returns a [ExampleScenarioActorType] from a [String] enum.
  static ExampleScenarioActorType fromString(String str) {
    switch (str) {
      case 'person':
        return ExampleScenarioActorType.person;
      case 'entity':
        return ExampleScenarioActorType.entity;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleScenarioActorType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleScenarioActorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
