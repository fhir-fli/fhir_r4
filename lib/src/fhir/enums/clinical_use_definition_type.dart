// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClinicalUseDefinitionType._(super.value, [super.element]);

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
          'ClinicalUseDefinitionType cannot be constructed from JSON.');
    }
    return ClinicalUseDefinitionType._(value, element);
  }

  /// indication
  static final ClinicalUseDefinitionType indication =
      ClinicalUseDefinitionType._(
    'indication',
  );

  /// contraindication
  static final ClinicalUseDefinitionType contraindication =
      ClinicalUseDefinitionType._(
    'contraindication',
  );

  /// interaction
  static final ClinicalUseDefinitionType interaction =
      ClinicalUseDefinitionType._(
    'interaction',
  );

  /// undesirable_effect
  static final ClinicalUseDefinitionType undesirable_effect =
      ClinicalUseDefinitionType._(
    'undesirable-effect',
  );

  /// warning
  static final ClinicalUseDefinitionType warning = ClinicalUseDefinitionType._(
    'warning',
  );

  /// For instances where an Element is present but not value

  static final ClinicalUseDefinitionType elementOnly =
      ClinicalUseDefinitionType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ClinicalUseDefinitionType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ClinicalUseDefinitionType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ClinicalUseDefinitionType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
