// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the task.
class TaskStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TaskStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [TaskStatus] with element only
  factory TaskStatus.empty() => TaskStatus._('');

  /// Factory constructor to create [TaskStatus] from JSON.
  factory TaskStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskStatus cannot be constructed from JSON.',
      );
    }
    return TaskStatus._(
      value,
      element: element,
    );
  }

  /// draft
  static final TaskStatus draft = TaskStatus._(
    'draft',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// requested
  static final TaskStatus requested = TaskStatus._(
    'requested',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Requested'.toFhirString,
  );

  /// received
  static final TaskStatus received = TaskStatus._(
    'received',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Received'.toFhirString,
  );

  /// accepted
  static final TaskStatus accepted = TaskStatus._(
    'accepted',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// rejected
  static final TaskStatus rejected = TaskStatus._(
    'rejected',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// ready
  static final TaskStatus ready = TaskStatus._(
    'ready',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ready'.toFhirString,
  );

  /// cancelled
  static final TaskStatus cancelled = TaskStatus._(
    'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// in_progress
  static final TaskStatus in_progress = TaskStatus._(
    'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// on_hold
  static final TaskStatus on_hold = TaskStatus._(
    'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// failed
  static final TaskStatus failed = TaskStatus._(
    'failed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Failed'.toFhirString,
  );

  /// completed
  static final TaskStatus completed = TaskStatus._(
    'completed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final TaskStatus entered_in_error = TaskStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
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

  /// Clones the current instance
  @override
  TaskStatus clone() => TaskStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TaskStatus withElement(Element? newElement) {
    return TaskStatus._(
      value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TaskStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TaskStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
