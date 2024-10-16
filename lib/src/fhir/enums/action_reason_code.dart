import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of reasons for actions to be performed.
enum ActionReasonCode {
  /// Display: Off pathway
  /// Definition: The action should be performed because the patient was determined to be off pathway.
  off_pathway('off-pathway'),

  /// Display: Risk assessment
  /// Definition: The action should be performed based on a particular risk assessment.
  risk_assessment('risk-assessment'),

  /// Display: Care gap detected
  /// Definition: The action should be performed to address a detected care gap.
  care_gap('care-gap'),

  /// Display: Drug-drug interaction
  /// Definition: The action should be performed to address a detected potential drug-drug interaction.
  drug_drug_interaction('drug-drug-interaction'),

  /// Display: Quality measure
  /// Definition: The action should be performed to bring the patient's care in line with a quality measure.
  quality_measure('quality-measure'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionReasonCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionReasonCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly.withElement(element);
    }
    return ActionReasonCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
