// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// NutrientModifier : Codes for types of nutrients that are being modified such as carbohydrate or sodium. This value set includes codes from [SNOMED CT](http://snomed.info/sct) where concept is-a 226355009 (Nutrients(substance)), and the concepts for Sodium, Potassium and Fluid. This is provided as a suggestive example.
class NutrientModifierCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NutrientModifierCodes._(super.value, [super.element]);

  /// Factory constructor to create [NutrientModifierCodes] from JSON.
  factory NutrientModifierCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutrientModifierCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NutrientModifierCodes cannot be constructed from JSON.',
      );
    }
    return NutrientModifierCodes._(value, element);
  }

  /// value33463005
  static final NutrientModifierCodes value33463005 = NutrientModifierCodes._(
    '33463005',
  );

  /// value39972003
  static final NutrientModifierCodes value39972003 = NutrientModifierCodes._(
    '39972003',
  );

  /// value88480006
  static final NutrientModifierCodes value88480006 = NutrientModifierCodes._(
    '88480006',
  );

  /// For instances where an Element is present but not value

  static final NutrientModifierCodes elementOnly = NutrientModifierCodes._('');

  /// List of all enum-like values
  static final List<NutrientModifierCodes> values = [
    value33463005,
    value39972003,
    value88480006,
  ];

  /// Clones the current instance
  @override
  NutrientModifierCodes clone() => NutrientModifierCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  NutrientModifierCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return NutrientModifierCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  NutrientModifierCodes withElement(Element? newElement) {
    return NutrientModifierCodes._(value, newElement);
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
  NutrientModifierCodes copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return NutrientModifierCodes._(
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
