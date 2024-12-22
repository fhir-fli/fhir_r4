// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
class AllergyIntoleranceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AllergyIntoleranceType] from JSON.
  factory AllergyIntoleranceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceType cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceType._(
      value,
      element: element,
    );
  }

  /// allergy
  static final AllergyIntoleranceType allergy = AllergyIntoleranceType._(
    'allergy',
  );

  /// intolerance
  static final AllergyIntoleranceType intolerance = AllergyIntoleranceType._(
    'intolerance',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceType elementOnly =
      AllergyIntoleranceType._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceType> values = [
    allergy,
    intolerance,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceType clone() => AllergyIntoleranceType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType._(
      value,
      element: newElement,
    );
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
  AllergyIntoleranceType copyWith({
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
    return AllergyIntoleranceType._(
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
