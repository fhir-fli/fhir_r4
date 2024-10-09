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

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or other constraints among a set of requests.  Refer to [[[RequestGroup]]] for additional information on how this status is used.
  @JsonValue('option')
  option,
  @JsonValue('original-order')
  original_order,
  @JsonValue('reflex-order')
  reflex_order,
  @JsonValue('filler-order')
  filler_order,
  @JsonValue('instance-order')
  instance_order,
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
      case option:
        return 'option';
      case original_order:
        return 'original-order';
      case reflex_order:
        return 'reflex-order';
      case filler_order:
        return 'filler-order';
      case instance_order:
        return 'instance-order';
    }
  }

  String toJson() => toString();
  TaskIntent fromString(String str) {
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
      case 'option':
        return TaskIntent.option;
      case 'original-order':
        return TaskIntent.original_order;
      case 'reflex-order':
        return TaskIntent.reflex_order;
      case 'filler-order':
        return TaskIntent.filler_order;
      case 'instance-order':
        return TaskIntent.instance_order;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  TaskIntent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
