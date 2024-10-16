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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProcedureCategoryCodesSNOMEDCT(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProcedureCategoryCodesSNOMEDCT fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureCategoryCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProcedureCategoryCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureCategoryCodesSNOMEDCT.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
