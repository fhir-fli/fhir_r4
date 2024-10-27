// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that convey the current status of the research study.
class ResearchStudyStatus {
  // Private constructor for internal use (like enum)
  ResearchStudyStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus active = ResearchStudyStatus._(
    'active',
  );

  /// administratively_completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus administratively_completed =
      ResearchStudyStatus._(
    'administratively-completed',
  );

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus approved = ResearchStudyStatus._(
    'approved',
  );

  /// closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus closed_to_accrual = ResearchStudyStatus._(
    'closed-to-accrual',
  );

  /// closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus closed_to_accrual_and_intervention =
      ResearchStudyStatus._(
    'closed-to-accrual-and-intervention',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus completed = ResearchStudyStatus._(
    'completed',
  );

  /// disapproved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus disapproved = ResearchStudyStatus._(
    'disapproved',
  );

  /// in_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus in_review = ResearchStudyStatus._(
    'in-review',
  );

  /// temporarily_closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus temporarily_closed_to_accrual =
      ResearchStudyStatus._(
    'temporarily-closed-to-accrual',
  );

  /// temporarily_closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus
      temporarily_closed_to_accrual_and_intervention = ResearchStudyStatus._(
    'temporarily-closed-to-accrual-and-intervention',
  );

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyStatus withdrawn = ResearchStudyStatus._(
    'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyStatus elementOnly = ResearchStudyStatus._('');

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
    return ResearchStudyStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
