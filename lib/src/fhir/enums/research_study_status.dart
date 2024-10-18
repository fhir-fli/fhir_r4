// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that convey the current status of the research study.
enum ResearchStudyStatus {
  /// Display: Active
  /// Definition: Study is opened for accrual.
  active('active'),

  /// Display: Administratively Completed
  /// Definition: Study is completed prematurely and will not resume; patients are no longer examined nor treated.
  administratively_completed('administratively-completed'),

  /// Display: Approved
  /// Definition: Protocol is approved by the review board.
  approved('approved'),

  /// Display: Closed to Accrual
  /// Definition: Study is closed for accrual; patients can be examined and treated.
  closed_to_accrual('closed-to-accrual'),

  /// Display: Closed to Accrual and Intervention
  /// Definition: Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have completed treatment or intervention but are still being followed according to the primary objective of the study.
  closed_to_accrual_and_intervention('closed-to-accrual-and-intervention'),

  /// Display: Completed
  /// Definition: Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have completed treatment or intervention but are still being followed according to the primary objective of the study.
  completed('completed'),

  /// Display: Disapproved
  /// Definition: Protocol was disapproved by the review board.
  disapproved('disapproved'),

  /// Display: In Review
  /// Definition: Protocol is submitted to the review board for approval.
  in_review('in-review'),

  /// Display: Temporarily Closed to Accrual
  /// Definition: Study is temporarily closed for accrual; can be potentially resumed in the future; patients can be examined and treated.
  temporarily_closed_to_accrual('temporarily-closed-to-accrual'),

  /// Display: Temporarily Closed to Accrual and Intervention
  /// Definition: Study is temporarily closed for accrual and intervention and potentially can be resumed in the future.
  temporarily_closed_to_accrual_and_intervention(
      'temporarily-closed-to-accrual-and-intervention'),

  /// Display: Withdrawn
  /// Definition: Protocol was withdrawn by the lead organization.
  withdrawn('withdrawn'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResearchStudyStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResearchStudyStatus] instances.
  static ResearchStudyStatus fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
