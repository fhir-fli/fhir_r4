// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
class ResearchElementType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ResearchElementType._(super.value, [super.element]);

  /// Factory constructor to create [ResearchElementType] from JSON.
  factory ResearchElementType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly.withElement(element);
    }
    return ResearchElementType._(value, element);
  }

  /// population
  static final ResearchElementType population = ResearchElementType._(
    'population',
  );

  /// exposure
  static final ResearchElementType exposure = ResearchElementType._(
    'exposure',
  );

  /// outcome
  static final ResearchElementType outcome = ResearchElementType._(
    'outcome',
  );

  /// For instances where an Element is present but not value

  static final ResearchElementType elementOnly = ResearchElementType._('');

  /// List of all enum-like values
  static final List<ResearchElementType> values = [
    population,
    exposure,
    outcome,
  ];

  /// Clones the current instance
  @override
  ResearchElementType clone() => ResearchElementType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ResearchElementType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ResearchElementType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType._(value, newElement);
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
  ResearchElementType copyWith({
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
    return ResearchElementType._(
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
