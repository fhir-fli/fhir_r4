// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for the main intent of the study.
@Entity()
class ResearchStudyPrimaryPurposeType extends FhirCode {
  /// Factory constructor to create [ResearchStudyPrimaryPurposeType] from JSON.
  factory ResearchStudyPrimaryPurposeType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPrimaryPurposeType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchStudyPrimaryPurposeType._(value, element);
    }
    throw ArgumentError(
      'ResearchStudyPrimaryPurposeType.fromJson: JSON value is not a valid value',
    );
  }

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.treatment([this.element])
      : dbValue = 'treatment',
        super('treatment', element);

  /// prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.prevention([this.element])
      : dbValue = 'prevention',
        super('prevention', element);

  /// diagnostic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.diagnostic([this.element])
      : dbValue = 'diagnostic',
        super('diagnostic', element);

  /// supportive_care
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.supportive_care([this.element])
      : dbValue = 'supportive-care',
        super('supportive-care', element);

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.screening([this.element])
      : dbValue = 'screening',
        super('screening', element);

  /// health_services_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.health_services_research([this.element])
      : dbValue = 'health-services-research',
        super('health-services-research', element);

  /// basic_science
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.basic_science([this.element])
      : dbValue = 'basic-science',
        super('basic-science', element);

  /// device_feasibility
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPrimaryPurposeType.device_feasibility([this.element])
      : dbValue = 'device-feasibility',
        super('device-feasibility', element);

  /// For instances where an Element is present but not value

  ResearchStudyPrimaryPurposeType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchStudyPrimaryPurposeType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'treatment',
    'prevention',
    'diagnostic',
    'supportive-care',
    'screening',
    'health-services-research',
    'basic-science',
    'device-feasibility',
  ];

  /// Returns the enum value with an element attached
  ResearchStudyPrimaryPurposeType withElement(Element? newElement) {
    return ResearchStudyPrimaryPurposeType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyPrimaryPurposeType.$value';
}
