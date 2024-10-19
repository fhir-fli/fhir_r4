// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
@Entity()
class GoalLifecycleStatus extends FhirCode {
  /// Factory constructor to create [GoalLifecycleStatus] from JSON.
  factory GoalLifecycleStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return GoalLifecycleStatus._(value, element);
    }
    throw ArgumentError(
      'GoalLifecycleStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.proposed([this.element])
      : dbValue = 'proposed',
        super('proposed', element);

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.planned([this.element])
      : dbValue = 'planned',
        super('planned', element);

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.accepted([this.element])
      : dbValue = 'accepted',
        super('accepted', element);

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalLifecycleStatus.rejected([this.element])
      : dbValue = 'rejected',
        super('rejected', element);

  /// For instances where an Element is present but not value

  GoalLifecycleStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GoalLifecycleStatus._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'proposed',
    'planned',
    'accepted',
    'active',
    'on-hold',
    'completed',
    'cancelled',
    'entered-in-error',
    'rejected',
  ];

  /// Returns the enum value with an element attached
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalLifecycleStatus.$value';
}
