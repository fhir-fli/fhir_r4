// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
class TaskIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TaskIntent._({
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
  factory TaskIntent(
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
    return TaskIntent._(
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

  /// Create empty [TaskIntent] with element only
  factory TaskIntent.empty() => TaskIntent._(validatedValue: '');

  /// Factory constructor to create [TaskIntent] from JSON.
  factory TaskIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskIntent cannot be constructed from JSON.',
      );
    }
    return TaskIntent._(
      validatedValue: value,
      element: element,
    );
  }

  /// unknown
  static final TaskIntent unknown = TaskIntent._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// proposal
  static final TaskIntent proposal = TaskIntent._(
    validatedValue: 'proposal',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposal'.toFhirString,
  );

  /// plan
  static final TaskIntent plan = TaskIntent._(
    validatedValue: 'plan',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Plan'.toFhirString,
  );

  /// directive
  static final TaskIntent directive = TaskIntent._(
    validatedValue: 'directive',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Directive'.toFhirString,
  );

  /// order
  static final TaskIntent order = TaskIntent._(
    validatedValue: 'order',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Order'.toFhirString,
  );

  /// original_order
  static final TaskIntent original_order = TaskIntent._(
    validatedValue: 'original-order',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Original Order'.toFhirString,
  );

  /// reflex_order
  static final TaskIntent reflex_order = TaskIntent._(
    validatedValue: 'reflex-order',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reflex Order'.toFhirString,
  );

  /// filler_order
  static final TaskIntent filler_order = TaskIntent._(
    validatedValue: 'filler-order',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Filler Order'.toFhirString,
  );

  /// instance_order
  static final TaskIntent instance_order = TaskIntent._(
    validatedValue: 'instance-order',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance Order'.toFhirString,
  );

  /// option
  static final TaskIntent option = TaskIntent._(
    validatedValue: 'option',
    system: 'http://hl7.org/fhir/ValueSet/task-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Option'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TaskIntent elementOnly = TaskIntent._(validatedValue: '');

  /// List of all enum-like values
  static final List<TaskIntent> values = [
    unknown,
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  TaskIntent clone() => TaskIntent._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TaskIntent withElement(Element? newElement) {
    return TaskIntent._(validatedValue: value, element: newElement);
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
  TaskIntent copyWith({
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
    return TaskIntent._(
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
