// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of action to be performed.
@Entity()
class ActionType extends FhirCode {
  /// Factory constructor to create [ActionType] from JSON.
  factory ActionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionType._(value, element);
    }
    throw ArgumentError(
      'ActionType.fromJson: JSON value is not a valid value',
    );
  }

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionType.create([this.element])
      : dbValue = 'create',
        super('create', element);

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionType.update([this.element])
      : dbValue = 'update',
        super('update', element);

  /// remove
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionType.remove([this.element])
      : dbValue = 'remove',
        super('remove', element);

  /// fire_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionType.fire_event([this.element])
      : dbValue = 'fire-event',
        super('fire-event', element);

  /// For instances where an Element is present but not value

  ActionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionType._(super.input, [super.element])
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
    'create',
    'update',
    'remove',
    'fire-event',
  ];

  /// Returns the enum value with an element attached
  ActionType withElement(Element? newElement) {
    return ActionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionType.$value';
}
