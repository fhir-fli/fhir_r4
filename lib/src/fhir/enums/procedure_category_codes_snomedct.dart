// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
enum ProcedureCategoryCodesSNOMEDCT {
  /// Display:
  /// Definition:
  value24642003('24642003'),

  /// Display:
  /// Definition:
  value409063005('409063005'),

  /// Display:
  /// Definition:
  value409073007('409073007'),

  /// Display:
  /// Definition:
  value387713003('387713003'),

  /// Display:
  /// Definition:
  value103693007('103693007'),

  /// Display:
  /// Definition:
  value46947000('46947000'),

  /// Display:
  /// Definition:
  value410606002('410606002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProcedureCategoryCodesSNOMEDCT(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProcedureCategoryCodesSNOMEDCT] instances.
  static ProcedureCategoryCodesSNOMEDCT fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureCategoryCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProcedureCategoryCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureCategoryCodesSNOMEDCT.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
