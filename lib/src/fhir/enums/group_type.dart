// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of resources that are part of group.
class GroupType {
  // Private constructor for internal use (like enum)
  GroupType._(this.fhirCode, {this.element});

  /// Factory constructor to create [GroupType] from JSON.
  factory GroupType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    }
    return GroupType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GroupType values
  /// person
  static final GroupType person = GroupType._(
    'person',
  );

  /// animal
  static final GroupType animal = GroupType._(
    'animal',
  );

  /// practitioner
  static final GroupType practitioner = GroupType._(
    'practitioner',
  );

  /// device
  static final GroupType device = GroupType._(
    'device',
  );

  /// medication
  static final GroupType medication = GroupType._(
    'medication',
  );

  /// substance
  static final GroupType substance = GroupType._(
    'substance',
  );

  /// For instances where an Element is present but not value

  static final GroupType elementOnly = GroupType._('');

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
    return GroupType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
