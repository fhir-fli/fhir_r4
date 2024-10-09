import 'package:json_annotation/json_annotation.dart';

/// Telecommunications form for contact point.
enum ContactPointSystem {
  /// Display: Phone
  /// Definition: The value is a telephone number used for voice calls. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required.
  @JsonValue('phone')
  phone,

  /// Display: Fax
  /// Definition: The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required.
  @JsonValue('fax')
  fax,

  /// Display: Email
  /// Definition: The value is an email address.
  @JsonValue('email')
  email,

  /// Display: Pager
  /// Definition: The value is a pager number. These may be local pager numbers that are only usable on a particular pager system.
  @JsonValue('pager')
  pager,

  /// Display: URL
  /// Definition: A contact that is not a phone, fax, pager or email address and is expressed as a URL.  This is intended for various institutional or personal contacts including web sites, blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses.
  @JsonValue('url')
  url,

  /// Display: SMS
  /// Definition: A contact that can be used for sending an sms message (e.g. mobile phones, some landlines).
  @JsonValue('sms')
  sms,

  /// Display: Other
  /// Definition: A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook, etc.)  Extensions may be used to distinguish "other" contact types.
  @JsonValue('other')
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case phone:
        return 'phone';
      case fax:
        return 'fax';
      case email:
        return 'email';
      case pager:
        return 'pager';
      case url:
        return 'url';
      case sms:
        return 'sms';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  static ContactPointSystem fromString(String str) {
    switch (str) {
      case 'phone':
        return ContactPointSystem.phone;
      case 'fax':
        return ContactPointSystem.fax;
      case 'email':
        return ContactPointSystem.email;
      case 'pager':
        return ContactPointSystem.pager;
      case 'url':
        return ContactPointSystem.url;
      case 'sms':
        return ContactPointSystem.sms;
      case 'other':
        return ContactPointSystem.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContactPointSystem fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
