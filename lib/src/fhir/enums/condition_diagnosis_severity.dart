import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
enum ConditionDiagnosisSeverity {
  /// Display:
  /// Definition:
  value24484000('24484000'),

  /// Display:
  /// Definition:
  value6736007('6736007'),

  /// Display:
  /// Definition:
  value255604002('255604002'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionDiagnosisSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionDiagnosisSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionDiagnosisSeverity.elementOnly.withElement(element);
    }
    return ConditionDiagnosisSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
