// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example codes for grouping goals to use for filtering or presentation.
class GoalCategory {
  // Private constructor for internal use (like enum)
  GoalCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [GoalCategory] from JSON.
  factory GoalCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalCategory.elementOnly.withElement(element);
    }
    return GoalCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalCategory values
  /// dietary
  static final GoalCategory dietary = GoalCategory._(
    'dietary',
  );

  /// safety
  static final GoalCategory safety = GoalCategory._(
    'safety',
  );

  /// behavioral
  static final GoalCategory behavioral = GoalCategory._(
    'behavioral',
  );

  /// nursing
  static final GoalCategory nursing = GoalCategory._(
    'nursing',
  );

  /// physiotherapy
  static final GoalCategory physiotherapy = GoalCategory._(
    'physiotherapy',
  );

  /// For instances where an Element is present but not value

  static final GoalCategory elementOnly = GoalCategory._('');

  /// List of all enum-like values
  static final List<GoalCategory> values = [
    dietary,
    safety,
    behavioral,
    nursing,
    physiotherapy,
  ];

  /// Returns the enum value with an element attached
  GoalCategory withElement(Element? newElement) {
    return GoalCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
