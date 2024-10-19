// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
@collection
class GoalPriority {
  /// Constructor for internal use (like enum)
  GoalPriority({this.fhirCode, this.element})
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

  /// GoalPriority values
  /// high_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalPriority high_priority = GoalPriority(
    fhirCode: 'high-priority',
  );

  /// medium_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalPriority medium_priority = GoalPriority(
    fhirCode: 'medium-priority',
  );

  /// low_priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalPriority low_priority = GoalPriority(
    fhirCode: 'low-priority',
  );

  /// For instances where an Element is present but not value

  static final GoalPriority elementOnly = GoalPriority();

  /// List of all enum-like values
  static final List<GoalPriority> values = [
    high_priority,
    medium_priority,
    low_priority,
  ];

  /// Returns the enum value with an element attached
  GoalPriority withElement(Element? newElement) {
    return GoalPriority(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GoalPriority] from JSON.
  static GoalPriority fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalPriority.elementOnly.withElement(element);
    }
    return GoalPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalPriority.$fhirCode';
}
