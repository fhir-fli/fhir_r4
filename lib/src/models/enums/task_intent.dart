// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes whether the task is a proposal, plan or full order.
class TaskIntent extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TaskIntent._(super.value, [super.element]);

  /// Factory constructor to create [TaskIntent] from JSON.
  factory TaskIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskIntent cannot be constructed from JSON.',
      );
    }
    return TaskIntent._(value, element);
  }

  /// unknown
  static final TaskIntent unknown = TaskIntent._(
    'unknown',
  );

  /// proposal
  static final TaskIntent proposal = TaskIntent._(
    'proposal',
  );

  /// plan
  static final TaskIntent plan = TaskIntent._(
    'plan',
  );

  /// directive
  static final TaskIntent directive = TaskIntent._(
    'directive',
  );

  /// order
  static final TaskIntent order = TaskIntent._(
    'order',
  );

  /// original_order
  static final TaskIntent original_order = TaskIntent._(
    'original-order',
  );

  /// reflex_order
  static final TaskIntent reflex_order = TaskIntent._(
    'reflex-order',
  );

  /// filler_order
  static final TaskIntent filler_order = TaskIntent._(
    'filler-order',
  );

  /// instance_order
  static final TaskIntent instance_order = TaskIntent._(
    'instance-order',
  );

  /// option
  static final TaskIntent option = TaskIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final TaskIntent elementOnly = TaskIntent._('');

  /// List of all enum-like values
  static final List<TaskIntent> values = [
    unknown,
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  TaskIntent clone() => TaskIntent._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TaskIntent withElement(Element? newElement) {
    return TaskIntent._(value, newElement);
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
  TaskIntent copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TaskIntent._(
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
