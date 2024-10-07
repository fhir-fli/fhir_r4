import 'package:json_annotation/json_annotation.dart';

/// The type of actor - system or human.
enum ExampleScenarioActorType {
  /// Display: Person
  /// Definition: A person.
  @JsonValue('person')
  person,
  /// Display: System
  /// Definition: A system.
  @JsonValue('entity')
  entity,
;

@override
  String toString() {
      switch(this) {
        case person: return 'person';
        case entity: return 'entity';
      }
      }
String toJson() => toString();
  ExampleScenarioActorType fromString(String str) {
    switch(str) {
      case 'person': return ExampleScenarioActorType.person;
      case 'entity': return ExampleScenarioActorType.entity;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleScenarioActorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

