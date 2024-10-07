import 'package:json_annotation/json_annotation.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
enum ReferralMethod {
  /// Display: Fax
  /// Definition: Referrals may be accepted by fax.
  @JsonValue('fax')
  fax,
  /// Display: Phone
  /// Definition: Referrals may be accepted over the phone from a practitioner.
  @JsonValue('phone')
  phone,
  /// Display: Secure Messaging
  /// Definition: Referrals may be accepted via a secure messaging system. To determine the types of secure messaging systems supported, refer to the identifiers collection. Callers will need to understand the specific identifier system used to know that they are able to transmit messages.
  @JsonValue('elec')
  elec,
  /// Display: Secure Email
  /// Definition: Referrals may be accepted via a secure email. To send please encrypt with the services public key.
  @JsonValue('semail')
  semail,
  /// Display: Mail
  /// Definition: Referrals may be accepted via regular postage (or hand delivered).
  @JsonValue('mail')
  mail,
;

@override
  String toString() {
      switch(this) {
        case fax: return 'fax';
        case phone: return 'phone';
        case elec: return 'elec';
        case semail: return 'semail';
        case mail: return 'mail';
      }
      }
String toJson() => toString();
  ReferralMethod fromString(String str) {
    switch(str) {
      case 'fax': return ReferralMethod.fax;
      case 'phone': return ReferralMethod.phone;
      case 'elec': return ReferralMethod.elec;
      case 'semail': return ReferralMethod.semail;
      case 'mail': return ReferralMethod.mail;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ReferralMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

