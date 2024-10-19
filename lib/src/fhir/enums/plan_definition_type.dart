// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of PlanDefinition.
@Entity()
class PlanDefinitionType extends FhirCode {
  /// Factory constructor to create [PlanDefinitionType] from JSON.
  factory PlanDefinitionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PlanDefinitionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return PlanDefinitionType._(value, element);
    }
    throw ArgumentError(
      'PlanDefinitionType.fromJson: JSON value is not a valid value',
    );
  }

  /// order_set
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PlanDefinitionType.order_set([this.element])
      : dbValue = 'order-set',
        super('order-set', element);

  /// clinical_protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PlanDefinitionType.clinical_protocol([this.element])
      : dbValue = 'clinical-protocol',
        super('clinical-protocol', element);

  /// eca_rule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PlanDefinitionType.eca_rule([this.element])
      : dbValue = 'eca-rule',
        super('eca-rule', element);

  /// workflow_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PlanDefinitionType.workflow_definition([this.element])
      : dbValue = 'workflow-definition',
        super('workflow-definition', element);

  /// For instances where an Element is present but not value

  PlanDefinitionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PlanDefinitionType._(super.input, [super.element])
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
    'order-set',
    'clinical-protocol',
    'eca-rule',
    'workflow-definition',
  ];

  /// Returns the enum value with an element attached
  PlanDefinitionType withElement(Element? newElement) {
    return PlanDefinitionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PlanDefinitionType.$value';
}
