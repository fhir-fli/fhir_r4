/// This value set includes sample Related Claim Relationship codes.
enum ExampleRelatedClaimRelationshipCodes {
  /// Display: Prior Claim
  /// Definition: A prior claim instance for the same intended suite of services.
  prior,

  /// Display: Associated Claim
  /// Definition: A claim for a different suite of services which is related the suite claimed here.
  associated,
  ;

  @override
  String toString() {
    switch (this) {
      case prior:
        return 'prior';
      case associated:
        return 'associated';
    }
  }

  /// Returns a [String] from a [ExampleRelatedClaimRelationshipCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleRelatedClaimRelationshipCodes] from a [String] enum.
  static ExampleRelatedClaimRelationshipCodes fromString(String str) {
    switch (str) {
      case 'prior':
        return ExampleRelatedClaimRelationshipCodes.prior;
      case 'associated':
        return ExampleRelatedClaimRelationshipCodes.associated;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleRelatedClaimRelationshipCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleRelatedClaimRelationshipCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
