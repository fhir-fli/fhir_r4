// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a goal and whether the goal is
/// still being targeted.
class GoalLifecycleStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  GoalLifecycleStatus._(
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

  /// Create empty [GoalLifecycleStatus] with element only
  factory GoalLifecycleStatus.empty() => GoalLifecycleStatus._('');

  /// Factory constructor to create [GoalLifecycleStatus] from JSON.
  factory GoalLifecycleStatus.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// proposed
  static final GoalLifecycleStatus proposed = GoalLifecycleStatus._(
    'proposed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposed'.toFhirString,
  );

  /// planned
  static final GoalLifecycleStatus planned = GoalLifecycleStatus._(
    'planned',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Planned'.toFhirString,
  );

  /// accepted
  static final GoalLifecycleStatus accepted = GoalLifecycleStatus._(
    'accepted',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// active
  static final GoalLifecycleStatus active = GoalLifecycleStatus._(
    'active',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// on_hold
  static final GoalLifecycleStatus on_hold = GoalLifecycleStatus._(
    'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final GoalLifecycleStatus completed = GoalLifecycleStatus._(
    'completed',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// cancelled
  static final GoalLifecycleStatus cancelled = GoalLifecycleStatus._(
    'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final GoalLifecycleStatus entered_in_error = GoalLifecycleStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// rejected
  static final GoalLifecycleStatus rejected = GoalLifecycleStatus._(
    'rejected',
    system: 'http://hl7.org/fhir/ValueSet/goal-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final GoalLifecycleStatus elementOnly = GoalLifecycleStatus._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(
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
  GoalLifecycleStatus copyWith({
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
    return GoalLifecycleStatus._(
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
