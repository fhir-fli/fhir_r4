// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The current status of the task.
class TaskStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TaskStatus._({
    required super.validatedValue,
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
  factory TaskStatus(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return TaskStatus._(
      validatedValue: validated,
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

  /// Create empty [TaskStatus] with element only
  factory TaskStatus.empty() => TaskStatus._(validatedValue: '');

  /// Factory constructor to create [TaskStatus] from JSON.
  factory TaskStatus.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// draft
  static final TaskStatus draft = TaskStatus._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// requested
  static final TaskStatus requested = TaskStatus._(
    validatedValue: 'requested',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Requested'.toFhirString,
  );

  /// received
  static final TaskStatus received = TaskStatus._(
    validatedValue: 'received',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Received'.toFhirString,
  );

  /// accepted
  static final TaskStatus accepted = TaskStatus._(
    validatedValue: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// rejected
  static final TaskStatus rejected = TaskStatus._(
    validatedValue: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// ready
  static final TaskStatus ready = TaskStatus._(
    validatedValue: 'ready',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ready'.toFhirString,
  );

  /// cancelled
  static final TaskStatus cancelled = TaskStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// in_progress
  static final TaskStatus in_progress = TaskStatus._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// on_hold
  static final TaskStatus on_hold = TaskStatus._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// failed
  static final TaskStatus failed = TaskStatus._(
    validatedValue: 'failed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Failed'.toFhirString,
  );

  /// completed
  static final TaskStatus completed = TaskStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final TaskStatus entered_in_error = TaskStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TaskStatus elementOnly = TaskStatus._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TaskStatus withElement(Element? newElement) {
    return TaskStatus._(
      validatedValue: value,
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
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
