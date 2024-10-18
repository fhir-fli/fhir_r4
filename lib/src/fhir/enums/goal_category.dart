// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example codes for grouping goals to use for filtering or presentation.
enum GoalCategory {
  /// Display: Dietary
  /// Definition: Goals related to the consumption of food and/or beverages.
  dietary('dietary'),

  /// Display: Safety
  /// Definition: Goals related to the personal protection of the subject.
  safety('safety'),

  /// Display: Behavioral
  /// Definition: Goals related to the manner in which the subject acts.
  behavioral('behavioral'),

  /// Display: Nursing
  /// Definition: Goals related to the practice of nursing or established by nurses.
  nursing('nursing'),

  /// Display: Physiotherapy
  /// Definition: Goals related to the mobility and/or motor capability of the subject.
  physiotherapy('physiotherapy'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GoalCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GoalCategory] instances.
  static GoalCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalCategory.elementOnly.withElement(element);
    }
    return GoalCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GoalCategory withElement(Element? newElement) {
    return GoalCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
