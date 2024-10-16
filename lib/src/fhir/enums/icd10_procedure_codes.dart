import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample ICD-10 Procedure codes.
enum ICD10ProcedureCodes {
  /// Display: PROC-1
  /// Definition: Procedure 1
  value123001('123001'),

  /// Display: PROC-2
  /// Definition: Procedure 2
  value123002('123002'),

  /// Display: PROC-3
  /// Definition: Procedure 3
  value123003('123003'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ICD10ProcedureCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ICD10ProcedureCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ICD10ProcedureCodes.elementOnly.withElement(element);
    }
    return ICD10ProcedureCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ICD10ProcedureCodes withElement(Element? newElement) {
    return ICD10ProcedureCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
