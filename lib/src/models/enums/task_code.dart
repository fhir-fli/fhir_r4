// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the type of action that is expected to be performed
class TaskCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TaskCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [TaskCode] from JSON.
  factory TaskCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskCode cannot be constructed from JSON.',
      );
    }
    return TaskCode._(value: value, element: element);
  }

  /// approve
  static final TaskCode approve = TaskCode._(
    value: 'approve',
  );

  /// fulfill
  static final TaskCode fulfill = TaskCode._(
    value: 'fulfill',
  );

  /// abort
  static final TaskCode abort = TaskCode._(
    value: 'abort',
  );

  /// replace
  static final TaskCode replace = TaskCode._(
    value: 'replace',
  );

  /// change
  static final TaskCode change = TaskCode._(
    value: 'change',
  );

  /// suspend
  static final TaskCode suspend = TaskCode._(
    value: 'suspend',
  );

  /// resume
  static final TaskCode resume = TaskCode._(
    value: 'resume',
  );

  /// For instances where an Element is present but not value

  static final TaskCode elementOnly = TaskCode._(value: '');

  /// List of all enum-like values
  static final List<TaskCode> values = [
    approve,
    fulfill,
    abort,
    replace,
    change,
    suspend,
    resume,
  ];

  /// Clones the current instance
  @override
  TaskCode clone() => TaskCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TaskCode withElement(Element? newElement) {
    return TaskCode._(value: value, element: newElement);
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
  TaskCode copyWith({
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
    return TaskCode._(
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
