import 'package:json_annotation/json_annotation.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
enum TaskIntent {
  /// Display: Unknown
  /// Definition: The intent is not known.  When dealing with Task, it's not always known (or relevant) how the task was initiated - i.e. whether it was proposed, planned, ordered or just done spontaneously.
  @JsonValue('unknown')
  unknown,
  @JsonValue('proposal')
  proposal,
  @JsonValue('plan')
  plan,
  @JsonValue('order')
  order,
  @JsonValue('original-order')
  original_order,
  @JsonValue('reflex-order')
  reflex_order,
  @JsonValue('filler-order')
  filler_order,
  @JsonValue('instance-order')
  instance_order,
  @JsonValue('option')
  option,
;

@override
  String toString() {
      switch(this) {
        case unknown: return 'unknown';
        case proposal: return 'proposal';
        case plan: return 'plan';
        case order: return 'order';
        case original_order: return 'original-order';
        case reflex_order: return 'reflex-order';
        case filler_order: return 'filler-order';
        case instance_order: return 'instance-order';
        case option: return 'option';
      }
      }
String toJson() => toString();
  TaskIntent fromString(String str) {
    switch(str) {
      case 'unknown': return TaskIntent.unknown;
      case 'proposal': return TaskIntent.proposal;
      case 'plan': return TaskIntent.plan;
      case 'order': return TaskIntent.order;
      case 'original-order': return TaskIntent.original_order;
      case 'reflex-order': return TaskIntent.reflex_order;
      case 'filler-order': return TaskIntent.filler_order;
      case 'instance-order': return TaskIntent.instance_order;
      case 'option': return TaskIntent.option;
    default: throw ArgumentError('Unknown enum value: $str');
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

