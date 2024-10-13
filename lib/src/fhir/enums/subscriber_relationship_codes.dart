/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
enum SubscriberRelationshipCodes {
  /// Display: Child
  /// Definition: The Beneficiary is a child of the Subscriber
  child,

  /// Display: Parent
  /// Definition: The Beneficiary is a parent of the Subscriber
  parent,

  /// Display: Spouse
  /// Definition: The Beneficiary is a spouse or equivalent of the Subscriber
  spouse,

  /// Display: Common Law Spouse
  /// Definition: The Beneficiary is a common law spouse or equivalent of the Subscriber
  common,

  /// Display: Other
  /// Definition: The Beneficiary has some other relationship the Subscriber
  other,

  /// Display: Self
  /// Definition: The Beneficiary is the Subscriber
  self,

  /// Display: Injured Party
  /// Definition: The Beneficiary is covered under insurance of the subscriber due to an injury.
  injured,
  ;

  @override
  String toString() {
    switch (this) {
      case child:
        return 'child';
      case parent:
        return 'parent';
      case spouse:
        return 'spouse';
      case common:
        return 'common';
      case other:
        return 'other';
      case self:
        return 'self';
      case injured:
        return 'injured';
    }
  }

  /// Returns a [String] from a [SubscriberRelationshipCodes] enum.
  String toJson() => toString();

  /// Returns a [SubscriberRelationshipCodes] from a [String] enum.
  static SubscriberRelationshipCodes fromString(String str) {
    switch (str) {
      case 'child':
        return SubscriberRelationshipCodes.child;
      case 'parent':
        return SubscriberRelationshipCodes.parent;
      case 'spouse':
        return SubscriberRelationshipCodes.spouse;
      case 'common':
        return SubscriberRelationshipCodes.common;
      case 'other':
        return SubscriberRelationshipCodes.other;
      case 'self':
        return SubscriberRelationshipCodes.self;
      case 'injured':
        return SubscriberRelationshipCodes.injured;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubscriberRelationshipCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubscriberRelationshipCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
