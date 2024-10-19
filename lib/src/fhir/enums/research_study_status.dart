// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes that convey the current status of the research study.
@collection
class ResearchStudyStatus {
  /// Constructor for internal use (like enum)
  ResearchStudyStatus({this.fhirCode, this.element})
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

  /// ResearchStudyStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus active = ResearchStudyStatus(
    fhirCode: 'active',
  );

  /// administratively_completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus administratively_completed =
      ResearchStudyStatus(
    fhirCode: 'administratively-completed',
  );

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus approved = ResearchStudyStatus(
    fhirCode: 'approved',
  );

  /// closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus closed_to_accrual = ResearchStudyStatus(
    fhirCode: 'closed-to-accrual',
  );

  /// closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus closed_to_accrual_and_intervention =
      ResearchStudyStatus(
    fhirCode: 'closed-to-accrual-and-intervention',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus completed = ResearchStudyStatus(
    fhirCode: 'completed',
  );

  /// disapproved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus disapproved = ResearchStudyStatus(
    fhirCode: 'disapproved',
  );

  /// in_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus in_review = ResearchStudyStatus(
    fhirCode: 'in-review',
  );

  /// temporarily_closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus temporarily_closed_to_accrual =
      ResearchStudyStatus(
    fhirCode: 'temporarily-closed-to-accrual',
  );

  /// temporarily_closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus
      temporarily_closed_to_accrual_and_intervention = ResearchStudyStatus(
    fhirCode: 'temporarily-closed-to-accrual-and-intervention',
  );

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus withdrawn = ResearchStudyStatus(
    fhirCode: 'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyStatus elementOnly = ResearchStudyStatus();

  /// List of all enum-like values
  static final List<ResearchStudyStatus> values = [
    active,
    administratively_completed,
    approved,
    closed_to_accrual,
    closed_to_accrual_and_intervention,
    completed,
    disapproved,
    in_review,
    temporarily_closed_to_accrual,
    temporarily_closed_to_accrual_and_intervention,
    withdrawn,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchStudyStatus] from JSON.
  static ResearchStudyStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatus.elementOnly.withElement(element);
    }
    return ResearchStudyStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyStatus.$fhirCode';
}
