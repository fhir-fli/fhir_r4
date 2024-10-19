// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
@collection
class GoalLifecycleStatus {
  /// Constructor for internal use (like enum)
  GoalLifecycleStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalLifecycleStatus values
  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus proposed = GoalLifecycleStatus(
    fhirCode: 'proposed',
  );

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus planned = GoalLifecycleStatus(
    fhirCode: 'planned',
  );

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus accepted = GoalLifecycleStatus(
    fhirCode: 'accepted',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus active = GoalLifecycleStatus(
    fhirCode: 'active',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus on_hold = GoalLifecycleStatus(
    fhirCode: 'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus completed = GoalLifecycleStatus(
    fhirCode: 'completed',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus cancelled = GoalLifecycleStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus entered_in_error = GoalLifecycleStatus(
    fhirCode: 'entered-in-error',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalLifecycleStatus rejected = GoalLifecycleStatus(
    fhirCode: 'rejected',
  );

  /// For instances where an Element is present but not value

  static final GoalLifecycleStatus elementOnly = GoalLifecycleStatus();

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
    return GoalLifecycleStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return GoalLifecycleStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalLifecycleStatus.$fhirCode';
}
