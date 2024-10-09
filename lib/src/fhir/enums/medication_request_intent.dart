/// MedicationRequest Intent Codes
enum MedicationRequestIntent {
  /// Display: Proposal
  /// Definition: The request is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and without providing an authorization to act
  proposal,

  /// Display: Plan
  /// Definition: The request represents an intention to ensure something occurs without providing an authorization for others to act.
  plan,

  /// Display: Order
  /// Definition: The request represents a request/demand and authorization for action
  order,

  /// Display: Original Order
  /// Definition: The request represents the original authorization for the medication request.
  original_order,

  /// Display: Reflex Order
  /// Definition: The request represents an automatically generated supplemental authorization for action based on a parent authorization together with initial results of the action taken against that parent authorization..
  reflex_order,

  /// Display: Filler Order
  /// Definition: The request represents the view of an authorization instantiated by a fulfilling system representing the details of the fulfiller's intention to act upon a submitted order.
  filler_order,

  /// Display: Instance Order
  /// Definition: The request represents an instance for the particular order, for example a medication administration record.
  instance_order,

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or  other constraints among a set of requests.
  option,
  ;

  @override
  String toString() {
    switch (this) {
      case proposal:
        return 'proposal';
      case plan:
        return 'plan';
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
  static MedicationRequestIntent fromString(String str) {
    switch (str) {
      case 'proposal':
        return MedicationRequestIntent.proposal;
      case 'plan':
        return MedicationRequestIntent.plan;
      case 'order':
        return MedicationRequestIntent.order;
      case 'original-order':
        return MedicationRequestIntent.original_order;
      case 'reflex-order':
        return MedicationRequestIntent.reflex_order;
      case 'filler-order':
        return MedicationRequestIntent.filler_order;
      case 'instance-order':
        return MedicationRequestIntent.instance_order;
      case 'option':
        return MedicationRequestIntent.option;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicationRequestIntent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
