// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies types of events that might trigger the start of a goal.
class GoalStartEvent extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GoalStartEvent._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [GoalStartEvent] from JSON.
  factory GoalStartEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalStartEvent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalStartEvent cannot be constructed from JSON.',
      );
    }
    return GoalStartEvent._(value, element: element);
  }

  /// value32485007
  static final GoalStartEvent value32485007 = GoalStartEvent._(
    '32485007',
  );

  /// value308283009
  static final GoalStartEvent value308283009 = GoalStartEvent._(
    '308283009',
  );

  /// value442137000
  static final GoalStartEvent value442137000 = GoalStartEvent._(
    '442137000',
  );

  /// value386216000
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

  /// Clones the current instance
  @override
  GoalStartEvent clone() => GoalStartEvent._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent._(value, element: newElement);
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
  GoalStartEvent copyWith({
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
    return GoalStartEvent._(
      newValue ?? value,
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
