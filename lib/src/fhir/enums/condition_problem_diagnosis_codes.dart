import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for Condition/Problem/Diagnosis codes.
enum ConditionProblemDiagnosisCodes {
  /// Display: No current problems or disability
  /// Definition:
  value160245001('160245001'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionProblemDiagnosisCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionProblemDiagnosisCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionProblemDiagnosisCodes.elementOnly.withElement(element);
    }
    return ConditionProblemDiagnosisCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionProblemDiagnosisCodes withElement(Element? newElement) {
    return ConditionProblemDiagnosisCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
