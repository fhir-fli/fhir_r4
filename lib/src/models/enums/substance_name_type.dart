// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
class SubstanceNameType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceNameType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SubstanceNameType] from JSON.
  factory SubstanceNameType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubstanceNameType cannot be constructed from JSON.',
      );
    }
    return SubstanceNameType._(value, element: element);
  }

  /// Systematic
  static final SubstanceNameType Systematic = SubstanceNameType._(
    'Systematic',
  );

  /// Scientific
  static final SubstanceNameType Scientific = SubstanceNameType._(
    'Scientific',
  );

  /// Brand
  static final SubstanceNameType Brand = SubstanceNameType._(
    'Brand',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameType elementOnly = SubstanceNameType._('');

  /// List of all enum-like values
  static final List<SubstanceNameType> values = [
    Systematic,
    Scientific,
    Brand,
  ];

  /// Clones the current instance
  @override
  SubstanceNameType clone() => SubstanceNameType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubstanceNameType withElement(Element? newElement) {
    return SubstanceNameType._(value, element: newElement);
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
  SubstanceNameType copyWith({
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
    return SubstanceNameType._(
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
