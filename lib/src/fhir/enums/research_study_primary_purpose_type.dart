import 'package:json_annotation/json_annotation.dart';

/// Codes for the main intent of the study.
enum ResearchStudyPrimaryPurposeType {
  /// Display: Treatment
  /// Definition: One or more interventions are being evaluated for treating a disease, syndrome, or condition.
  @JsonValue('treatment')
  treatment,

  /// Display: Prevention
  /// Definition: One or more interventions are being assessed for preventing the development of a specific disease or health condition.
  @JsonValue('prevention')
  prevention,

  /// Display: Diagnostic
  /// Definition: One or more interventions are being evaluated for identifying a disease or health condition.
  @JsonValue('diagnostic')
  diagnostic,

  /// Display: Supportive Care
  /// Definition: One or more interventions are evaluated for maximizing comfort, minimizing side effects, or mitigating against a decline in the participant's health or function.
  @JsonValue('supportive-care')
  supportive_care,

  /// Display: Screening
  /// Definition: One or more interventions are assessed or examined for identifying a condition, or risk factors for a condition, in people who are not yet known to have the condition or risk factor.
  @JsonValue('screening')
  screening,

  /// Display: Health Services Research
  /// Definition: One or more interventions for evaluating the delivery, processes, management, organization, or financing of healthcare.
  @JsonValue('health-services-research')
  health_services_research,

  /// Display: Basic Science
  /// Definition: One or more interventions for examining the basic mechanism of action (for example, physiology or biomechanics of an intervention).
  @JsonValue('basic-science')
  basic_science,

  /// Display: Device Feasibility
  /// Definition: An intervention of a device product is being evaluated to determine the feasibility of the product or to test a prototype device and not health outcomes. Such studies are conducted to confirm the design and operating specifications of a device before beginning a full clinical trial.
  @JsonValue('device-feasibility')
  device_feasibility,
  ;

  @override
  String toString() {
    switch (this) {
      case treatment:
        return 'treatment';
      case prevention:
        return 'prevention';
      case diagnostic:
        return 'diagnostic';
      case supportive_care:
        return 'supportive-care';
      case screening:
        return 'screening';
      case health_services_research:
        return 'health-services-research';
      case basic_science:
        return 'basic-science';
      case device_feasibility:
        return 'device-feasibility';
    }
  }

  String toJson() => toString();
  static ResearchStudyPrimaryPurposeType fromString(String str) {
    switch (str) {
      case 'treatment':
        return ResearchStudyPrimaryPurposeType.treatment;
      case 'prevention':
        return ResearchStudyPrimaryPurposeType.prevention;
      case 'diagnostic':
        return ResearchStudyPrimaryPurposeType.diagnostic;
      case 'supportive-care':
        return ResearchStudyPrimaryPurposeType.supportive_care;
      case 'screening':
        return ResearchStudyPrimaryPurposeType.screening;
      case 'health-services-research':
        return ResearchStudyPrimaryPurposeType.health_services_research;
      case 'basic-science':
        return ResearchStudyPrimaryPurposeType.basic_science;
      case 'device-feasibility':
        return ResearchStudyPrimaryPurposeType.device_feasibility;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ResearchStudyPrimaryPurposeType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
