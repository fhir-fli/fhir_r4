// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionType {
  // Private constructor for internal use (like enum)
  ClinicalUseDefinitionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClinicalUseDefinitionType values
  /// indication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalUseDefinitionType indication =
      ClinicalUseDefinitionType._(
    'indication',
  );

  /// contraindication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalUseDefinitionType contraindication =
      ClinicalUseDefinitionType._(
    'contraindication',
  );

  /// interaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalUseDefinitionType interaction =
      ClinicalUseDefinitionType._(
    'interaction',
  );

  /// undesirable_effect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalUseDefinitionType undesirable_effect =
      ClinicalUseDefinitionType._(
    'undesirable-effect',
  );

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ClinicalUseDefinitionType] from JSON.
  static ClinicalUseDefinitionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType.elementOnly.withElement(element);
    }
    return ClinicalUseDefinitionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClinicalUseDefinitionType.$fhirCode';
}
