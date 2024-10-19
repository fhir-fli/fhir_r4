// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
@Entity()
class CarePlanIntent extends FhirCode {
  /// Factory constructor to create [CarePlanIntent] from JSON.
  factory CarePlanIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntent.elementOnly(element);
    }
    if (values.contains(value)) {
      return CarePlanIntent._(value, element);
    }
    throw ArgumentError(
      'CarePlanIntent.fromJson: JSON value is not a valid value',
    );
  }

  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.proposal([this.element])
      : dbValue = 'proposal',
        super('proposal', element);

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.plan([this.element])
      : dbValue = 'plan',
        super('plan', element);

  /// directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.directive([this.element])
      : dbValue = 'directive',
        super('directive', element);

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.order([this.element])
      : dbValue = 'order',
        super('order', element);

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.original_order([this.element])
      : dbValue = 'original-order',
        super('original-order', element);

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.reflex_order([this.element])
      : dbValue = 'reflex-order',
        super('reflex-order', element);

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.filler_order([this.element])
      : dbValue = 'filler-order',
        super('filler-order', element);

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.instance_order([this.element])
      : dbValue = 'instance-order',
        super('instance-order', element);

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanIntent.option([this.element])
      : dbValue = 'option',
        super('option', element);

  /// For instances where an Element is present but not value

  CarePlanIntent.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CarePlanIntent._(super.input, [super.element])
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
  CarePlanIntent withElement(Element? newElement) {
    return CarePlanIntent._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CarePlanIntent.$value';
}
