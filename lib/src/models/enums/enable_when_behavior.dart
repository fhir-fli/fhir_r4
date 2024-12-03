// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Controls how multiple enableWhen values are interpreted - whether all or any must be true.
class EnableWhenBehavior extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EnableWhenBehavior._(super.value, [super.element]);

  /// Factory constructor to create [EnableWhenBehavior] from JSON.
  factory EnableWhenBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnableWhenBehavior cannot be constructed from JSON.',
      );
    }
    return EnableWhenBehavior._(value, element);
  }

  /// all
  static final EnableWhenBehavior all = EnableWhenBehavior._(
    'all',
  );

  /// any
  static final EnableWhenBehavior any = EnableWhenBehavior._(
    'any',
  );

  /// For instances where an Element is present but not value

  static final EnableWhenBehavior elementOnly = EnableWhenBehavior._('');

  /// List of all enum-like values
  static final List<EnableWhenBehavior> values = [
    all,
    any,
  ];

  /// Clones the current instance
  @override
  EnableWhenBehavior clone() => EnableWhenBehavior._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EnableWhenBehavior setElement(
    String name,
    dynamic elementValue,
  ) {
    return EnableWhenBehavior._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior._(value, newElement);
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
  EnableWhenBehavior copyWith({
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
    return EnableWhenBehavior._(
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
