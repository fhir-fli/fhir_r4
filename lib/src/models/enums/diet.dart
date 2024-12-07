// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
class Diet extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Diet._(super.value, [super.element]);

  /// Factory constructor to create [Diet] from JSON.
  factory Diet.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Diet.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Diet cannot be constructed from JSON.',
      );
    }
    return Diet._(value, element);
  }

  /// vegetarian
  static final Diet vegetarian = Diet._(
    'vegetarian',
  );

  /// dairy_free
  static final Diet dairy_free = Diet._(
    'dairy-free',
  );

  /// nut_free
  static final Diet nut_free = Diet._(
    'nut-free',
  );

  /// gluten_free
  static final Diet gluten_free = Diet._(
    'gluten-free',
  );

  /// vegan
  static final Diet vegan = Diet._(
    'vegan',
  );

  /// halal
  static final Diet halal = Diet._(
    'halal',
  );

  /// kosher
  static final Diet kosher = Diet._(
    'kosher',
  );

  /// For instances where an Element is present but not value

  static final Diet elementOnly = Diet._('');

  /// List of all enum-like values
  static final List<Diet> values = [
    vegetarian,
    dairy_free,
    nut_free,
    gluten_free,
    vegan,
    halal,
    kosher,
  ];

  /// Clones the current instance
  @override
  Diet clone() => Diet._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Diet withElement(Element? newElement) {
    return Diet._(value, newElement);
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
  Diet copyWith({
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
    return Diet._(
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
