import 'package:json_annotation/json_annotation.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
enum CarePlanIntent {
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
  ;

  @override
  String toString() {
    switch (this) {
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
    }
  }

  String toJson() => toString();
  CarePlanIntent fromString(String str) {
    switch (str) {
      case 'proposal':
        return CarePlanIntent.proposal;
      case 'plan':
        return CarePlanIntent.plan;
      case 'directive':
        return CarePlanIntent.directive;
      case 'order':
        return CarePlanIntent.order;
      case 'option':
        return CarePlanIntent.option;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  CarePlanIntent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
