import 'package:json_annotation/json_annotation.dart';

/// Types of resources that are part of group.
enum GroupType {
  /// Display: Person
  /// Definition: Group contains "person" Patient resources.
  @JsonValue('person')
  person,

  /// Display: Animal
  /// Definition: Group contains "animal" Patient resources.
  @JsonValue('animal')
  animal,

  /// Display: Practitioner
  /// Definition: Group contains healthcare practitioner resources (Practitioner or PractitionerRole).
  @JsonValue('practitioner')
  practitioner,

  /// Display: Device
  /// Definition: Group contains Device resources.
  @JsonValue('device')
  device,

  /// Display: Medication
  /// Definition: Group contains Medication resources.
  @JsonValue('medication')
  medication,

  /// Display: Substance
  /// Definition: Group contains Substance resources.
  @JsonValue('substance')
  substance,
  ;

  @override
  String toString() {
    switch (this) {
      case person:
        return 'person';
      case animal:
        return 'animal';
      case practitioner:
        return 'practitioner';
      case device:
        return 'device';
      case medication:
        return 'medication';
      case substance:
        return 'substance';
    }
  }

  String toJson() => toString();
  static GroupType fromString(String str) {
    switch (str) {
      case 'person':
        return GroupType.person;
      case 'animal':
        return GroupType.animal;
      case 'practitioner':
        return GroupType.practitioner;
      case 'device':
        return GroupType.device;
      case 'medication':
        return GroupType.medication;
      case 'substance':
        return GroupType.substance;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GroupType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
