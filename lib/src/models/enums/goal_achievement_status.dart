// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
class GoalAchievementStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GoalAchievementStatus._(super.value, [super.element]);

  /// Factory constructor to create [GoalAchievementStatus] from JSON.
  factory GoalAchievementStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAchievementStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalAchievementStatus cannot be constructed from JSON.',
      );
    }
    return GoalAchievementStatus._(value, element);
  }

  /// in_progress
  static final GoalAchievementStatus in_progress = GoalAchievementStatus._(
    'in-progress',
  );

  /// improving
  static final GoalAchievementStatus improving = GoalAchievementStatus._(
    'improving',
  );

  /// worsening
  static final GoalAchievementStatus worsening = GoalAchievementStatus._(
    'worsening',
  );

  /// no_change
  static final GoalAchievementStatus no_change = GoalAchievementStatus._(
    'no-change',
  );

  /// achieved
  static final GoalAchievementStatus achieved = GoalAchievementStatus._(
    'achieved',
  );

  /// sustaining
  static final GoalAchievementStatus sustaining = GoalAchievementStatus._(
    'sustaining',
  );

  /// not_achieved
  static final GoalAchievementStatus not_achieved = GoalAchievementStatus._(
    'not-achieved',
  );

  /// no_progress
  static final GoalAchievementStatus no_progress = GoalAchievementStatus._(
    'no-progress',
  );

  /// not_attainable
  static final GoalAchievementStatus not_attainable = GoalAchievementStatus._(
    'not-attainable',
  );

  /// For instances where an Element is present but not value

  static final GoalAchievementStatus elementOnly = GoalAchievementStatus._('');

  /// List of all enum-like values
  static final List<GoalAchievementStatus> values = [
    in_progress,
    improving,
    worsening,
    no_change,
    achieved,
    sustaining,
    not_achieved,
    no_progress,
    not_attainable,
  ];

  /// Clones the current instance
  @override
  GoalAchievementStatus clone() => GoalAchievementStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GoalAchievementStatus withElement(Element? newElement) {
    return GoalAchievementStatus._(value, newElement);
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
  GoalAchievementStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GoalAchievementStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
