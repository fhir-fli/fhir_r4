// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The Participation status of an appointment.
enum ParticipationStatus {
  /// Display: Accepted
  /// Definition: The participant has accepted the appointment.
  accepted('accepted'),

  /// Display: Declined
  /// Definition: The participant has declined the appointment and will not participate in the appointment.
  declined('declined'),

  /// Display: Tentative
  /// Definition: The participant has tentatively accepted the appointment. This could be automatically created by a system and requires further processing before it can be accepted. There is no commitment that attendance will occur.
  tentative('tentative'),

  /// Display: Needs Action
  /// Definition: The participant needs to indicate if they accept the appointment by changing this status to one of the other statuses.
  needs_action('needs-action'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ParticipationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ParticipationStatus] instances.
  static ParticipationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly.withElement(
        element,
      );
    }
    return ParticipationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
