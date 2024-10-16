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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ParticipationStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ParticipationStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly.withElement(element);
    }
    return ParticipationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
