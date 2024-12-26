// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection behavior of a group.
class ActionSelectionBehavior extends FhirCode {
  // Private constructor for internal use (like enum)
  ActionSelectionBehavior._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ActionSelectionBehavior] from JSON.
  factory ActionSelectionBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionSelectionBehavior cannot be constructed from JSON.',
      );
    }
    return ActionSelectionBehavior._(
      value,
      element: element,
    );
  }

  /// any
  static final ActionSelectionBehavior any = ActionSelectionBehavior._(
    'any',
  );

  /// all
  static final ActionSelectionBehavior all = ActionSelectionBehavior._(
    'all',
  );

  /// all_or_none
  static final ActionSelectionBehavior all_or_none = ActionSelectionBehavior._(
    'all-or-none',
  );

  /// exactly_one
  static final ActionSelectionBehavior exactly_one = ActionSelectionBehavior._(
    'exactly-one',
  );

  /// at_most_one
  static final ActionSelectionBehavior at_most_one = ActionSelectionBehavior._(
    'at-most-one',
  );

  /// one_or_more
  static final ActionSelectionBehavior one_or_more = ActionSelectionBehavior._(
    'one-or-more',
  );

  /// For instances where an Element is present but not value

  static final ActionSelectionBehavior elementOnly =
      ActionSelectionBehavior._('');

  /// List of all enum-like values
  static final List<ActionSelectionBehavior> values = [
    any,
    all,
    all_or_none,
    exactly_one,
    at_most_one,
    one_or_more,
  ];

  /// Clones the current instance
  @override
  ActionSelectionBehavior clone() => ActionSelectionBehavior._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionSelectionBehavior withElement(Element? newElement) {
    return ActionSelectionBehavior._(
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
  ActionSelectionBehavior copyWith({
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
    return ActionSelectionBehavior._(
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
