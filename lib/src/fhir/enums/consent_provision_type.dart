import 'package:json_annotation/json_annotation.dart';

/// How a rule statement is applied, such as adding additional consent or removing consent.
enum ConsentProvisionType {
  /// Display: Opt Out
  /// Definition: Consent is denied for actions meeting these rules.
  @JsonValue('deny')
  deny,
  /// Display: Opt In
  /// Definition: Consent is provided for actions meeting these rules.
  @JsonValue('permit')
  permit,
;

@override
  String toString() {
      switch(this) {
        case deny: return 'deny';
        case permit: return 'permit';
      }
      }
String toJson() => toString();
  ConsentProvisionType fromString(String str) {
    switch(str) {
      case 'deny': return ConsentProvisionType.deny;
      case 'permit': return ConsentProvisionType.permit;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ConsentProvisionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
