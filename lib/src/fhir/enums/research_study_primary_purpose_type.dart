// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for the main intent of the study.
@collection
class ResearchStudyPrimaryPurposeType {
  /// Constructor for internal use (like enum)
  ResearchStudyPrimaryPurposeType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyPrimaryPurposeType values
  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType treatment =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'treatment',
  );

  /// prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType prevention =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'prevention',
  );

  /// diagnostic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType diagnostic =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'diagnostic',
  );

  /// supportive_care
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType supportive_care =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'supportive-care',
  );

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType screening =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'screening',
  );

  /// health_services_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType health_services_research =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'health-services-research',
  );

  /// basic_science
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType basic_science =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'basic-science',
  );

  /// device_feasibility
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPrimaryPurposeType device_feasibility =
      ResearchStudyPrimaryPurposeType(
    fhirCode: 'device-feasibility',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyPrimaryPurposeType elementOnly =
      ResearchStudyPrimaryPurposeType();

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
    return ResearchStudyPrimaryPurposeType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ResearchStudyPrimaryPurposeType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyPrimaryPurposeType.$fhirCode';
}
