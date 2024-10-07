import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for decision modes.
enum ContractResourceDecisionModeCodes {
  /// Display: Policy
  /// Definition: To be completed
  @JsonValue('policy')
  policy,
;

@override
  String toString() {
      switch(this) {
        case policy: return 'policy';
      }
      }
String toJson() => toString();
  ContractResourceDecisionModeCodes fromString(String str) {
    switch(str) {
      case 'policy': return ContractResourceDecisionModeCodes.policy;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourceDecisionModeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

