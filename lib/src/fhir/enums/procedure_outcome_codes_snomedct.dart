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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProcedureOutcomeCodesSNOMEDCT(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProcedureOutcomeCodesSNOMEDCT fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureOutcomeCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureOutcomeCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
