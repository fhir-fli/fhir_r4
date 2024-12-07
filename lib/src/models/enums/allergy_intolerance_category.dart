// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Category of an identified substance associated with allergies or intolerances.
class AllergyIntoleranceCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceCategory._(super.value, [super.element]);

  /// Factory constructor to create [AllergyIntoleranceCategory] from JSON.
  factory AllergyIntoleranceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCategory cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCategory._(value, element);
  }

  /// food
  static final AllergyIntoleranceCategory food = AllergyIntoleranceCategory._(
    'food',
  );

  /// medication
  static final AllergyIntoleranceCategory medication =
      AllergyIntoleranceCategory._(
    'medication',
  );

  /// environment
  static final AllergyIntoleranceCategory environment =
      AllergyIntoleranceCategory._(
    'environment',
  );

  /// biologic
  static final AllergyIntoleranceCategory biologic =
      AllergyIntoleranceCategory._(
    'biologic',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceCategory elementOnly =
      AllergyIntoleranceCategory._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCategory> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCategory clone() => AllergyIntoleranceCategory._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategory withElement(Element? newElement) {
    return AllergyIntoleranceCategory._(value, newElement);
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
  AllergyIntoleranceCategory copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AllergyIntoleranceCategory._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
