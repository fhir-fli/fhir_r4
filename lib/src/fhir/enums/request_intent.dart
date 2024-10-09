/// Codes indicating the degree of authority/intentionality associated with a request.
enum RequestIntent {
  /// Display: Proposal
  /// Definition: The request is a suggestion made by someone/something that does not have an intention to ensure it occurs and without providing an authorization to act.
  proposal,

  /// Display: Plan
  /// Definition: The request represents an intention to ensure something occurs without providing an authorization for others to act.
  plan,

  /// Display: Directive
  /// Definition: The request represents a legally binding instruction authored by a Patient or RelatedPerson.
  directive,

  /// Display: Order
  /// Definition: The request represents a request/demand and authorization for action by a Practitioner.
  order,

  /// Display: Original Order
  /// Definition: The request represents an original authorization for action.
  original_order,

  /// Display: Reflex Order
  /// Definition: The request represents an automatically generated supplemental authorization for action based on a parent authorization together with initial results of the action taken against that parent authorization.
  reflex_order,

  /// Display: Filler Order
  /// Definition: The request represents the view of an authorization instantiated by a fulfilling system representing the details of the fulfiller's intention to act upon a submitted order.
  filler_order,

  /// Display: Instance Order
  /// Definition: An order created in fulfillment of a broader order that represents the authorization for a single activity occurrence.  E.g. The administration of a single dose of a drug.
  instance_order,

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or other constraints among a set of requests.  Refer to [[[RequestGroup]]] for additional information on how this status is used.
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
  static RequestIntent fromString(String str) {
    switch (str) {
      case 'proposal':
        return RequestIntent.proposal;
      case 'plan':
        return RequestIntent.plan;
      case 'directive':
        return RequestIntent.directive;
      case 'order':
        return RequestIntent.order;
      case 'original-order':
        return RequestIntent.original_order;
      case 'reflex-order':
        return RequestIntent.reflex_order;
      case 'filler-order':
        return RequestIntent.filler_order;
      case 'instance-order':
        return RequestIntent.instance_order;
      case 'option':
        return RequestIntent.option;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RequestIntent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
