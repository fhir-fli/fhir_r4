// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
@Entity()
class ReferralMethod extends FhirCode {
  /// Factory constructor to create [ReferralMethod] from JSON.
  factory ReferralMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferralMethod.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReferralMethod._(value, element);
    }
    throw ArgumentError(
      'ReferralMethod.fromJson: JSON value is not a valid value',
    );
  }

  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferralMethod.fax([this.element])
      : dbValue = 'fax',
        super('fax', element);

  /// phone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferralMethod.phone([this.element])
      : dbValue = 'phone',
        super('phone', element);

  /// elec
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferralMethod.elec([this.element])
      : dbValue = 'elec',
        super('elec', element);

  /// semail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferralMethod.semail([this.element])
      : dbValue = 'semail',
        super('semail', element);

  /// mail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferralMethod.mail([this.element])
      : dbValue = 'mail',
        super('mail', element);

  /// For instances where an Element is present but not value

  ReferralMethod.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReferralMethod._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'fax',
    'phone',
    'elec',
    'semail',
    'mail',
  ];

  /// Returns the enum value with an element attached
  ReferralMethod withElement(Element? newElement) {
    return ReferralMethod._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferralMethod.$value';
}
