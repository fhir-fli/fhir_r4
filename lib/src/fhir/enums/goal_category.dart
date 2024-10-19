// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example codes for grouping goals to use for filtering or presentation.
@collection
class GoalCategory {
  /// Constructor for internal use (like enum)
  GoalCategory({this.fhirCode, this.element})
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

  /// GoalCategory values
  /// dietary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalCategory dietary = GoalCategory(
    fhirCode: 'dietary',
  );

  /// safety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalCategory safety = GoalCategory(
    fhirCode: 'safety',
  );

  /// behavioral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalCategory behavioral = GoalCategory(
    fhirCode: 'behavioral',
  );

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalCategory nursing = GoalCategory(
    fhirCode: 'nursing',
  );

  /// physiotherapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalCategory physiotherapy = GoalCategory(
    fhirCode: 'physiotherapy',
  );

  /// For instances where an Element is present but not value

  static final GoalCategory elementOnly = GoalCategory();

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
    return GoalCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GoalCategory] from JSON.
  static GoalCategory fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalCategory.$fhirCode';
}
