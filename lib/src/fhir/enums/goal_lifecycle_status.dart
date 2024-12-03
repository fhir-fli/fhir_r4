// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
class GoalLifecycleStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GoalLifecycleStatus._(super.value, [super.element]);

  /// Factory constructor to create [GoalLifecycleStatus] from JSON.
  factory GoalLifecycleStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus.elementOnly.withElement(element);
    }
    return GoalLifecycleStatus._(value, element);
  }

  /// proposed
  static final GoalLifecycleStatus proposed = GoalLifecycleStatus._(
    'proposed',
  );

  /// planned
  static final GoalLifecycleStatus planned = GoalLifecycleStatus._(
    'planned',
  );

  /// accepted
  static final GoalLifecycleStatus accepted = GoalLifecycleStatus._(
    'accepted',
  );

  /// active
  static final GoalLifecycleStatus active = GoalLifecycleStatus._(
    'active',
  );

  /// on_hold
  static final GoalLifecycleStatus on_hold = GoalLifecycleStatus._(
    'on-hold',
  );

  /// completed
  static final GoalLifecycleStatus completed = GoalLifecycleStatus._(
    'completed',
  );

  /// cancelled
  static final GoalLifecycleStatus cancelled = GoalLifecycleStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final GoalLifecycleStatus entered_in_error = GoalLifecycleStatus._(
    'entered-in-error',
  );

  /// rejected
  static final GoalLifecycleStatus rejected = GoalLifecycleStatus._(
    'rejected',
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
  GoalLifecycleStatus clone() =>
      GoalLifecycleStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  GoalLifecycleStatus setElement(String name, dynamic elementValue) {
    return GoalLifecycleStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GoalLifecycleStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
