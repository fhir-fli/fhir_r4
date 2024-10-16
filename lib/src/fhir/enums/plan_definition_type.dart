import 'package:fhir_r4/fhir_r4.dart';

/// The type of PlanDefinition.
enum PlanDefinitionType {
  /// Display: Order Set
  /// Definition: A pre-defined and approved group of orders related to a particular clinical condition (e.g. hypertension treatment and monitoring) or stage of care (e.g. hospital admission to Coronary Care Unit). An order set is used as a checklist for the clinician when managing a patient with a specific condition. It is a structured collection of orders relevant to that condition and presented to the clinician in a computerized provider order entry (CPOE) system.
  order_set('order-set'),

  /// Display: Clinical Protocol
  /// Definition: Defines a desired/typical sequence of clinical activities including preconditions, triggers and temporal relationships.
  clinical_protocol('clinical-protocol'),

  /// Display: ECA Rule
  /// Definition: A decision support rule of the form [on Event] if Condition then Action. It is intended to be a shareable, computable definition of actions that should be taken whenever some condition is met in response to a particular event or events.
  eca_rule('eca-rule'),

  /// Display: Workflow Definition
  /// Definition: Defines the steps for a group of one or more systems in an event flow process along with the step constraints, sequence, pre-conditions and decision points to complete a particular objective.
  workflow_definition('workflow-definition'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PlanDefinitionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PlanDefinitionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PlanDefinitionType.elementOnly.withElement(element);
    }
    return PlanDefinitionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PlanDefinitionType withElement(Element? newElement) {
    return PlanDefinitionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
