// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An anatomical origin of the source material within an organism.
class SourceMaterialPart extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SourceMaterialPart._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SourceMaterialPart] from JSON.
  factory SourceMaterialPart.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialPart.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SourceMaterialPart cannot be constructed from JSON.',
      );
    }
    return SourceMaterialPart._(value: value, element: element);
  }

  /// Animal
  static final SourceMaterialPart Animal = SourceMaterialPart._(
    value: 'Animal',
  );

  /// Plant
  static final SourceMaterialPart Plant = SourceMaterialPart._(
    value: 'Plant',
  );

  /// Mineral
  static final SourceMaterialPart Mineral = SourceMaterialPart._(
    value: 'Mineral',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialPart elementOnly = SourceMaterialPart._(value: '');

  /// List of all enum-like values
  static final List<SourceMaterialPart> values = [
    Animal,
    Plant,
    Mineral,
  ];

  /// Clones the current instance
  @override
  SourceMaterialPart clone() => SourceMaterialPart._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SourceMaterialPart withElement(Element? newElement) {
    return SourceMaterialPart._(value: value, element: newElement);
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
  SourceMaterialPart copyWith({
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
    return SourceMaterialPart._(
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
