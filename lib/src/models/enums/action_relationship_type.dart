// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the types of relationships between actions.
class ActionRelationshipType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionRelationshipType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ActionRelationshipType] from JSON.
  factory ActionRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRelationshipType cannot be constructed from JSON.',
      );
    }
    return ActionRelationshipType._(value: value, element: element);
  }

  /// before_start
  static final ActionRelationshipType before_start = ActionRelationshipType._(
    value: 'before-start',
  );

  /// before
  static final ActionRelationshipType before = ActionRelationshipType._(
    value: 'before',
  );

  /// before_end
  static final ActionRelationshipType before_end = ActionRelationshipType._(
    value: 'before-end',
  );

  /// concurrent_with_start
  static final ActionRelationshipType concurrent_with_start =
      ActionRelationshipType._(
    value: 'concurrent-with-start',
  );

  /// concurrent
  static final ActionRelationshipType concurrent = ActionRelationshipType._(
    value: 'concurrent',
  );

  /// concurrent_with_end
  static final ActionRelationshipType concurrent_with_end =
      ActionRelationshipType._(
    value: 'concurrent-with-end',
  );

  /// after_start
  static final ActionRelationshipType after_start = ActionRelationshipType._(
    value: 'after-start',
  );

  /// after
  static final ActionRelationshipType after = ActionRelationshipType._(
    value: 'after',
  );

  /// after_end
  static final ActionRelationshipType after_end = ActionRelationshipType._(
    value: 'after-end',
  );

  /// For instances where an Element is present but not value

  static final ActionRelationshipType elementOnly =
      ActionRelationshipType._(value: '');

  /// List of all enum-like values
  static final List<ActionRelationshipType> values = [
    before_start,
    before,
    before_end,
    concurrent_with_start,
    concurrent,
    concurrent_with_end,
    after_start,
    after,
    after_end,
  ];

  /// Clones the current instance
  @override
  ActionRelationshipType clone() => ActionRelationshipType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType._(value: value, element: newElement);
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
  ActionRelationshipType copyWith({
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
    return ActionRelationshipType._(
      value: newValue ?? value,
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
