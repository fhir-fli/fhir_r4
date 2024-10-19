// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Defines the types of relationships between actions.
@collection
class ActionRelationshipType {
  /// Constructor for internal use (like enum)
  ActionRelationshipType({this.fhirCode, this.element})
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

  /// ActionRelationshipType values
  /// before_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType before_start = ActionRelationshipType(
    fhirCode: 'before-start',
  );

  /// before
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType before = ActionRelationshipType(
    fhirCode: 'before',
  );

  /// before_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType before_end = ActionRelationshipType(
    fhirCode: 'before-end',
  );

  /// concurrent_with_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType concurrent_with_start =
      ActionRelationshipType(
    fhirCode: 'concurrent-with-start',
  );

  /// concurrent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType concurrent = ActionRelationshipType(
    fhirCode: 'concurrent',
  );

  /// concurrent_with_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType concurrent_with_end =
      ActionRelationshipType(
    fhirCode: 'concurrent-with-end',
  );

  /// after_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType after_start = ActionRelationshipType(
    fhirCode: 'after-start',
  );

  /// after
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType after = ActionRelationshipType(
    fhirCode: 'after',
  );

  /// after_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRelationshipType after_end = ActionRelationshipType(
    fhirCode: 'after-end',
  );

  /// For instances where an Element is present but not value

  static final ActionRelationshipType elementOnly = ActionRelationshipType();

  /// List of all enum-like values
  static final List<ActionRelationshipType> values = [
    before_start,
    before,
    before_end,
    concurrent_with_start,
    concurrent,
    concurrent_with_end,
    after_start,
    after,
    after_end,
  ];

  /// Returns the enum value with an element attached
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionRelationshipType] from JSON.
  static ActionRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    }
    return ActionRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionRelationshipType.$fhirCode';
}
