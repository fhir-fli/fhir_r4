// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Set of handling instructions prior testing of the specimen.
@collection
class HandlingConditionSet {
  /// Constructor for internal use (like enum)
  HandlingConditionSet({this.fhirCode, this.element})
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

  /// HandlingConditionSet values
  /// room
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final HandlingConditionSet room = HandlingConditionSet(
    fhirCode: 'room',
  );

  /// refrigerated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final HandlingConditionSet refrigerated = HandlingConditionSet(
    fhirCode: 'refrigerated',
  );

  /// frozen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final HandlingConditionSet frozen = HandlingConditionSet(
    fhirCode: 'frozen',
  );

  /// For instances where an Element is present but not value

  static final HandlingConditionSet elementOnly = HandlingConditionSet();

  /// List of all enum-like values
  static final List<HandlingConditionSet> values = [
    room,
    refrigerated,
    frozen,
  ];

  /// Returns the enum value with an element attached
  HandlingConditionSet withElement(Element? newElement) {
    return HandlingConditionSet(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [HandlingConditionSet] from JSON.
  static HandlingConditionSet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HandlingConditionSet.elementOnly.withElement(element);
    }
    return HandlingConditionSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'HandlingConditionSet.$fhirCode';
}
