// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClinicalUseDefinitionType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ClinicalUseDefinitionType] from JSON.
  factory ClinicalUseDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionType cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionType._(value: value, element: element);
  }

  /// indication
  static final ClinicalUseDefinitionType indication =
      ClinicalUseDefinitionType._(
    value: 'indication',
  );

  /// contraindication
  static final ClinicalUseDefinitionType contraindication =
      ClinicalUseDefinitionType._(
    value: 'contraindication',
  );

  /// interaction
  static final ClinicalUseDefinitionType interaction =
      ClinicalUseDefinitionType._(
    value: 'interaction',
  );

  /// undesirable_effect
  static final ClinicalUseDefinitionType undesirable_effect =
      ClinicalUseDefinitionType._(
    value: 'undesirable-effect',
  );

  /// warning
  static final ClinicalUseDefinitionType warning = ClinicalUseDefinitionType._(
    value: 'warning',
  );

  /// For instances where an Element is present but not value

  static final ClinicalUseDefinitionType elementOnly =
      ClinicalUseDefinitionType._(value: '');

  /// List of all enum-like values
  static final List<ClinicalUseDefinitionType> values = [
    indication,
    contraindication,
    interaction,
    undesirable_effect,
    warning,
  ];

  /// Clones the current instance
  @override
  ClinicalUseDefinitionType clone() => ClinicalUseDefinitionType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(value: value, element: newElement);
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
  ClinicalUseDefinitionType copyWith({
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
    return ClinicalUseDefinitionType._(
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
