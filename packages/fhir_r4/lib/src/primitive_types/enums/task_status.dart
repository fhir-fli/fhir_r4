// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TaskStatus
enum TaskStatusEnum {
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
      case TaskStatusEnum.draft:
        return 'draft';
      case TaskStatusEnum.requested:
        return 'requested';
      case TaskStatusEnum.received:
        return 'received';
      case TaskStatusEnum.accepted:
        return 'accepted';
      case TaskStatusEnum.rejected:
        return 'rejected';
      case TaskStatusEnum.ready:
        return 'ready';
      case TaskStatusEnum.cancelled:
        return 'cancelled';
      case TaskStatusEnum.inProgress:
        return 'in-progress';
      case TaskStatusEnum.onHold:
        return 'on-hold';
      case TaskStatusEnum.failed:
        return 'failed';
      case TaskStatusEnum.completed:
        return 'completed';
      case TaskStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TaskStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TaskStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TaskStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return TaskStatusEnum.draft;
      case 'requested':
        return TaskStatusEnum.requested;
      case 'received':
        return TaskStatusEnum.received;
      case 'accepted':
        return TaskStatusEnum.accepted;
      case 'rejected':
        return TaskStatusEnum.rejected;
      case 'ready':
        return TaskStatusEnum.ready;
      case 'cancelled':
        return TaskStatusEnum.cancelled;
      case 'in-progress':
        return TaskStatusEnum.inProgress;
      case 'on-hold':
        return TaskStatusEnum.onHold;
      case 'failed':
        return TaskStatusEnum.failed;
      case 'completed':
        return TaskStatusEnum.completed;
      case 'entered-in-error':
        return TaskStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The current status of the task.
class TaskStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TaskStatus._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory TaskStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = TaskStatusEnum.fromString(valueString);
    return TaskStatus._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [TaskStatus]
  /// from JSON.
  factory TaskStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TaskStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskStatus cannot be constructed from JSON.',
      );
    }
    return TaskStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TaskStatus
  final TaskStatusEnum? valueEnum;

  /// draft
  static const TaskStatus draft = TaskStatus._(
    valueString: 'draft',
    valueEnum: TaskStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// requested
  static const TaskStatus requested = TaskStatus._(
    valueString: 'requested',
    valueEnum: TaskStatusEnum.requested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Requested',
    ),
  );

  /// received
  static const TaskStatus received = TaskStatus._(
    valueString: 'received',
    valueEnum: TaskStatusEnum.received,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Received',
    ),
  );

  /// accepted
  static const TaskStatus accepted = TaskStatus._(
    valueString: 'accepted',
    valueEnum: TaskStatusEnum.accepted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Accepted',
    ),
  );

  /// rejected
  static const TaskStatus rejected = TaskStatus._(
    valueString: 'rejected',
    valueEnum: TaskStatusEnum.rejected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Rejected',
    ),
  );

  /// ready
  static const TaskStatus ready = TaskStatus._(
    valueString: 'ready',
    valueEnum: TaskStatusEnum.ready,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ready',
    ),
  );

  /// cancelled
  static const TaskStatus cancelled = TaskStatus._(
    valueString: 'cancelled',
    valueEnum: TaskStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// in_progress
  static const TaskStatus inProgress = TaskStatus._(
    valueString: 'in-progress',
    valueEnum: TaskStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// on_hold
  static const TaskStatus onHold = TaskStatus._(
    valueString: 'on-hold',
    valueEnum: TaskStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// failed
  static const TaskStatus failed = TaskStatus._(
    valueString: 'failed',
    valueEnum: TaskStatusEnum.failed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Failed',
    ),
  );

  /// completed
  static const TaskStatus completed = TaskStatus._(
    valueString: 'completed',
    valueEnum: TaskStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const TaskStatus enteredInError = TaskStatus._(
    valueString: 'entered-in-error',
    valueEnum: TaskStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<TaskStatus> values = [
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
  TaskStatus withElement(Element? newElement) {
    return TaskStatus._(
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

  @override
  TaskStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TaskStatusCopyWithImpl<TaskStatus> get copyWith =>
      TaskStatusCopyWithImpl<TaskStatus>(
        this,
        (v) => v as TaskStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TaskStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TaskStatusCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      TaskStatus(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
