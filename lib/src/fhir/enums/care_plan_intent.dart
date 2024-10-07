import 'package:json_annotation/json_annotation.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
enum CarePlanIntent {
  @JsonValue('proposal')
  proposal,
  @JsonValue('plan')
  plan,
  @JsonValue('order')
  order,
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
