// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
class ReferralMethod {
  // Private constructor for internal use (like enum)
  ReferralMethod._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReferralMethod values
  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod fax = ReferralMethod._(
    'fax',
  );

  /// phone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod phone = ReferralMethod._(
    'phone',
  );

  /// elec
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod elec = ReferralMethod._(
    'elec',
  );

  /// semail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod semail = ReferralMethod._(
    'semail',
  );

  /// mail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod mail = ReferralMethod._(
    'mail',
  );

  /// For instances where an Element is present but not value

  static final ReferralMethod elementOnly = ReferralMethod._('');

  /// List of all enum-like values
  static final List<ReferralMethod> values = [
    fax,
    phone,
    elec,
    semail,
    mail,
  ];

  /// Returns the enum value with an element attached
  ReferralMethod withElement(Element? newElement) {
    return ReferralMethod._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReferralMethod] from JSON.
  static ReferralMethod fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferralMethod.$fhirCode';
}
