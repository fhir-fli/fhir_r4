// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of actor - system or human.
@Entity()
class ExampleScenarioActorType extends FhirCode {
  /// Factory constructor to create [ExampleScenarioActorType] from JSON.
  factory ExampleScenarioActorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleScenarioActorType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleScenarioActorType._(value, element);
    }
    throw ArgumentError(
      'ExampleScenarioActorType.fromJson: JSON value is not a valid value',
    );
  }

  /// person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleScenarioActorType.person([this.element])
      : dbValue = 'person',
        super('person', element);

  /// entity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleScenarioActorType.entity([this.element])
      : dbValue = 'entity',
        super('entity', element);

  /// For instances where an Element is present but not value

  ExampleScenarioActorType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleScenarioActorType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'person',
    'entity',
  ];

  /// Returns the enum value with an element attached
  ExampleScenarioActorType withElement(Element? newElement) {
    return ExampleScenarioActorType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleScenarioActorType.$value';
}
