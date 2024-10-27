// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies types of events that might trigger the start of a goal.
class GoalStartEvent {
  // Private constructor for internal use (like enum)
  GoalStartEvent._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalStartEvent values
  /// value32485007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value32485007 = GoalStartEvent._(
    '32485007',
  );

  /// value308283009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value308283009 = GoalStartEvent._(
    '308283009',
  );

  /// value442137000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value442137000 = GoalStartEvent._(
    '442137000',
  );

  /// value386216000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalStartEvent value386216000 = GoalStartEvent._(
    '386216000',
  );

  /// For instances where an Element is present but not value

  static final GoalStartEvent elementOnly = GoalStartEvent._('');

  /// List of all enum-like values
  static final List<GoalStartEvent> values = [
    value32485007,
    value308283009,
    value442137000,
    value386216000,
  ];

  /// Returns the enum value with an element attached
  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
