// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
class GoalPriority extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GoalPriority._(super.value, [super.element]);

  /// Factory constructor to create [GoalPriority] from JSON.
  factory GoalPriority.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalPriority.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalPriority cannot be constructed from JSON.',
      );
    }
    return GoalPriority._(value, element);
  }

  /// high_priority
  static final GoalPriority high_priority = GoalPriority._(
    'high-priority',
  );

  /// medium_priority
  static final GoalPriority medium_priority = GoalPriority._(
    'medium-priority',
  );

  /// low_priority
  static final GoalPriority low_priority = GoalPriority._(
    'low-priority',
  );

  /// For instances where an Element is present but not value

  static final GoalPriority elementOnly = GoalPriority._('');

  /// List of all enum-like values
  static final List<GoalPriority> values = [
    high_priority,
    medium_priority,
    low_priority,
  ];

  /// Clones the current instance
  @override
  GoalPriority clone() => GoalPriority._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  GoalPriority setElement(
    String name,
    dynamic elementValue,
  ) {
    return GoalPriority._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  GoalPriority withElement(Element? newElement) {
    return GoalPriority._(value, newElement);
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
  GoalPriority copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GoalPriority._(
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
