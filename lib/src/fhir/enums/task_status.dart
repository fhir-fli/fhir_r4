// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the task.
class TaskStatus {
  // Private constructor for internal use (like enum)
  TaskStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [TaskStatus] from JSON.
  factory TaskStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly.withElement(element);
    }
    return TaskStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TaskStatus values
  /// draft
  static final TaskStatus draft = TaskStatus._(
    'draft',
  );

  /// requested
  static final TaskStatus requested = TaskStatus._(
    'requested',
  );

  /// received
  static final TaskStatus received = TaskStatus._(
    'received',
  );

  /// accepted
  static final TaskStatus accepted = TaskStatus._(
    'accepted',
  );

  /// rejected
  static final TaskStatus rejected = TaskStatus._(
    'rejected',
  );

  /// ready
  static final TaskStatus ready = TaskStatus._(
    'ready',
  );

  /// cancelled
  static final TaskStatus cancelled = TaskStatus._(
    'cancelled',
  );

  /// in_progress
  static final TaskStatus in_progress = TaskStatus._(
    'in-progress',
  );

  /// on_hold
  static final TaskStatus on_hold = TaskStatus._(
    'on-hold',
  );

  /// failed
  static final TaskStatus failed = TaskStatus._(
    'failed',
  );

  /// completed
  static final TaskStatus completed = TaskStatus._(
    'completed',
  );

  /// entered_in_error
  static final TaskStatus entered_in_error = TaskStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final TaskStatus elementOnly = TaskStatus._('');

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
    return TaskStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
