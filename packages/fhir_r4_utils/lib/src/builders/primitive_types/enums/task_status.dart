// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The current status of the task.
class TaskStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TaskStatusBuilder._({
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
  factory TaskStatusBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return TaskStatusBuilder._(
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

  /// Create empty [TaskStatusBuilder] with element only
  factory TaskStatusBuilder.empty() => TaskStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [TaskStatusBuilder] from JSON.
  factory TaskStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskStatusBuilder cannot be constructed from JSON.',
      );
    }
    return TaskStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// draft
  static TaskStatusBuilder draft = TaskStatusBuilder._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Draft'.toFhirStringBuilder,
  );

  /// requested
  static TaskStatusBuilder requested = TaskStatusBuilder._(
    validatedValue: 'requested',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Requested'.toFhirStringBuilder,
  );

  /// received
  static TaskStatusBuilder received = TaskStatusBuilder._(
    validatedValue: 'received',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Received'.toFhirStringBuilder,
  );

  /// accepted
  static TaskStatusBuilder accepted = TaskStatusBuilder._(
    validatedValue: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Accepted'.toFhirStringBuilder,
  );

  /// rejected
  static TaskStatusBuilder rejected = TaskStatusBuilder._(
    validatedValue: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rejected'.toFhirStringBuilder,
  );

  /// ready
  static TaskStatusBuilder ready = TaskStatusBuilder._(
    validatedValue: 'ready',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ready'.toFhirStringBuilder,
  );

  /// cancelled
  static TaskStatusBuilder cancelled = TaskStatusBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// in_progress
  static TaskStatusBuilder in_progress = TaskStatusBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// on_hold
  static TaskStatusBuilder on_hold = TaskStatusBuilder._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// failed
  static TaskStatusBuilder failed = TaskStatusBuilder._(
    validatedValue: 'failed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Failed'.toFhirStringBuilder,
  );

  /// completed
  static TaskStatusBuilder completed = TaskStatusBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static TaskStatusBuilder entered_in_error = TaskStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/task-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TaskStatusBuilder elementOnly =
      TaskStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<TaskStatusBuilder> values = [
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
  TaskStatusBuilder clone() => TaskStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TaskStatusBuilder withElement(ElementBuilder? newElement) {
    return TaskStatusBuilder._(validatedValue: value, element: newElement);
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
  TaskStatusBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return TaskStatusBuilder._(
      validatedValue: newValue ?? value,
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
