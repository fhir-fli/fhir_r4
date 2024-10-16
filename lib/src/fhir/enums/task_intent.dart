import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
enum TaskIntent {
  /// Display: Unknown
  /// Definition: The intent is not known. When dealing with Task, it's not always known (or relevant) how the task was initiated - i.e. whether it was proposed, planned, ordered or just done spontaneously.
  unknown('unknown'),

  /// Display: Proposal
  /// Definition: The request is a suggestion made by someone/something that does not have an intention to ensure it occurs and without providing an authorization to act.
  proposal('proposal'),

  /// Display: Plan
  /// Definition: The request represents an intention to ensure something occurs without providing an authorization for others to act.
  plan('plan'),

  /// Display: Directive
  /// Definition: The request represents a legally binding instruction authored by a Patient or RelatedPerson.
  directive('directive'),

  /// Display: Order
  /// Definition: The request represents a request/demand and authorization for action by a Practitioner.
  order('order'),

  /// Display: Original Order
  /// Definition: The request represents an original authorization for action.
  original_order('original-order'),

  /// Display: Reflex Order
  /// Definition: The request represents an automatically generated supplemental authorization for action based on a parent authorization together with initial results of the action taken against that parent authorization.
  reflex_order('reflex-order'),

  /// Display: Filler Order
  /// Definition: The request represents the view of an authorization instantiated by a fulfilling system representing the details of the fulfiller's intention to act upon a submitted order.
  filler_order('filler-order'),

  /// Display: Instance Order
  /// Definition: An order created in fulfillment of a broader order that represents the authorization for a single activity occurrence. E.g. The administration of a single dose of a drug.
  instance_order('instance-order'),

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or other constraints among a set of requests. Refer to [[[RequestGroup]]] for additional information on how this status is used.
  option('option'),

  /// Display:
  /// Definition:
  proposal_1('proposal'),

  /// Display:
  /// Definition:
  plan_1('plan'),

  /// Display:
  /// Definition:
  order_1('order'),

  /// Display:
  /// Definition:
  original_order_1('original-order'),

  /// Display:
  /// Definition:
  reflex_order_1('reflex-order'),

  /// Display:
  /// Definition:
  filler_order_1('filler-order'),

  /// Display:
  /// Definition:
  instance_order_1('instance-order'),

  /// Display:
  /// Definition:
  option_1('option'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TaskIntent(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TaskIntent fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly.withElement(element);
    }
    return TaskIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TaskIntent withElement(Element? newElement) {
    return TaskIntent.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
