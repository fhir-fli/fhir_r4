// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the type of action that is expected to be performed
class TaskCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TaskCode._(super.value, [super.element]);

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
      throw ArgumentError('TaskCode cannot be constructed from JSON.');
    }
    return TaskCode._(value, element);
  }

  /// approve
  static final TaskCode approve = TaskCode._(
    'approve',
  );

  /// fulfill
  static final TaskCode fulfill = TaskCode._(
    'fulfill',
  );

  /// abort
  static final TaskCode abort = TaskCode._(
    'abort',
  );

  /// replace
  static final TaskCode replace = TaskCode._(
    'replace',
  );

  /// change
  static final TaskCode change = TaskCode._(
    'change',
  );

  /// suspend
  static final TaskCode suspend = TaskCode._(
    'suspend',
  );

  /// resume
  static final TaskCode resume = TaskCode._(
    'resume',
  );

  /// For instances where an Element is present but not value

  static final TaskCode elementOnly = TaskCode._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TaskCode setElement(
    String name,
    dynamic elementValue,
  ) {
    return TaskCode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TaskCode withElement(Element? newElement) {
    return TaskCode._(value, newElement);
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
    return TaskCode._(
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
