// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the main intent of the study.
enum ResearchStudyPrimaryPurposeType {
  /// Display: Treatment
  /// Definition: One or more interventions are being evaluated for treating a disease, syndrome, or condition.
  treatment('treatment'),

  /// Display: Prevention
  /// Definition: One or more interventions are being assessed for preventing the development of a specific disease or health condition.
  prevention('prevention'),

  /// Display: Diagnostic
  /// Definition: One or more interventions are being evaluated for identifying a disease or health condition.
  diagnostic('diagnostic'),

  /// Display: Supportive Care
  /// Definition: One or more interventions are evaluated for maximizing comfort, minimizing side effects, or mitigating against a decline in the participant's health or function.
  supportive_care('supportive-care'),

  /// Display: Screening
  /// Definition: One or more interventions are assessed or examined for identifying a condition, or risk factors for a condition, in people who are not yet known to have the condition or risk factor.
  screening('screening'),

  /// Display: Health Services Research
  /// Definition: One or more interventions for evaluating the delivery, processes, management, organization, or financing of healthcare.
  health_services_research('health-services-research'),

  /// Display: Basic Science
  /// Definition: One or more interventions for examining the basic mechanism of action (for example, physiology or biomechanics of an intervention).
  basic_science('basic-science'),

  /// Display: Device Feasibility
  /// Definition: An intervention of a device product is being evaluated to determine the feasibility of the product or to test a prototype device and not health outcomes. Such studies are conducted to confirm the design and operating specifications of a device before beginning a full clinical trial.
  device_feasibility('device-feasibility'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResearchStudyPrimaryPurposeType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResearchStudyPrimaryPurposeType] instances.
  static ResearchStudyPrimaryPurposeType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPrimaryPurposeType.elementOnly.withElement(
        element,
      );
    }
    return ResearchStudyPrimaryPurposeType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ResearchStudyPrimaryPurposeType withElement(Element? newElement) {
    return ResearchStudyPrimaryPurposeType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
