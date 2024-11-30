// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the main intent of the study.
class ResearchStudyPrimaryPurposeType {
  // Private constructor for internal use (like enum)
  ResearchStudyPrimaryPurposeType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyPrimaryPurposeType values
  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType treatment =
      ResearchStudyPrimaryPurposeType._(
    'treatment',
  );

  /// prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType prevention =
      ResearchStudyPrimaryPurposeType._(
    'prevention',
  );

  /// diagnostic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType diagnostic =
      ResearchStudyPrimaryPurposeType._(
    'diagnostic',
  );

  /// supportive_care
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType supportive_care =
      ResearchStudyPrimaryPurposeType._(
    'supportive-care',
  );

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType screening =
      ResearchStudyPrimaryPurposeType._(
    'screening',
  );

  /// health_services_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType health_services_research =
      ResearchStudyPrimaryPurposeType._(
    'health-services-research',
  );

  /// basic_science
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType basic_science =
      ResearchStudyPrimaryPurposeType._(
    'basic-science',
  );

  /// device_feasibility
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType device_feasibility =
      ResearchStudyPrimaryPurposeType._(
    'device-feasibility',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyPrimaryPurposeType elementOnly =
      ResearchStudyPrimaryPurposeType._('');

  /// List of all enum-like values
  static final List<ResearchStudyPrimaryPurposeType> values = [
    treatment,
    prevention,
    diagnostic,
    supportive_care,
    screening,
    health_services_research,
    basic_science,
    device_feasibility,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyPrimaryPurposeType withElement(Element? newElement) {
    return ResearchStudyPrimaryPurposeType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchStudyPrimaryPurposeType] from JSON.
  static ResearchStudyPrimaryPurposeType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPrimaryPurposeType.elementOnly.withElement(element);
    }
    return ResearchStudyPrimaryPurposeType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
