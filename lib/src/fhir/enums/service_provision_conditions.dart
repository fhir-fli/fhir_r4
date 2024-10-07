import 'package:json_annotation/json_annotation.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
enum ServiceProvisionConditions {
  /// Display: Free
  /// Definition: This service is available for no patient cost.
  @JsonValue('free')
  free,
  /// Display: Discounts Available
  /// Definition: There are discounts available on this service for qualifying patients.
  @JsonValue('disc')
  disc,
  /// Display: Fees apply
  /// Definition: Fees apply for this service.
  @JsonValue('cost')
  cost,
;

@override
  String toString() {
      switch(this) {
        case free: return 'free';
        case disc: return 'disc';
        case cost: return 'cost';
      }
      }
String toJson() => toString();
  ServiceProvisionConditions fromString(String str) {
    switch(str) {
      case 'free': return ServiceProvisionConditions.free;
      case 'disc': return ServiceProvisionConditions.disc;
      case 'cost': return ServiceProvisionConditions.cost;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ServiceProvisionConditions fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

