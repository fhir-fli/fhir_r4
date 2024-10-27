// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
class ContactEntityType {
  // Private constructor for internal use (like enum)
  ContactEntityType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContactEntityType values
  /// BILL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType BILL = ContactEntityType._(
    'BILL',
  );

  /// ADMIN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType ADMIN = ContactEntityType._(
    'ADMIN',
  );

  /// HR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType HR = ContactEntityType._(
    'HR',
  );

  /// PAYOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType PAYOR = ContactEntityType._(
    'PAYOR',
  );

  /// PATINF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType PATINF = ContactEntityType._(
    'PATINF',
  );

  /// PRESS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactEntityType PRESS = ContactEntityType._(
    'PRESS',
  );

  /// For instances where an Element is present but not value

  static final ContactEntityType elementOnly = ContactEntityType._('');

  /// List of all enum-like values
  static final List<ContactEntityType> values = [
    BILL,
    ADMIN,
    HR,
    PAYOR,
    PATINF,
    PRESS,
  ];

  /// Returns the enum value with an element attached
  ContactEntityType withElement(Element? newElement) {
    return ContactEntityType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContactEntityType] from JSON.
  static ContactEntityType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactEntityType.elementOnly.withElement(element);
    }
    return ContactEntityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
