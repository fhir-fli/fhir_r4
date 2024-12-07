// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example codes for grouping goals to use for filtering or presentation.
class GoalCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GoalCategory._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [GoalCategory] from JSON.
  factory GoalCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalCategory cannot be constructed from JSON.',
      );
    }
    return GoalCategory._(value: value, element: element);
  }

  /// dietary
  static final GoalCategory dietary = GoalCategory._(
    value: 'dietary',
  );

  /// safety
  static final GoalCategory safety = GoalCategory._(
    value: 'safety',
  );

  /// behavioral
  static final GoalCategory behavioral = GoalCategory._(
    value: 'behavioral',
  );

  /// nursing
  static final GoalCategory nursing = GoalCategory._(
    value: 'nursing',
  );

  /// physiotherapy
  static final GoalCategory physiotherapy = GoalCategory._(
    value: 'physiotherapy',
  );

  /// For instances where an Element is present but not value

  static final GoalCategory elementOnly = GoalCategory._(value: '');

  /// List of all enum-like values
  static final List<GoalCategory> values = [
    dietary,
    safety,
    behavioral,
    nursing,
    physiotherapy,
  ];

  /// Clones the current instance
  @override
  GoalCategory clone() => GoalCategory._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GoalCategory withElement(Element? newElement) {
    return GoalCategory._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  GoalCategory copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GoalCategory._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
