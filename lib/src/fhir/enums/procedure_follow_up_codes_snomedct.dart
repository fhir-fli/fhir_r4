// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure follow up codes: A selection of SNOMED CT codes relevant to procedure follow up.
enum ProcedureFollowUpCodesSNOMEDCT {
  /// Display:
  /// Definition:
  value18949003('18949003'),

  /// Display:
  /// Definition:
  value30549001('30549001'),

  /// Display:
  /// Definition:
  value241031001('241031001'),

  /// Display:
  /// Definition:
  value35963001('35963001'),

  /// Display:
  /// Definition:
  value225164002('225164002'),

  /// Display:
  /// Definition:
  value447346005('447346005'),

  /// Display:
  /// Definition:
  value229506003('229506003'),

  /// Display:
  /// Definition:
  value274441001('274441001'),

  /// Display:
  /// Definition:
  value394725008('394725008'),

  /// Display:
  /// Definition:
  value359825008('359825008'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProcedureFollowUpCodesSNOMEDCT(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProcedureFollowUpCodesSNOMEDCT] instances.
  static ProcedureFollowUpCodesSNOMEDCT fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureFollowUpCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureFollowUpCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProcedureFollowUpCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureFollowUpCodesSNOMEDCT.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
