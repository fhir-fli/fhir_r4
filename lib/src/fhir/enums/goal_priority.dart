// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
@Entity()
class GoalPriority extends FhirCode {
  /// Factory constructor to create [GoalPriority] from JSON.
  factory GoalPriority.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalPriority.elementOnly(element);
    }
    if (values.contains(value)) {
      return GoalPriority._(value, element);
    }
    throw ArgumentError(
      'GoalPriority.fromJson: JSON value is not a valid value',
    );
  }

  /// high_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalPriority.high_priority([this.element])
      : dbValue = 'high-priority',
        super('high-priority', element);

  /// medium_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalPriority.medium_priority([this.element])
      : dbValue = 'medium-priority',
        super('medium-priority', element);

  /// low_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalPriority.low_priority([this.element])
      : dbValue = 'low-priority',
        super('low-priority', element);

  /// For instances where an Element is present but not value

  GoalPriority.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GoalPriority._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'high-priority',
    'medium-priority',
    'low-priority',
  ];

  /// Returns the enum value with an element attached
  GoalPriority withElement(Element? newElement) {
    return GoalPriority._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalPriority.$value';
}
