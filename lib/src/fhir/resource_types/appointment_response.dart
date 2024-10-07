import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [AppointmentResponse] /// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  AppointmentResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.participantStatusElement,
    this.comment,
    this.commentElement,
  }) : super(resourceType: R4ResourceType.AppointmentResponse);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this appointment response concern
  /// that are defined by business processes and/ or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate.
  final List<Identifier>? identifier;

  /// [appointment] /// Appointment that this response is replying to.
  final Reference appointment;

  /// [start] /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  final FhirInstant? start;
  final Element? startElement;

  /// [end] /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  final FhirInstant? end;
  final Element? endElement;

  /// [participantType] /// Role of participant in the appointment.
  final List<CodeableConcept>? participantType;

  /// [actor] /// A Person, Location, HealthcareService, or Device that is participating in
  /// the appointment.
  final Reference? actor;

  /// [participantStatus] /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment (as
  /// a confirmation of the time) or can be empty.
  final FhirCode participantStatus;
  final Element? participantStatusElement;

  /// [comment] /// Additional comments about the appointment.
  final FhirString? comment;
  final Element? commentElement;
  @override
  AppointmentResponse clone() => throw UnimplementedError();
  AppointmentResponse copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? appointment,
    FhirInstant? start,
    Element? startElement,
    FhirInstant? end,
    Element? endElement,
    List<CodeableConcept>? participantType,
    Reference? actor,
    FhirCode? participantStatus,
    Element? participantStatusElement,
    FhirString? comment,
    Element? commentElement,
  }) {
    return AppointmentResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      appointment: appointment ?? this.appointment,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      participantType: participantType ?? this.participantType,
      actor: actor ?? this.actor,
      participantStatus: participantStatus ?? this.participantStatus,
      participantStatusElement:
          participantStatusElement ?? this.participantStatusElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}
