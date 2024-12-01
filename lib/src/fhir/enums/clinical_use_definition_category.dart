// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a clinical use information item.
class ClinicalUseDefinitionCategory {
  // Private constructor for internal use (like enum)
  ClinicalUseDefinitionCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [ClinicalUseDefinitionCategory] from JSON.
  factory ClinicalUseDefinitionCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionCategory.elementOnly.withElement(element);
    }
    return ClinicalUseDefinitionCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClinicalUseDefinitionCategory values
  /// Pregnancy
  static final ClinicalUseDefinitionCategory Pregnancy =
      ClinicalUseDefinitionCategory._(
    'Pregnancy',
  );

  /// Overdose
  static final ClinicalUseDefinitionCategory Overdose =
      ClinicalUseDefinitionCategory._(
    'Overdose',
  );

  /// DriveAndMachines
  static final ClinicalUseDefinitionCategory DriveAndMachines =
      ClinicalUseDefinitionCategory._(
    'DriveAndMachines',
  );

  /// For instances where an Element is present but not value

  static final ClinicalUseDefinitionCategory elementOnly =
      ClinicalUseDefinitionCategory._('');

  /// List of all enum-like values
  static final List<ClinicalUseDefinitionCategory> values = [
    Pregnancy,
    Overdose,
    DriveAndMachines,
  ];

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionCategory withElement(Element? newElement) {
    return ClinicalUseDefinitionCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
