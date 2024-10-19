// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Types of resources that are part of group.
@Entity()
class GroupType extends FhirCode {
  /// Factory constructor to create [GroupType] from JSON.
  factory GroupType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly(element);
    }
    if (values.contains(value)) {
      return GroupType._(value, element);
    }
    throw ArgumentError(
      'GroupType.fromJson: JSON value is not a valid value',
    );
  }

  /// person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.person([this.element])
      : dbValue = 'person',
        super('person', element);

  /// animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.animal([this.element])
      : dbValue = 'animal',
        super('animal', element);

  /// practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.practitioner([this.element])
      : dbValue = 'practitioner',
        super('practitioner', element);

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.device([this.element])
      : dbValue = 'device',
        super('device', element);

  /// medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.medication([this.element])
      : dbValue = 'medication',
        super('medication', element);

  /// substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupType.substance([this.element])
      : dbValue = 'substance',
        super('substance', element);

  /// For instances where an Element is present but not value

  GroupType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GroupType._(super.input, [super.element])
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
    'animal',
    'practitioner',
    'device',
    'medication',
    'substance',
  ];

  /// Returns the enum value with an element attached
  GroupType withElement(Element? newElement) {
    return GroupType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GroupType.$value';
}
