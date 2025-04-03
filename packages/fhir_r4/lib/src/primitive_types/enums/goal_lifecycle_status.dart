// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a goal and whether the goal is
/// still being targeted.
class GoalLifecycleStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GoalLifecycleStatus._({
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
  factory GoalLifecycleStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return GoalLifecycleStatus._(
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

  /// Create empty [GoalLifecycleStatus] with element only
  factory GoalLifecycleStatus.empty() => GoalLifecycleStatus._(valueString: '');

  /// Factory constructor to create [GoalLifecycleStatus] from JSON.
  factory GoalLifecycleStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalLifecycleStatus cannot be constructed from JSON.',
      );
    }
    return GoalLifecycleStatus._(
      valueString: value,
      element: element,
    );
  }

  /// proposed
  static final GoalLifecycleStatus proposed = GoalLifecycleStatus._(
    valueString: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposed'.toFhirString,
  );

  /// planned
  static final GoalLifecycleStatus planned = GoalLifecycleStatus._(
    valueString: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Planned'.toFhirString,
  );

  /// accepted
  static final GoalLifecycleStatus accepted = GoalLifecycleStatus._(
    valueString: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// active
  static final GoalLifecycleStatus active = GoalLifecycleStatus._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// on_hold
  static final GoalLifecycleStatus on_hold = GoalLifecycleStatus._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final GoalLifecycleStatus completed = GoalLifecycleStatus._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// cancelled
  static final GoalLifecycleStatus cancelled = GoalLifecycleStatus._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final GoalLifecycleStatus entered_in_error = GoalLifecycleStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// rejected
  static final GoalLifecycleStatus rejected = GoalLifecycleStatus._(
    valueString: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GoalLifecycleStatus elementOnly =
      GoalLifecycleStatus._(valueString: '');

  /// List of all enum-like values
  static final List<GoalLifecycleStatus> values = [
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
  GoalLifecycleStatus clone() => GoalLifecycleStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(
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

  /// Creates a modified copy with updated properties.
  @override
  GoalLifecycleStatus copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for GoalLifecycleStatus: $newValue');
    }
    return GoalLifecycleStatus._(
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
