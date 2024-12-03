// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
class StructureMapGroupTypeMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StructureMapGroupTypeMode._(super.value, [super.element]);

  /// Factory constructor to create [StructureMapGroupTypeMode] from JSON.
  factory StructureMapGroupTypeMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'StructureMapGroupTypeMode cannot be constructed from JSON.');
    }
    return StructureMapGroupTypeMode._(value, element);
  }

  /// none
  static final StructureMapGroupTypeMode none = StructureMapGroupTypeMode._(
    'none',
  );

  /// types
  static final StructureMapGroupTypeMode types = StructureMapGroupTypeMode._(
    'types',
  );

  /// type_and_types
  static final StructureMapGroupTypeMode type_and_types =
      StructureMapGroupTypeMode._(
    'type-and-types',
  );

  /// For instances where an Element is present but not value

  static final StructureMapGroupTypeMode elementOnly =
      StructureMapGroupTypeMode._('');

  /// List of all enum-like values
  static final List<StructureMapGroupTypeMode> values = [
    none,
    types,
    type_and_types,
  ];

  /// Clones the current instance
  @override
  StructureMapGroupTypeMode clone() => StructureMapGroupTypeMode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StructureMapGroupTypeMode setElement(
    String name,
    dynamic elementValue,
  ) {
    return StructureMapGroupTypeMode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode._(value, newElement);
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
  StructureMapGroupTypeMode copyWith({
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
    return StructureMapGroupTypeMode._(
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
