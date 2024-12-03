// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection frequency behavior for an action or group.
class ActionPrecheckBehavior extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionPrecheckBehavior._(super.value, [super.element]);

  /// Factory constructor to create [ActionPrecheckBehavior] from JSON.
  factory ActionPrecheckBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ActionPrecheckBehavior cannot be constructed from JSON.');
    }
    return ActionPrecheckBehavior._(value, element);
  }

  /// yes
  static final ActionPrecheckBehavior yes = ActionPrecheckBehavior._(
    'yes',
  );

  /// no
  static final ActionPrecheckBehavior no = ActionPrecheckBehavior._(
    'no',
  );

  /// For instances where an Element is present but not value

  static final ActionPrecheckBehavior elementOnly =
      ActionPrecheckBehavior._('');

  /// List of all enum-like values
  static final List<ActionPrecheckBehavior> values = [
    yes,
    no,
  ];

  /// Clones the current instance
  @override
  ActionPrecheckBehavior clone() => ActionPrecheckBehavior._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ActionPrecheckBehavior setElement(
    String name,
    dynamic elementValue,
  ) {
    return ActionPrecheckBehavior._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior._(value, newElement);
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
  ActionPrecheckBehavior copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionPrecheckBehavior._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
