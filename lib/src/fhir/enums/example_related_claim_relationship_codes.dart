import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Related Claim Relationship codes.
enum ExampleRelatedClaimRelationshipCodes {
  /// Display: Prior Claim
  /// Definition: A prior claim instance for the same intended suite of services.
  @JsonValue('prior')
  prior,
  /// Display: Associated Claim
  /// Definition: A claim for a different suite of services which is related the suite claimed here.
  @JsonValue('associated')
  associated,
;

@override
  String toString() {
      switch(this) {
        case prior: return 'prior';
        case associated: return 'associated';
      }
      }
String toJson() => toString();
  ExampleRelatedClaimRelationshipCodes fromString(String str) {
    switch(str) {
      case 'prior': return ExampleRelatedClaimRelationshipCodes.prior;
      case 'associated': return ExampleRelatedClaimRelationshipCodes.associated;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleRelatedClaimRelationshipCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
