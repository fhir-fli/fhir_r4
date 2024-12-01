// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the main intent of the study.
class ResearchStudyPrimaryPurposeType {
  // Private constructor for internal use (like enum)
  ResearchStudyPrimaryPurposeType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ResearchStudyPrimaryPurposeType] from JSON.
  factory ResearchStudyPrimaryPurposeType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPrimaryPurposeType.elementOnly.withElement(element);
    }
    return ResearchStudyPrimaryPurposeType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyPrimaryPurposeType values
  /// treatment
  static final ResearchStudyPrimaryPurposeType treatment =
      ResearchStudyPrimaryPurposeType._(
    'treatment',
  );

  /// prevention
  static final ResearchStudyPrimaryPurposeType prevention =
      ResearchStudyPrimaryPurposeType._(
    'prevention',
  );

  /// diagnostic
  static final ResearchStudyPrimaryPurposeType diagnostic =
      ResearchStudyPrimaryPurposeType._(
    'diagnostic',
  );

  /// supportive_care
  static final ResearchStudyPrimaryPurposeType supportive_care =
      ResearchStudyPrimaryPurposeType._(
    'supportive-care',
  );

  /// screening
  static final ResearchStudyPrimaryPurposeType screening =
      ResearchStudyPrimaryPurposeType._(
    'screening',
  );

  /// health_services_research
  static final ResearchStudyPrimaryPurposeType health_services_research =
      ResearchStudyPrimaryPurposeType._(
    'health-services-research',
  );

  /// basic_science
  static final ResearchStudyPrimaryPurposeType basic_science =
      ResearchStudyPrimaryPurposeType._(
    'basic-science',
  );

  /// device_feasibility
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

  /// String representation
  @override
  String toString() => fhirCode;
}
