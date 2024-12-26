// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection frequency behavior for an action or group.
class ActionPrecheckBehavior extends FhirCode {
  // Private constructor for internal use (like enum)
  ActionPrecheckBehavior._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

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
        'ActionPrecheckBehavior cannot be constructed from JSON.',
      );
    }
    return ActionPrecheckBehavior._(
      value,
      element: element,
    );
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
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior._(
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
  ActionPrecheckBehavior copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionPrecheckBehavior._(
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
