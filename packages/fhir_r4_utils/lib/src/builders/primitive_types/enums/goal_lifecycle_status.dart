// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a goal and whether the goal is
/// still being targeted.
class GoalLifecycleStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GoalLifecycleStatusBuilder._({
    required super.valueString,
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
  factory GoalLifecycleStatusBuilder(
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
    return GoalLifecycleStatusBuilder._(
      valueString: valueString,
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

  /// Create empty [GoalLifecycleStatusBuilder] with element only
  factory GoalLifecycleStatusBuilder.empty() =>
      GoalLifecycleStatusBuilder._(valueString: '');

  /// Factory constructor to create [GoalLifecycleStatusBuilder]
  /// from JSON.
  factory GoalLifecycleStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalLifecycleStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GoalLifecycleStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// proposed
  static GoalLifecycleStatusBuilder proposed = GoalLifecycleStatusBuilder._(
    valueString: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Proposed'.toFhirStringBuilder,
  );

  /// planned
  static GoalLifecycleStatusBuilder planned = GoalLifecycleStatusBuilder._(
    valueString: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Planned'.toFhirStringBuilder,
  );

  /// accepted
  static GoalLifecycleStatusBuilder accepted = GoalLifecycleStatusBuilder._(
    valueString: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Accepted'.toFhirStringBuilder,
  );

  /// active
  static GoalLifecycleStatusBuilder active = GoalLifecycleStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// on_hold
  static GoalLifecycleStatusBuilder on_hold = GoalLifecycleStatusBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static GoalLifecycleStatusBuilder completed = GoalLifecycleStatusBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// cancelled
  static GoalLifecycleStatusBuilder cancelled = GoalLifecycleStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static GoalLifecycleStatusBuilder entered_in_error =
      GoalLifecycleStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// rejected
  static GoalLifecycleStatusBuilder rejected = GoalLifecycleStatusBuilder._(
    valueString: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rejected'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GoalLifecycleStatusBuilder elementOnly =
      GoalLifecycleStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<GoalLifecycleStatusBuilder> values = [
    proposed,
    planned,
    accepted,
    active,
    on_hold,
    completed,
    cancelled,
    entered_in_error,
    rejected,
  ];

  /// Clones the current instance
  @override
  GoalLifecycleStatusBuilder clone() => GoalLifecycleStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GoalLifecycleStatusBuilder withElement(ElementBuilder? newElement) {
    return GoalLifecycleStatusBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  GoalLifecycleStatusBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for GoalLifecycleStatus: $newValue');
    }
    return GoalLifecycleStatusBuilder._(
      valueString: newValue ?? valueString,
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
