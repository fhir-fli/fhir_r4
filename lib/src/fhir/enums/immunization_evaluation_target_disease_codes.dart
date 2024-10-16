import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease that the evaluation is against. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
enum ImmunizationEvaluationTargetDiseaseCodes {
  /// Display:
  /// Definition:
  value1857005('1857005'),

  /// Display:
  /// Definition:
  value397430003('397430003'),

  /// Display:
  /// Definition:
  value14189004('14189004'),

  /// Display:
  /// Definition:
  value36989005('36989005'),

  /// Display:
  /// Definition:
  value36653000('36653000'),

  /// Display:
  /// Definition:
  value76902006('76902006'),

  /// Display:
  /// Definition:
  value709410003('709410003'),

  /// Display:
  /// Definition:
  value27836007('27836007'),

  /// Display:
  /// Definition:
  value398102009('398102009'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationEvaluationTargetDiseaseCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationEvaluationTargetDiseaseCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationTargetDiseaseCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationTargetDiseaseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationEvaluationTargetDiseaseCodes withElement(Element? newElement) {
    return ImmunizationEvaluationTargetDiseaseCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
