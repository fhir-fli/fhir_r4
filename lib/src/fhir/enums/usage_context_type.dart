// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code that specifies a type of context being specified by a usage context.
@Entity()
class UsageContextType extends FhirCode {
  /// Factory constructor to create [UsageContextType] from JSON.
  factory UsageContextType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UsageContextType.elementOnly(element);
    }
    if (values.contains(value)) {
      return UsageContextType._(value, element);
    }
    throw ArgumentError(
      'UsageContextType.fromJson: JSON value is not a valid value',
    );
  }

  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.gender([this.element])
      : dbValue = 'gender',
        super('gender', element);

  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.age([this.element])
      : dbValue = 'age',
        super('age', element);

  /// focus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.focus([this.element])
      : dbValue = 'focus',
        super('focus', element);

  /// user
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.user([this.element])
      : dbValue = 'user',
        super('user', element);

  /// workflow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.workflow([this.element])
      : dbValue = 'workflow',
        super('workflow', element);

  /// task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.task([this.element])
      : dbValue = 'task',
        super('task', element);

  /// venue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.venue([this.element])
      : dbValue = 'venue',
        super('venue', element);

  /// species
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.species([this.element])
      : dbValue = 'species',
        super('species', element);

  /// program
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UsageContextType.program([this.element])
      : dbValue = 'program',
        super('program', element);

  /// For instances where an Element is present but not value

  UsageContextType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  UsageContextType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'gender',
    'age',
    'focus',
    'user',
    'workflow',
    'task',
    'venue',
    'species',
    'program',
  ];

  /// Returns the enum value with an element attached
  UsageContextType withElement(Element? newElement) {
    return UsageContextType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UsageContextType.$value';
}
