// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Types of resources that are part of group.
@collection
class GroupType {
  /// Constructor for internal use (like enum)
  GroupType({this.fhirCode, this.element})
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

  /// GroupType values
  /// person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType person = GroupType(
    fhirCode: 'person',
  );

  /// animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType animal = GroupType(
    fhirCode: 'animal',
  );

  /// practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType practitioner = GroupType(
    fhirCode: 'practitioner',
  );

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType device = GroupType(
    fhirCode: 'device',
  );

  /// medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType medication = GroupType(
    fhirCode: 'medication',
  );

  /// substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupType substance = GroupType(
    fhirCode: 'substance',
  );

  /// For instances where an Element is present but not value

  static final GroupType elementOnly = GroupType();

  /// List of all enum-like values
  static final List<GroupType> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Returns the enum value with an element attached
  GroupType withElement(Element? newElement) {
    return GroupType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GroupType] from JSON.
  static GroupType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    }
    return GroupType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GroupType.$fhirCode';
}
