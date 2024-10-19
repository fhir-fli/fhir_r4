// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The current status of the task.
@collection
class TaskStatus {
  /// Constructor for internal use (like enum)
  TaskStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TaskStatus values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus draft = TaskStatus(
    fhirCode: 'draft',
  );

  /// requested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus requested = TaskStatus(
    fhirCode: 'requested',
  );

  /// received
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus received = TaskStatus(
    fhirCode: 'received',
  );

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus accepted = TaskStatus(
    fhirCode: 'accepted',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus rejected = TaskStatus(
    fhirCode: 'rejected',
  );

  /// ready
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus ready = TaskStatus(
    fhirCode: 'ready',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus cancelled = TaskStatus(
    fhirCode: 'cancelled',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus in_progress = TaskStatus(
    fhirCode: 'in-progress',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus on_hold = TaskStatus(
    fhirCode: 'on-hold',
  );

  /// failed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus failed = TaskStatus(
    fhirCode: 'failed',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus completed = TaskStatus(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskStatus entered_in_error = TaskStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final TaskStatus elementOnly = TaskStatus();

  /// List of all enum-like values
  static final List<TaskStatus> values = [
    draft,
    requested,
    received,
    accepted,
    rejected,
    ready,
    cancelled,
    in_progress,
    on_hold,
    failed,
    completed,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  TaskStatus withElement(Element? newElement) {
    return TaskStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TaskStatus] from JSON.
  static TaskStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly.withElement(element);
    }
    return TaskStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskStatus.$fhirCode';
}
