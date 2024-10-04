import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AppointmentResponse {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final Reference appointment;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final List<CodeableConcept> participantType;
  final Reference actor;
  final FhirCode participantStatus;
  final PrimitiveElement ParticipantStatus;
  final String comment;
  final PrimitiveElement Comment;
  const AppointmentResponse({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.Start,
    this.end,
    this.End,
    this.participantType,
    this.actor,
    this.participantStatus,
    this.ParticipantStatus,
    this.comment,
    this.Comment,
  });
}
