// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
class SubstanceRepresentationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceRepresentationType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SubstanceRepresentationType] from JSON.
  factory SubstanceRepresentationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubstanceRepresentationType cannot be constructed from JSON.',
      );
    }
    return SubstanceRepresentationType._(value, element: element);
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
  SubstanceRepresentationType clone() => SubstanceRepresentationType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubstanceRepresentationType withElement(Element? newElement) {
    return SubstanceRepresentationType._(value, element: newElement);
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
    return SubstanceRepresentationType._(
      newValue ?? value,
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
