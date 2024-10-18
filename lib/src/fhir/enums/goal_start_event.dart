// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies types of events that might trigger the start of a goal.
enum GoalStartEvent {
  /// Display: Admission to hospital
  /// Definition:
  value32485007('32485007'),

  /// Display: Discharge from hospital
  /// Definition:
  value308283009('308283009'),

  /// Display: Completion time of procedure
  /// Definition:
  value442137000('442137000'),

  /// Display: Childbirth
  /// Definition:
  value386216000('386216000'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GoalStartEvent(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GoalStartEvent] instances.
  static GoalStartEvent fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalStartEvent.elementOnly.withElement(
        element,
      );
    }
    return GoalStartEvent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
