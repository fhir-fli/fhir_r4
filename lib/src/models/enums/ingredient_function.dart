// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
class IngredientFunction extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  IngredientFunction._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [IngredientFunction] from JSON.
  factory IngredientFunction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientFunction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IngredientFunction cannot be constructed from JSON.',
      );
    }
    return IngredientFunction._(value: value, element: element);
  }

  /// Antioxidant
  static final IngredientFunction Antioxidant = IngredientFunction._(
    value: 'Antioxidant',
  );

  /// AlkalizingAgent
  static final IngredientFunction AlkalizingAgent = IngredientFunction._(
    value: 'AlkalizingAgent',
  );

  /// For instances where an Element is present but not value

  static final IngredientFunction elementOnly = IngredientFunction._(value: '');

  /// List of all enum-like values
  static final List<IngredientFunction> values = [
    Antioxidant,
    AlkalizingAgent,
  ];

  /// Clones the current instance
  @override
  IngredientFunction clone() => IngredientFunction._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IngredientFunction withElement(Element? newElement) {
    return IngredientFunction._(value: value, element: newElement);
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
  IngredientFunction copyWith({
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
    return IngredientFunction._(
      value: newValue ?? value,
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
