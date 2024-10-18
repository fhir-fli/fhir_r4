// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
enum ProcedureOutcomeCodesSNOMEDCT {
  /// Display:
  /// Definition:
  value385669000('385669000'),

  /// Display:
  /// Definition:
  value385671000('385671000'),

  /// Display:
  /// Definition:
  value385670004('385670004'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProcedureOutcomeCodesSNOMEDCT(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProcedureOutcomeCodesSNOMEDCT] instances.
  static ProcedureOutcomeCodesSNOMEDCT fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureOutcomeCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureOutcomeCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
