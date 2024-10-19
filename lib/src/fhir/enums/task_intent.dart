// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
@collection
class TaskIntent {
  /// Constructor for internal use (like enum)
  TaskIntent({this.fhirCode, this.element})
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

  /// TaskIntent values
  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent unknown = TaskIntent(
    fhirCode: 'unknown',
  );

  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent proposal = TaskIntent(
    fhirCode: 'proposal',
  );

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent plan = TaskIntent(
    fhirCode: 'plan',
  );

  /// directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent directive = TaskIntent(
    fhirCode: 'directive',
  );

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent order = TaskIntent(
    fhirCode: 'order',
  );

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent original_order = TaskIntent(
    fhirCode: 'original-order',
  );

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent reflex_order = TaskIntent(
    fhirCode: 'reflex-order',
  );

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent filler_order = TaskIntent(
    fhirCode: 'filler-order',
  );

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent instance_order = TaskIntent(
    fhirCode: 'instance-order',
  );

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskIntent option = TaskIntent(
    fhirCode: 'option',
  );

  /// For instances where an Element is present but not value

  static final TaskIntent elementOnly = TaskIntent();

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
    return TaskIntent(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TaskIntent] from JSON.
  static TaskIntent fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly.withElement(element);
    }
    return TaskIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskIntent.$fhirCode';
}
