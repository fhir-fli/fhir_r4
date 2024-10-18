// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Telecommunications form for contact point.
enum ContactPointSystem {
  /// Display: Phone
  /// Definition: The value is a telephone number used for voice calls. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required.
  phone('phone'),

  /// Display: Fax
  /// Definition: The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required.
  fax('fax'),

  /// Display: Email
  /// Definition: The value is an email address.
  email('email'),

  /// Display: Pager
  /// Definition: The value is a pager number. These may be local pager numbers that are only usable on a particular pager system.
  pager('pager'),

  /// Display: URL
  /// Definition: A contact that is not a phone, fax, pager or email address and is expressed as a URL. This is intended for various institutional or personal contacts including web sites, blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses.
  url('url'),

  /// Display: SMS
  /// Definition: A contact that can be used for sending an sms message (e.g. mobile phones, some landlines).
  sms('sms'),

  /// Display: Other
  /// Definition: A contact that is not a phone, fax, page or email address and is not expressible as a URL. E.g. Internal mail address. This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook, etc.) Extensions may be used to distinguish "other" contact types.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContactPointSystem(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContactPointSystem] instances.
  static ContactPointSystem fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystem.elementOnly.withElement(element);
    }
    return ContactPointSystem.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
