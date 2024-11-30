// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
class GoalLifecycleStatus {
  // Private constructor for internal use (like enum)
  GoalLifecycleStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalLifecycleStatus values
  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus proposed = GoalLifecycleStatus._(
    'proposed',
  );

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus planned = GoalLifecycleStatus._(
    'planned',
  );

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus accepted = GoalLifecycleStatus._(
    'accepted',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus active = GoalLifecycleStatus._(
    'active',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus on_hold = GoalLifecycleStatus._(
    'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus completed = GoalLifecycleStatus._(
    'completed',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus cancelled = GoalLifecycleStatus._(
    'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus entered_in_error = GoalLifecycleStatus._(
    'entered-in-error',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GoalLifecycleStatus] from JSON.
  static GoalLifecycleStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus.elementOnly.withElement(element);
    }
    return GoalLifecycleStatus._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
