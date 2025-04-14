// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TaskStatus
enum TaskStatusBuilderEnum {
  /// draft
  draft,

  /// requested
  requested,

  /// received
  received,

  /// accepted
  accepted,

  /// rejected
  rejected,

  /// ready
  ready,

  /// cancelled
  cancelled,

  /// in-progress
  inProgress,

  /// on-hold
  onHold,

  /// failed
  failed,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TaskStatusBuilderEnum.draft:
        return 'draft';
      case TaskStatusBuilderEnum.requested:
        return 'requested';
      case TaskStatusBuilderEnum.received:
        return 'received';
      case TaskStatusBuilderEnum.accepted:
        return 'accepted';
      case TaskStatusBuilderEnum.rejected:
        return 'rejected';
      case TaskStatusBuilderEnum.ready:
        return 'ready';
      case TaskStatusBuilderEnum.cancelled:
        return 'cancelled';
      case TaskStatusBuilderEnum.inProgress:
        return 'in-progress';
      case TaskStatusBuilderEnum.onHold:
        return 'on-hold';
      case TaskStatusBuilderEnum.failed:
        return 'failed';
      case TaskStatusBuilderEnum.completed:
        return 'completed';
      case TaskStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TaskStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TaskStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TaskStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return TaskStatusBuilderEnum.draft;
      case 'requested':
        return TaskStatusBuilderEnum.requested;
      case 'received':
        return TaskStatusBuilderEnum.received;
      case 'accepted':
        return TaskStatusBuilderEnum.accepted;
      case 'rejected':
        return TaskStatusBuilderEnum.rejected;
      case 'ready':
        return TaskStatusBuilderEnum.ready;
      case 'cancelled':
        return TaskStatusBuilderEnum.cancelled;
      case 'in-progress':
        return TaskStatusBuilderEnum.inProgress;
      case 'on-hold':
        return TaskStatusBuilderEnum.onHold;
      case 'failed':
        return TaskStatusBuilderEnum.failed;
      case 'completed':
        return TaskStatusBuilderEnum.completed;
      case 'entered-in-error':
        return TaskStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The current status of the task.
class TaskStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TaskStatusBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory TaskStatusBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = TaskStatusBuilderEnum.fromString(
      valueString,
    );
    return TaskStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [TaskStatusBuilder]
  /// with element only
  factory TaskStatusBuilder.empty() => TaskStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TaskStatusBuilder] from JSON.
  factory TaskStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskStatusBuilder cannot be constructed from JSON.',
      );
    }
    return TaskStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TaskStatusBuilder
  final TaskStatusBuilderEnum? valueEnum;

  /// draft
  static TaskStatusBuilder draft = TaskStatusBuilder._(
    valueString: 'draft',
    valueEnum: TaskStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// requested
  static TaskStatusBuilder requested = TaskStatusBuilder._(
    valueString: 'requested',
    valueEnum: TaskStatusBuilderEnum.requested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Requested',
    ),
  );

  /// received
  static TaskStatusBuilder received = TaskStatusBuilder._(
    valueString: 'received',
    valueEnum: TaskStatusBuilderEnum.received,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Received',
    ),
  );

  /// accepted
  static TaskStatusBuilder accepted = TaskStatusBuilder._(
    valueString: 'accepted',
    valueEnum: TaskStatusBuilderEnum.accepted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Accepted',
    ),
  );

  /// rejected
  static TaskStatusBuilder rejected = TaskStatusBuilder._(
    valueString: 'rejected',
    valueEnum: TaskStatusBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// ready
  static TaskStatusBuilder ready = TaskStatusBuilder._(
    valueString: 'ready',
    valueEnum: TaskStatusBuilderEnum.ready,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ready',
    ),
  );

  /// cancelled
  static TaskStatusBuilder cancelled = TaskStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: TaskStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// in_progress
  static TaskStatusBuilder inProgress = TaskStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: TaskStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// on_hold
  static TaskStatusBuilder onHold = TaskStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: TaskStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// failed
  static TaskStatusBuilder failed = TaskStatusBuilder._(
    valueString: 'failed',
    valueEnum: TaskStatusBuilderEnum.failed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Failed',
    ),
  );

  /// completed
  static TaskStatusBuilder completed = TaskStatusBuilder._(
    valueString: 'completed',
    valueEnum: TaskStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static TaskStatusBuilder enteredInError = TaskStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: TaskStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static TaskStatusBuilder elementOnly = TaskStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TaskStatusBuilder> values = [
    draft,
    requested,
    received,
    accepted,
    rejected,
    ready,
    cancelled,
    inProgress,
    onHold,
    failed,
    completed,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  TaskStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TaskStatusBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
