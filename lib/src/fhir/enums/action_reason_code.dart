// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionReasonCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionReasonCode] instances.
  static ActionReasonCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly.withElement(
        element,
      );
    }
    return ActionReasonCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
