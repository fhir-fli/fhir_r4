// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
@Entity()
class TaskIntent extends FhirCode {
  /// Factory constructor to create [TaskIntent] from JSON.
  factory TaskIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly(element);
    }
    if (values.contains(value)) {
      return TaskIntent._(value, element);
    }
    throw ArgumentError(
      'TaskIntent.fromJson: JSON value is not a valid value',
    );
  }

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.proposal([this.element])
      : dbValue = 'proposal',
        super('proposal', element);

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.plan([this.element])
      : dbValue = 'plan',
        super('plan', element);

  /// directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.directive([this.element])
      : dbValue = 'directive',
        super('directive', element);

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.order([this.element])
      : dbValue = 'order',
        super('order', element);

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.original_order([this.element])
      : dbValue = 'original-order',
        super('original-order', element);

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.reflex_order([this.element])
      : dbValue = 'reflex-order',
        super('reflex-order', element);

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.filler_order([this.element])
      : dbValue = 'filler-order',
        super('filler-order', element);

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.instance_order([this.element])
      : dbValue = 'instance-order',
        super('instance-order', element);

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskIntent.option([this.element])
      : dbValue = 'option',
        super('option', element);

  /// For instances where an Element is present but not value

  TaskIntent.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TaskIntent._(super.input, [super.element])
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
    'unknown',
    'proposal',
    'plan',
    'directive',
    'order',
    'original-order',
    'reflex-order',
    'filler-order',
    'instance-order',
    'option',
  ];

  /// Returns the enum value with an element attached
  TaskIntent withElement(Element? newElement) {
    return TaskIntent._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskIntent.$value';
}
