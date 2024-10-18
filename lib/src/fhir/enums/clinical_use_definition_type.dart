// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this clinical use definition.
enum ClinicalUseDefinitionType {
  /// Display: Indication
  /// Definition: A reason for giving the medication.
  indication('indication'),

  /// Display: Contraindication
  /// Definition: A reason for not giving the medication.
  contraindication('contraindication'),

  /// Display: Interaction
  /// Definition: Interactions between the medication and other substances.
  interaction('interaction'),

  /// Display: Undesirable Effect
  /// Definition: Side effects or adverse effects associated with the medication.
  undesirable_effect('undesirable-effect'),

  /// Display: Warning
  /// Definition: A general warning or issue that is not specifically one of the other types.
  warning('warning'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ClinicalUseDefinitionType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ClinicalUseDefinitionType] instances.
  static ClinicalUseDefinitionType fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
