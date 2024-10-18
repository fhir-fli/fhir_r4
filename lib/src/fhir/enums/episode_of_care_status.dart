// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the episode of care.
enum EpisodeOfCareStatus {
  /// Display: Planned
  /// Definition: This episode of care is planned to start at the date specified in the period.start. During this status, an organization may perform assessments to determine if the patient is eligible to receive services, or be organizing to make resources available to provide care services.
  planned('planned'),

  /// Display: Waitlist
  /// Definition: This episode has been placed on a waitlist, pending the episode being made active (or cancelled).
  waitlist('waitlist'),

  /// Display: Active
  /// Definition: This episode of care is current.
  active('active'),

  /// Display: On Hold
  /// Definition: This episode of care is on hold; the organization has limited responsibility for the patient (such as while on respite).
  onhold('onhold'),

  /// Display: Finished
  /// Definition: This episode of care is finished and the organization is not expecting to be providing further care to the patient. Can also be known as "closed", "completed" or other similar terms.
  finished('finished'),

  /// Display: Cancelled
  /// Definition: The episode of care was cancelled, or withdrawn from service, often selected during the planned stage as the patient may have gone elsewhere, or the circumstances have changed and the organization is unable to provide the care. It indicates that services terminated outside the planned/expected workflow.
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EpisodeOfCareStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EpisodeOfCareStatus] instances.
  static EpisodeOfCareStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly.withElement(
        element,
      );
    }
    return EpisodeOfCareStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
