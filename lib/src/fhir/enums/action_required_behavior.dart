// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines expectations around whether an action or action group is required.
class ActionRequiredBehavior extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionRequiredBehavior._(super.value, [super.element]);

  /// Factory constructor to create [ActionRequiredBehavior] from JSON.
  factory ActionRequiredBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior.elementOnly.withElement(element);
    }
    return ActionRequiredBehavior._(value, element);
  }

  /// must
  static final ActionRequiredBehavior must = ActionRequiredBehavior._(
    'must',
  );

  /// could
  static final ActionRequiredBehavior could = ActionRequiredBehavior._(
    'could',
  );

  /// must_unless_documented
  static final ActionRequiredBehavior must_unless_documented =
      ActionRequiredBehavior._(
    'must-unless-documented',
  );

  /// For instances where an Element is present but not value

  static final ActionRequiredBehavior elementOnly =
      ActionRequiredBehavior._('');

  /// List of all enum-like values
  static final List<ActionRequiredBehavior> values = [
    must,
    could,
    must_unless_documented,
  ];

  /// Clones the current instance
  @override
  ActionRequiredBehavior clone() =>
      ActionRequiredBehavior._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ActionRequiredBehavior setElement(String name, dynamic elementValue) {
    return ActionRequiredBehavior._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior._(value, newElement);
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
  ActionRequiredBehavior copyWith({
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
    return ActionRequiredBehavior._(
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
