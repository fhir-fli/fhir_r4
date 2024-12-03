// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Degree of preference of a type of conditioned specimen.
class SpecimenContainedPreference extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SpecimenContainedPreference._(super.value, [super.element]);

  /// Factory constructor to create [SpecimenContainedPreference] from JSON.
  factory SpecimenContainedPreference.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenContainedPreference cannot be constructed from JSON.',
      );
    }
    return SpecimenContainedPreference._(value, element);
  }

  /// preferred
  static final SpecimenContainedPreference preferred =
      SpecimenContainedPreference._(
    'preferred',
  );

  /// alternate
  static final SpecimenContainedPreference alternate =
      SpecimenContainedPreference._(
    'alternate',
  );

  /// For instances where an Element is present but not value

  static final SpecimenContainedPreference elementOnly =
      SpecimenContainedPreference._('');

  /// List of all enum-like values
  static final List<SpecimenContainedPreference> values = [
    preferred,
    alternate,
  ];

  /// Clones the current instance
  @override
  SpecimenContainedPreference clone() => SpecimenContainedPreference._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SpecimenContainedPreference setElement(
    String name,
    dynamic elementValue,
  ) {
    return SpecimenContainedPreference._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference._(value, newElement);
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
  SpecimenContainedPreference copyWith({
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
    return SpecimenContainedPreference._(
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
