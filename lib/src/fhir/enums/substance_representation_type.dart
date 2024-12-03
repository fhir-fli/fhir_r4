// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
class SubstanceRepresentationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceRepresentationType._(super.value, [super.element]);

  /// Factory constructor to create [SubstanceRepresentationType] from JSON.
  factory SubstanceRepresentationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationType.elementOnly.withElement(element);
    }
    return SubstanceRepresentationType._(value, element);
  }

  /// Systematic
  static final SubstanceRepresentationType Systematic =
      SubstanceRepresentationType._(
    'Systematic',
  );

  /// Scientific
  static final SubstanceRepresentationType Scientific =
      SubstanceRepresentationType._(
    'Scientific',
  );

  /// Brand
  static final SubstanceRepresentationType Brand =
      SubstanceRepresentationType._(
    'Brand',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRepresentationType elementOnly =
      SubstanceRepresentationType._('');

  /// List of all enum-like values
  static final List<SubstanceRepresentationType> values = [
    Systematic,
    Scientific,
    Brand,
  ];

  /// Clones the current instance
  @override
  SubstanceRepresentationType clone() =>
      SubstanceRepresentationType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubstanceRepresentationType setElement(String name, dynamic elementValue) {
    return SubstanceRepresentationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubstanceRepresentationType withElement(Element? newElement) {
    return SubstanceRepresentationType._(value, newElement);
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
  SubstanceRepresentationType copyWith({
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
    return SubstanceRepresentationType._(
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
