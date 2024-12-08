// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
class SubstanceRelationshipType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceRelationshipType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SubstanceRelationshipType] from JSON.
  factory SubstanceRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubstanceRelationshipType cannot be constructed from JSON.',
      );
    }
    return SubstanceRelationshipType._(value, element: element);
  }

  /// Salt
  static final SubstanceRelationshipType Salt = SubstanceRelationshipType._(
    'Salt',
  );

  /// ActiveMoiety
  static final SubstanceRelationshipType ActiveMoiety =
      SubstanceRelationshipType._(
    'ActiveMoiety',
  );

  /// StartingMaterial
  static final SubstanceRelationshipType StartingMaterial =
      SubstanceRelationshipType._(
    'StartingMaterial',
  );

  /// Polymorph
  static final SubstanceRelationshipType Polymorph =
      SubstanceRelationshipType._(
    'Polymorph',
  );

  /// Impurity
  static final SubstanceRelationshipType Impurity = SubstanceRelationshipType._(
    'Impurity',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRelationshipType elementOnly =
      SubstanceRelationshipType._('');

  /// List of all enum-like values
  static final List<SubstanceRelationshipType> values = [
    Salt,
    ActiveMoiety,
    StartingMaterial,
    Polymorph,
    Impurity,
  ];

  /// Clones the current instance
  @override
  SubstanceRelationshipType clone() => SubstanceRelationshipType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubstanceRelationshipType withElement(Element? newElement) {
    return SubstanceRelationshipType._(value, element: newElement);
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
  SubstanceRelationshipType copyWith({
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
    return SubstanceRelationshipType._(
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
