import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for the type of stages of cancer and other conditions
enum ConditionStageType {
  /// Display: Pathological staging (qualifier value)
  /// Definition:
  value261023001('261023001'),

  /// Display: Clinical staging (qualifier value)
  /// Definition:
  value260998006('260998006'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionStageType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionStageType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionStageType.elementOnly.withElement(element);
    }
    return ConditionStageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
