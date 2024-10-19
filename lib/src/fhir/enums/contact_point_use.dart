// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Use of contact point.
@collection
class ContactPointUse {
  /// Constructor for internal use (like enum)
  ContactPointUse({this.fhirCode, this.element})
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

  /// ContactPointUse values
  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse home = ContactPointUse(
    fhirCode: 'home',
  );

  /// work
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse work = ContactPointUse(
    fhirCode: 'work',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse temp = ContactPointUse(
    fhirCode: 'temp',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse old = ContactPointUse(
    fhirCode: 'old',
  );

  /// mobile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContactPointUse mobile = ContactPointUse(
    fhirCode: 'mobile',
  );

  /// For instances where an Element is present but not value

  static final ContactPointUse elementOnly = ContactPointUse();

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
    return ContactPointUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ContactPointUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContactPointUse.$fhirCode';
}
