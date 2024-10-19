// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of action to be performed.
@collection
class ActionType {
  /// Constructor for internal use (like enum)
  ActionType({this.fhirCode, this.element})
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

  /// ActionType values
  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionType create = ActionType(
    fhirCode: 'create',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionType update = ActionType(
    fhirCode: 'update',
  );

  /// remove
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionType remove = ActionType(
    fhirCode: 'remove',
  );

  /// fire_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionType fire_event = ActionType(
    fhirCode: 'fire-event',
  );

  /// For instances where an Element is present but not value

  static final ActionType elementOnly = ActionType();

  /// List of all enum-like values
  static final List<ActionType> values = [
    create,
    update,
    remove,
    fire_event,
  ];

  /// Returns the enum value with an element attached
  ActionType withElement(Element? newElement) {
    return ActionType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionType] from JSON.
  static ActionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly.withElement(element);
    }
    return ActionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionType.$fhirCode';
}
