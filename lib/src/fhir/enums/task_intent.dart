import 'package:json_annotation/json_annotation.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
enum TaskIntent {
  /// Display: Unknown
  /// Definition: The intent is not known.  When dealing with Task, it's not always known (or relevant) how the task was initiated - i.e. whether it was proposed, planned, ordered or just done spontaneously.
  @JsonValue('unknown')
  unknown,

  /// Display: Proposal
  /// Definition: The request is a suggestion made by someone/something that does not have an intention to ensure it occurs and without providing an authorization to act.
  @JsonValue('proposal')
  proposal,

  /// Display: Plan
  /// Definition: The request represents an intention to ensure something occurs without providing an authorization for others to act.
  @JsonValue('plan')
  plan,

  /// Display: Directive
  /// Definition: The request represents a legally binding instruction authored by a Patient or RelatedPerson.
  @JsonValue('directive')
  directive,

  /// Display: Order
  /// Definition: The request represents a request/demand and authorization for action by a Practitioner.
  @JsonValue('order')
  order,

  /// Display: Original Order
  /// Definition: The request represents an original authorization for action.
  @JsonValue('original-order')
  original_order,

  /// Display: Reflex Order
  /// Definition: The request represents an automatically generated supplemental authorization for action based on a parent authorization together with initial results of the action taken against that parent authorization.
  @JsonValue('reflex-order')
  reflex_order,

  /// Display: Filler Order
  /// Definition: The request represents the view of an authorization instantiated by a fulfilling system representing the details of the fulfiller's intention to act upon a submitted order.
  @JsonValue('filler-order')
  filler_order,

  /// Display: Instance Order
  /// Definition: An order created in fulfillment of a broader order that represents the authorization for a single activity occurrence.  E.g. The administration of a single dose of a drug.
  @JsonValue('instance-order')
  instance_order,

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or other constraints among a set of requests.  Refer to [[[RequestGroup]]] for additional information on how this status is used.
  @JsonValue('option')
  option,
  ;

  @override
  String toString() {
    switch (this) {
      case unknown:
        return 'unknown';
      case proposal:
        return 'proposal';
      case plan:
        return 'plan';
      case directive:
        return 'directive';
      case order:
        return 'order';
      case original_order:
        return 'original-order';
      case reflex_order:
        return 'reflex-order';
      case filler_order:
        return 'filler-order';
      case instance_order:
        return 'instance-order';
      case option:
        return 'option';
    }
  }

  String toJson() => toString();
  static TaskIntent fromString(String str) {
    switch (str) {
      case 'unknown':
        return TaskIntent.unknown;
      case 'proposal':
        return TaskIntent.proposal;
      case 'plan':
        return TaskIntent.plan;
      case 'directive':
        return TaskIntent.directive;
      case 'order':
        return TaskIntent.order;
      case 'original-order':
        return TaskIntent.original_order;
      case 'reflex-order':
        return TaskIntent.reflex_order;
      case 'filler-order':
        return TaskIntent.filler_order;
      case 'instance-order':
        return TaskIntent.instance_order;
      case 'option':
        return TaskIntent.option;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TaskIntent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
