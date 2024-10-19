// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The current status of the task.
@Entity()
class TaskStatus extends FhirCode {
  /// Factory constructor to create [TaskStatus] from JSON.
  factory TaskStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return TaskStatus._(value, element);
    }
    throw ArgumentError(
      'TaskStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.draft([this.element])
      : dbValue = 'draft',
        super('draft', element);

  /// requested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.requested([this.element])
      : dbValue = 'requested',
        super('requested', element);

  /// received
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.received([this.element])
      : dbValue = 'received',
        super('received', element);

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.accepted([this.element])
      : dbValue = 'accepted',
        super('accepted', element);

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.rejected([this.element])
      : dbValue = 'rejected',
        super('rejected', element);

  /// ready
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.ready([this.element])
      : dbValue = 'ready',
        super('ready', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// failed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.failed([this.element])
      : dbValue = 'failed',
        super('failed', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  TaskStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TaskStatus._(super.input, [super.element])
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
    'draft',
    'requested',
    'received',
    'accepted',
    'rejected',
    'ready',
    'cancelled',
    'in-progress',
    'on-hold',
    'failed',
    'completed',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  TaskStatus withElement(Element? newElement) {
    return TaskStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskStatus.$value';
}
