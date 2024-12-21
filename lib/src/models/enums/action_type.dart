// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of action to be performed.
class ActionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ActionType] from JSON.
  factory ActionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionType cannot be constructed from JSON.',
      );
    }
    return ActionType._(value, element: element);
  }

  /// create
  static final ActionType create = ActionType._(
    'create',
  );

  /// update
  static final ActionType update = ActionType._(
    'update',
  );

  /// remove
  static final ActionType remove = ActionType._(
    'remove',
  );

  /// fire_event
  static final ActionType fire_event = ActionType._(
    'fire-event',
  );

  /// For instances where an Element is present but not value

  static final ActionType elementOnly = ActionType._('');

  /// List of all enum-like values
  static final List<ActionType> values = [
    create,
    update,
    remove,
    fire_event,
  ];

  /// Clones the current instance
  @override
  ActionType clone() => ActionType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionType withElement(Element? newElement) {
    return ActionType._(
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
  ActionType copyWith({
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
    return ActionType._(
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
