// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConceptMapGroupUnmappedMode._(super.value, [super.element]);

  /// Factory constructor to create [ConceptMapGroupUnmappedMode] from JSON.
  factory ConceptMapGroupUnmappedMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly.withElement(element);
    }
    return ConceptMapGroupUnmappedMode._(value, element);
  }

  /// provided
  static final ConceptMapGroupUnmappedMode provided =
      ConceptMapGroupUnmappedMode._(
    'provided',
  );

  /// fixed
  static final ConceptMapGroupUnmappedMode fixed =
      ConceptMapGroupUnmappedMode._(
    'fixed',
  );

  /// other_map
  static final ConceptMapGroupUnmappedMode other_map =
      ConceptMapGroupUnmappedMode._(
    'other-map',
  );

  /// For instances where an Element is present but not value

  static final ConceptMapGroupUnmappedMode elementOnly =
      ConceptMapGroupUnmappedMode._('');

  /// List of all enum-like values
  static final List<ConceptMapGroupUnmappedMode> values = [
    provided,
    fixed,
    other_map,
  ];

  /// Clones the current instance
  @override
  ConceptMapGroupUnmappedMode clone() => ConceptMapGroupUnmappedMode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConceptMapGroupUnmappedMode setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConceptMapGroupUnmappedMode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode._(value, newElement);
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
  ConceptMapGroupUnmappedMode copyWith({
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
    return ConceptMapGroupUnmappedMode._(
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
