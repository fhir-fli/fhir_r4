// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a clinical use information item.
enum ClinicalUseDefinitionCategory {
  /// Display: Pregnancy and Lactation
  /// Definition:
  Pregnancy('Pregnancy'),

  /// Display: Overdose
  /// Definition:
  Overdose('Overdose'),

  /// Display: Effects on Ability to Drive and Use Machines
  /// Definition:
  DriveAndMachines('DriveAndMachines'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ClinicalUseDefinitionCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ClinicalUseDefinitionCategory] instances.
  static ClinicalUseDefinitionCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionCategory.elementOnly.withElement(
        element,
      );
    }
    return ClinicalUseDefinitionCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ClinicalUseDefinitionCategory withElement(Element? newElement) {
    return ClinicalUseDefinitionCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
