// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of resources that are part of group.
class GroupType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GroupType._(super.value, [super.element]);

  /// Factory constructor to create [GroupType] from JSON.
  factory GroupType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupType cannot be constructed from JSON.',
      );
    }
    return GroupType._(value, element);
  }

  /// person
  static final GroupType person = GroupType._(
    'person',
  );

  /// animal
  static final GroupType animal = GroupType._(
    'animal',
  );

  /// practitioner
  static final GroupType practitioner = GroupType._(
    'practitioner',
  );

  /// device
  static final GroupType device = GroupType._(
    'device',
  );

  /// medication
  static final GroupType medication = GroupType._(
    'medication',
  );

  /// substance
  static final GroupType substance = GroupType._(
    'substance',
  );

  /// For instances where an Element is present but not value

  static final GroupType elementOnly = GroupType._('');

  /// List of all enum-like values
  static final List<GroupType> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Clones the current instance
  @override
  GroupType clone() => GroupType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  GroupType setElement(
    String name,
    dynamic elementValue,
  ) {
    return GroupType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  GroupType withElement(Element? newElement) {
    return GroupType._(value, newElement);
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
  GroupType copyWith({
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
    return GroupType._(
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
