import 'package:json_annotation/json_annotation.dart';

/// The type of PlanDefinition.
enum PlanDefinitionType {
  /// Display: Order Set
  /// Definition: A pre-defined and approved group of orders related to a particular clinical condition (e.g. hypertension treatment and monitoring) or stage of care (e.g. hospital admission to Coronary Care Unit). An order set is used as a checklist for the clinician when managing a patient with a specific condition. It is a structured collection of orders relevant to that condition and presented to the clinician in a computerized provider order entry (CPOE) system.
  @JsonValue('order-set')
  order_set,
  /// Display: Clinical Protocol
  /// Definition: Defines a desired/typical sequence of clinical activities including preconditions, triggers and temporal relationships.
  @JsonValue('clinical-protocol')
  clinical_protocol,
  /// Display: ECA Rule
  /// Definition: A decision support rule of the form [on Event] if Condition then Action. It is intended to be a shareable, computable definition of actions that should be taken whenever some condition is met in response to a particular event or events.
  @JsonValue('eca-rule')
  eca_rule,
  /// Display: Workflow Definition
  /// Definition: Defines the steps for a group of one or more systems in an event flow process along with the step constraints, sequence, pre-conditions and decision points to complete a particular objective.
  @JsonValue('workflow-definition')
  workflow_definition,
;

@override
  String toString() {
      switch(this) {
        case order_set: return 'order-set';
        case clinical_protocol: return 'clinical-protocol';
        case eca_rule: return 'eca-rule';
        case workflow_definition: return 'workflow-definition';
      }
      }
String toJson() => toString();
  PlanDefinitionType fromString(String str) {
    switch(str) {
      case 'order-set': return PlanDefinitionType.order_set;
      case 'clinical-protocol': return PlanDefinitionType.clinical_protocol;
      case 'eca-rule': return PlanDefinitionType.eca_rule;
      case 'workflow-definition': return PlanDefinitionType.workflow_definition;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 PlanDefinitionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
