// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
class EnteralFormulaAdditiveTypeCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EnteralFormulaAdditiveTypeCode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EnteralFormulaAdditiveTypeCode] from JSON.
  factory EnteralFormulaAdditiveTypeCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaAdditiveTypeCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnteralFormulaAdditiveTypeCode cannot be constructed from JSON.',
      );
    }
    return EnteralFormulaAdditiveTypeCode._(value, element: element);
  }

  /// lipid
  static final EnteralFormulaAdditiveTypeCode lipid =
      EnteralFormulaAdditiveTypeCode._(
    'lipid',
  );

  /// protein
  static final EnteralFormulaAdditiveTypeCode protein =
      EnteralFormulaAdditiveTypeCode._(
    'protein',
  );

  /// carbohydrate
  static final EnteralFormulaAdditiveTypeCode carbohydrate =
      EnteralFormulaAdditiveTypeCode._(
    'carbohydrate',
  );

  /// fiber
  static final EnteralFormulaAdditiveTypeCode fiber =
      EnteralFormulaAdditiveTypeCode._(
    'fiber',
  );

  /// water
  static final EnteralFormulaAdditiveTypeCode water =
      EnteralFormulaAdditiveTypeCode._(
    'water',
  );

  /// For instances where an Element is present but not value

  static final EnteralFormulaAdditiveTypeCode elementOnly =
      EnteralFormulaAdditiveTypeCode._('');

  /// List of all enum-like values
  static final List<EnteralFormulaAdditiveTypeCode> values = [
    lipid,
    protein,
    carbohydrate,
    fiber,
    water,
  ];

  /// Clones the current instance
  @override
  EnteralFormulaAdditiveTypeCode clone() => EnteralFormulaAdditiveTypeCode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EnteralFormulaAdditiveTypeCode withElement(Element? newElement) {
    return EnteralFormulaAdditiveTypeCode._(
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
  EnteralFormulaAdditiveTypeCode copyWith({
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
    return EnteralFormulaAdditiveTypeCode._(
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
