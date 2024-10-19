// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
@collection
class ReferralMethod {
  /// Constructor for internal use (like enum)
  ReferralMethod({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReferralMethod values
  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod fax = ReferralMethod(
    fhirCode: 'fax',
  );

  /// phone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod phone = ReferralMethod(
    fhirCode: 'phone',
  );

  /// elec
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod elec = ReferralMethod(
    fhirCode: 'elec',
  );

  /// semail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod semail = ReferralMethod(
    fhirCode: 'semail',
  );

  /// mail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferralMethod mail = ReferralMethod(
    fhirCode: 'mail',
  );

  /// For instances where an Element is present but not value

  static final ReferralMethod elementOnly = ReferralMethod();

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
    return ReferralMethod(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
