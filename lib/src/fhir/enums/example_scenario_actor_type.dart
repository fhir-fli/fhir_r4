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

  String toJson() => toString();
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

  static ExampleScenarioActorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
