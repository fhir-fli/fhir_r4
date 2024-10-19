// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes identifying the lifecycle stage of an event.
@Entity()
class EventStatus extends FhirCode {
  /// Factory constructor to create [EventStatus] from JSON.
  factory EventStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return EventStatus._(value, element);
    }
    throw ArgumentError(
      'EventStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// preparation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.preparation([this.element])
      : dbValue = 'preparation',
        super('preparation', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.not_done([this.element])
      : dbValue = 'not-done',
        super('not-done', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  EventStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EventStatus._(super.input, [super.element])
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
    'preparation',
    'in-progress',
    'not-done',
    'on-hold',
    'stopped',
    'completed',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  EventStatus withElement(Element? newElement) {
    return EventStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EventStatus.$value';
}
