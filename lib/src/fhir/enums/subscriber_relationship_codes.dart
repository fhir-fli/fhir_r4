import 'package:json_annotation/json_annotation.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
enum SubscriberRelationshipCodes {
  /// Display: Child
  /// Definition: The Beneficiary is a child of the Subscriber
  @JsonValue('child')
  child,
  /// Display: Parent
  /// Definition: The Beneficiary is a parent of the Subscriber
  @JsonValue('parent')
  parent,
  /// Display: Spouse
  /// Definition: The Beneficiary is a spouse or equivalent of the Subscriber
  @JsonValue('spouse')
  spouse,
  /// Display: Common Law Spouse
  /// Definition: The Beneficiary is a common law spouse or equivalent of the Subscriber
  @JsonValue('common')
  common,
  /// Display: Other
  /// Definition: The Beneficiary has some other relationship the Subscriber
  @JsonValue('other')
  other,
  /// Display: Self
  /// Definition: The Beneficiary is the Subscriber
  @JsonValue('self')
  self,
  /// Display: Injured Party
  /// Definition: The Beneficiary is covered under insurance of the subscriber due to an injury.
  @JsonValue('injured')
  injured,
;

@override
  String toString() {
      switch(this) {
        case child: return 'child';
        case parent: return 'parent';
        case spouse: return 'spouse';
        case common: return 'common';
        case other: return 'other';
        case self: return 'self';
        case injured: return 'injured';
      }
      }
String toJson() => toString();
  SubscriberRelationshipCodes fromString(String str) {
    switch(str) {
      case 'child': return SubscriberRelationshipCodes.child;
      case 'parent': return SubscriberRelationshipCodes.parent;
      case 'spouse': return SubscriberRelationshipCodes.spouse;
      case 'common': return SubscriberRelationshipCodes.common;
      case 'other': return SubscriberRelationshipCodes.other;
      case 'self': return SubscriberRelationshipCodes.self;
      case 'injured': return SubscriberRelationshipCodes.injured;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubscriberRelationshipCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
