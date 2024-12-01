// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
class TaskIntent {
  // Private constructor for internal use (like enum)
  TaskIntent._(this.fhirCode, {this.element});

  /// Factory constructor to create [TaskIntent] from JSON.
  factory TaskIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly.withElement(element);
    }
    return TaskIntent._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TaskIntent values
  /// unknown
  static final TaskIntent unknown = TaskIntent._(
    'unknown',
  );

  /// proposal
  static final TaskIntent proposal = TaskIntent._(
    'proposal',
  );

  /// plan
  static final TaskIntent plan = TaskIntent._(
    'plan',
  );

  /// directive
  static final TaskIntent directive = TaskIntent._(
    'directive',
  );

  /// order
  static final TaskIntent order = TaskIntent._(
    'order',
  );

  /// original_order
  static final TaskIntent original_order = TaskIntent._(
    'original-order',
  );

  /// reflex_order
  static final TaskIntent reflex_order = TaskIntent._(
    'reflex-order',
  );

  /// filler_order
  static final TaskIntent filler_order = TaskIntent._(
    'filler-order',
  );

  /// instance_order
  static final TaskIntent instance_order = TaskIntent._(
    'instance-order',
  );

  /// option
  static final TaskIntent option = TaskIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final TaskIntent elementOnly = TaskIntent._('');

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

  /// Returns the enum value with an element attached
  TaskIntent withElement(Element? newElement) {
    return TaskIntent._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
