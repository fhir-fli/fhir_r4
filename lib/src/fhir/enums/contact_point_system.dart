// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Telecommunications form for contact point.
class ContactPointSystem {
  // Private constructor for internal use (like enum)
  ContactPointSystem._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContactPointSystem values
  /// phone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem phone = ContactPointSystem._(
    'phone',
  );

  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem fax = ContactPointSystem._(
    'fax',
  );

  /// email
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem email = ContactPointSystem._(
    'email',
  );

  /// pager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem pager = ContactPointSystem._(
    'pager',
  );

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem url = ContactPointSystem._(
    'url',
  );

  /// sms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem sms = ContactPointSystem._(
    'sms',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointSystem other = ContactPointSystem._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final ContactPointSystem elementOnly = ContactPointSystem._('');

  /// List of all enum-like values
  static final List<ContactPointSystem> values = [
    phone,
    fax,
    email,
    pager,
    url,
    sms,
    other,
  ];

  /// Returns the enum value with an element attached
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContactPointSystem] from JSON.
  static ContactPointSystem fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContactPointSystem.$fhirCode';
}
