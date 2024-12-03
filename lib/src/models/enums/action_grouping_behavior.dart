// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines organization behavior of a group.
class ActionGroupingBehavior extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionGroupingBehavior._(super.value, [super.element]);

  /// Factory constructor to create [ActionGroupingBehavior] from JSON.
  factory ActionGroupingBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionGroupingBehavior cannot be constructed from JSON.',
      );
    }
    return ActionGroupingBehavior._(value, element);
  }

  /// visual_group
  static final ActionGroupingBehavior visual_group = ActionGroupingBehavior._(
    'visual-group',
  );

  /// logical_group
  static final ActionGroupingBehavior logical_group = ActionGroupingBehavior._(
    'logical-group',
  );

  /// sentence_group
  static final ActionGroupingBehavior sentence_group = ActionGroupingBehavior._(
    'sentence-group',
  );

  /// For instances where an Element is present but not value

  static final ActionGroupingBehavior elementOnly =
      ActionGroupingBehavior._('');

  /// List of all enum-like values
  static final List<ActionGroupingBehavior> values = [
    visual_group,
    logical_group,
    sentence_group,
  ];

  /// Clones the current instance
  @override
  ActionGroupingBehavior clone() => ActionGroupingBehavior._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ActionGroupingBehavior setElement(
    String name,
    dynamic elementValue,
  ) {
    return ActionGroupingBehavior._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior._(value, newElement);
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
  ActionGroupingBehavior copyWith({
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
    return ActionGroupingBehavior._(
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
