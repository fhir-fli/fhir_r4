// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
enum ReferralMethod {
  /// Display: Fax
  /// Definition: Referrals may be accepted by fax.
  fax('fax'),

  /// Display: Phone
  /// Definition: Referrals may be accepted over the phone from a practitioner.
  phone('phone'),

  /// Display: Secure Messaging
  /// Definition: Referrals may be accepted via a secure messaging system. To determine the types of secure messaging systems supported, refer to the identifiers collection. Callers will need to understand the specific identifier system used to know that they are able to transmit messages.
  elec('elec'),

  /// Display: Secure Email
  /// Definition: Referrals may be accepted via a secure email. To send please encrypt with the services public key.
  semail('semail'),

  /// Display: Mail
  /// Definition: Referrals may be accepted via regular postage (or hand delivered).
  mail('mail'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ReferralMethod(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ReferralMethod] instances.
  static ReferralMethod fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferralMethod.elementOnly.withElement(element);
    }
    return ReferralMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ReferralMethod withElement(Element? newElement) {
    return ReferralMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
