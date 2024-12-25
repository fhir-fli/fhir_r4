// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines behavior for an action or a group for how many times that item may be repeated.
class ActionCardinalityBehavior extends FhirCode {
  // Private constructor for internal use (like enum)
  ActionCardinalityBehavior._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ActionCardinalityBehavior] from JSON.
  factory ActionCardinalityBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionCardinalityBehavior cannot be constructed from JSON.',
      );
    }
    return ActionCardinalityBehavior._(
      value,
      element: element,
    );
  }

  /// single
  static final ActionCardinalityBehavior single = ActionCardinalityBehavior._(
    'single',
  );

  /// multiple
  static final ActionCardinalityBehavior multiple = ActionCardinalityBehavior._(
    'multiple',
  );

  /// For instances where an Element is present but not value

  static final ActionCardinalityBehavior elementOnly =
      ActionCardinalityBehavior._('');

  /// List of all enum-like values
  static final List<ActionCardinalityBehavior> values = [
    single,
    multiple,
  ];

  /// Clones the current instance
  @override
  ActionCardinalityBehavior clone() => ActionCardinalityBehavior._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionCardinalityBehavior withElement(Element? newElement) {
    return ActionCardinalityBehavior._(
      value,
      element: newElement,
    );
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
  ActionCardinalityBehavior copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionCardinalityBehavior._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
