// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Identifies types of events that might trigger the start of a goal.
@collection
class GoalStartEvent {
  /// Constructor for internal use (like enum)
  GoalStartEvent({this.fhirCode, this.element})
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

  /// GoalStartEvent values
  /// value32485007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value32485007 = GoalStartEvent(
    fhirCode: '32485007',
  );

  /// value308283009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value308283009 = GoalStartEvent(
    fhirCode: '308283009',
  );

  /// value442137000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value442137000 = GoalStartEvent(
    fhirCode: '442137000',
  );

  /// value386216000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value386216000 = GoalStartEvent(
    fhirCode: '386216000',
  );

  /// For instances where an Element is present but not value

  static final GoalStartEvent elementOnly = GoalStartEvent();

  /// List of all enum-like values
  static final List<GoalStartEvent> values = [
    value32485007,
    value308283009,
    value442137000,
    value386216000,
  ];

  /// Returns the enum value with an element attached
  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GoalStartEvent] from JSON.
  static GoalStartEvent fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalStartEvent.elementOnly.withElement(element);
    }
    return GoalStartEvent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalStartEvent.$fhirCode';
}
