// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of resources that are part of group.
enum GroupType {
  /// Display: Person
  /// Definition: Group contains "person" Patient resources.
  person('person'),

  /// Display: Animal
  /// Definition: Group contains "animal" Patient resources.
  animal('animal'),

  /// Display: Practitioner
  /// Definition: Group contains healthcare practitioner resources (Practitioner or PractitionerRole).
  practitioner('practitioner'),

  /// Display: Device
  /// Definition: Group contains Device resources.
  device('device'),

  /// Display: Medication
  /// Definition: Group contains Medication resources.
  medication('medication'),

  /// Display: Substance
  /// Definition: Group contains Substance resources.
  substance('substance'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GroupType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GroupType] instances.
  static GroupType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(
        element,
      );
    }
    return GroupType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GroupType withElement(Element? newElement) {
    return GroupType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
