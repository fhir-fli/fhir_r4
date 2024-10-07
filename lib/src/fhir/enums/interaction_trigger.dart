import 'package:json_annotation/json_annotation.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
enum InteractionTrigger {
  @JsonValue('create')
  create,
  @JsonValue('update')
  update,
  @JsonValue('delete')
  delete,
;

@override
  String toString() {
      switch(this) {
        case create: return 'create';
        case update: return 'update';
        case delete: return 'delete';
      }
      }
String toJson() => toString();
  InteractionTrigger fromString(String str) {
    switch(str) {
      case 'create': return InteractionTrigger.create;
      case 'update': return InteractionTrigger.update;
      case 'delete': return InteractionTrigger.delete;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 InteractionTrigger fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

