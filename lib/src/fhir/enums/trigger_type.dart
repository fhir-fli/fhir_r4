// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of trigger.
@Entity()
class TriggerType extends FhirCode {
  /// Factory constructor to create [TriggerType] from JSON.
  factory TriggerType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TriggerType._(value, element);
    }
    throw ArgumentError(
      'TriggerType.fromJson: JSON value is not a valid value',
    );
  }

  /// named_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.named_event([this.element])
      : dbValue = 'named-event',
        super('named-event', element);

  /// periodic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.periodic([this.element])
      : dbValue = 'periodic',
        super('periodic', element);

  /// data_changed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_changed([this.element])
      : dbValue = 'data-changed',
        super('data-changed', element);

  /// data_added
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_added([this.element])
      : dbValue = 'data-added',
        super('data-added', element);

  /// data_modified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_modified([this.element])
      : dbValue = 'data-modified',
        super('data-modified', element);

  /// data_removed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_removed([this.element])
      : dbValue = 'data-removed',
        super('data-removed', element);

  /// data_accessed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_accessed([this.element])
      : dbValue = 'data-accessed',
        super('data-accessed', element);

  /// data_access_ended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TriggerType.data_access_ended([this.element])
      : dbValue = 'data-access-ended',
        super('data-access-ended', element);

  /// For instances where an Element is present but not value

  TriggerType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TriggerType._(super.input, [super.element])
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
    'named-event',
    'periodic',
    'data-changed',
    'data-added',
    'data-modified',
    'data-removed',
    'data-accessed',
    'data-access-ended',
  ];

  /// Returns the enum value with an element attached
  TriggerType withElement(Element? newElement) {
    return TriggerType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TriggerType.$value';
}
