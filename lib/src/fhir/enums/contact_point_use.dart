// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Use of contact point.
class ContactPointUse {
  // Private constructor for internal use (like enum)
  ContactPointUse._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContactPointUse values
  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse home = ContactPointUse._(
    'home',
  );

  /// work
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse work = ContactPointUse._(
    'work',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse temp = ContactPointUse._(
    'temp',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse old = ContactPointUse._(
    'old',
  );

  /// mobile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse mobile = ContactPointUse._(
    'mobile',
  );

  /// For instances where an Element is present but not value

  static final ContactPointUse elementOnly = ContactPointUse._('');

  /// List of all enum-like values
  static final List<ContactPointUse> values = [
    home,
    work,
    temp,
    old,
    mobile,
  ];

  /// Returns the enum value with an element attached
  ContactPointUse withElement(Element? newElement) {
    return ContactPointUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContactPointUse] from JSON.
  static ContactPointUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUse.elementOnly.withElement(element);
    }
    return ContactPointUse._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
