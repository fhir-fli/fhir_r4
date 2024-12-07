// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that specifies a type of context being specified by a usage context.
class UsageContextType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UsageContextType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [UsageContextType] from JSON.
  factory UsageContextType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UsageContextType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UsageContextType cannot be constructed from JSON.',
      );
    }
    return UsageContextType._(value: value, element: element);
  }

  /// gender
  static final UsageContextType gender = UsageContextType._(
    value: 'gender',
  );

  /// age
  static final UsageContextType age = UsageContextType._(
    value: 'age',
  );

  /// focus
  static final UsageContextType focus = UsageContextType._(
    value: 'focus',
  );

  /// user
  static final UsageContextType user = UsageContextType._(
    value: 'user',
  );

  /// workflow
  static final UsageContextType workflow = UsageContextType._(
    value: 'workflow',
  );

  /// task
  static final UsageContextType task = UsageContextType._(
    value: 'task',
  );

  /// venue
  static final UsageContextType venue = UsageContextType._(
    value: 'venue',
  );

  /// species
  static final UsageContextType species = UsageContextType._(
    value: 'species',
  );

  /// program
  static final UsageContextType program = UsageContextType._(
    value: 'program',
  );

  /// For instances where an Element is present but not value

  static final UsageContextType elementOnly = UsageContextType._(value: '');

  /// List of all enum-like values
  static final List<UsageContextType> values = [
    gender,
    age,
    focus,
    user,
    workflow,
    task,
    venue,
    species,
    program,
  ];

  /// Clones the current instance
  @override
  UsageContextType clone() => UsageContextType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  UsageContextType withElement(Element? newElement) {
    return UsageContextType._(value: value, element: newElement);
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
  UsageContextType copyWith({
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
    return UsageContextType._(
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
