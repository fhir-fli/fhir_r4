// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that specifies a type of context being specified by a usage context.
class UsageContextType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UsageContextType._(super.value, [super.element]);

  /// Factory constructor to create [UsageContextType] from JSON.
  factory UsageContextType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UsageContextType.elementOnly.withElement(element);
    }
    return UsageContextType._(value, element);
  }

  /// gender
  static final UsageContextType gender = UsageContextType._(
    'gender',
  );

  /// age
  static final UsageContextType age = UsageContextType._(
    'age',
  );

  /// focus
  static final UsageContextType focus = UsageContextType._(
    'focus',
  );

  /// user
  static final UsageContextType user = UsageContextType._(
    'user',
  );

  /// workflow
  static final UsageContextType workflow = UsageContextType._(
    'workflow',
  );

  /// task
  static final UsageContextType task = UsageContextType._(
    'task',
  );

  /// venue
  static final UsageContextType venue = UsageContextType._(
    'venue',
  );

  /// species
  static final UsageContextType species = UsageContextType._(
    'species',
  );

  /// program
  static final UsageContextType program = UsageContextType._(
    'program',
  );

  /// For instances where an Element is present but not value

  static final UsageContextType elementOnly = UsageContextType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  UsageContextType setElement(
    String name,
    dynamic elementValue,
  ) {
    return UsageContextType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  UsageContextType withElement(Element? newElement) {
    return UsageContextType._(value, newElement);
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
    return UsageContextType._(
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
