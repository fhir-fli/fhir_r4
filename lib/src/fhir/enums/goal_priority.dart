// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
enum GoalPriority {
  /// Display: High Priority
  /// Definition: Indicates that the goal is of considerable importance and should be a primary focus of care delivery.
  high_priority('high-priority'),

  /// Display: Medium Priority
  /// Definition: Indicates that the goal has a reasonable degree of importance and that concrete action should be taken towards the goal. Attainment is not as critical as high-priority goals.
  medium_priority('medium-priority'),

  /// Display: Low Priority
  /// Definition: The goal is desirable but is not sufficiently important to devote significant resources to. Achievement of the goal may be sought when incidental to achieving other goals.
  low_priority('low-priority'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GoalPriority(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GoalPriority] instances.
  static GoalPriority fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalPriority.elementOnly.withElement(
        element,
      );
    }
    return GoalPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GoalPriority withElement(Element? newElement) {
    return GoalPriority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
