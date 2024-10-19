// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of PlanDefinition.
class PlanDefinitionType {
  // Private constructor for internal use (like enum)
  PlanDefinitionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PlanDefinitionType values
  /// order_set
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PlanDefinitionType order_set = PlanDefinitionType._(
    'order-set',
  );

  /// clinical_protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PlanDefinitionType clinical_protocol = PlanDefinitionType._(
    'clinical-protocol',
  );

  /// eca_rule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PlanDefinitionType eca_rule = PlanDefinitionType._(
    'eca-rule',
  );

  /// workflow_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PlanDefinitionType workflow_definition = PlanDefinitionType._(
    'workflow-definition',
  );

  /// For instances where an Element is present but not value

  static final PlanDefinitionType elementOnly = PlanDefinitionType._('');

  /// List of all enum-like values
  static final List<PlanDefinitionType> values = [
    order_set,
    clinical_protocol,
    eca_rule,
    workflow_definition,
  ];

  /// Returns the enum value with an element attached
  PlanDefinitionType withElement(Element? newElement) {
    return PlanDefinitionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PlanDefinitionType] from JSON.
  static PlanDefinitionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PlanDefinitionType.elementOnly.withElement(element);
    }
    return PlanDefinitionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PlanDefinitionType.$fhirCode';
}
