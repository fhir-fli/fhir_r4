import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Appointment {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept cancelationReason;
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirUnsignedInt priority;
  final PrimitiveElement Priority;
  final String description;
  final PrimitiveElement Description;
  final List<Reference> supportingInformation;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final FhirPositiveInt minutesDuration;
  final PrimitiveElement MinutesDuration;
  final List<Reference> slot;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final String comment;
  final PrimitiveElement Comment;
  final String patientInstruction;
  final PrimitiveElement PatientInstruction;
  final List<Reference> basedOn;
  final List<AppointmentParticipant> participant;
  final List<Period> requestedPeriod;
  const Appointment({
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
    this.status,
    this.Status,
    this.cancelationReason,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reasonCode,
    this.reasonReference,
    this.priority,
    this.Priority,
    this.description,
    this.Description,
    this.supportingInformation,
    this.start,
    this.Start,
    this.end,
    this.End,
    this.minutesDuration,
    this.MinutesDuration,
    this.slot,
    this.created,
    this.Created,
    this.comment,
    this.Comment,
    this.patientInstruction,
    this.PatientInstruction,
    this.basedOn,
    required this.participant,
    this.requestedPeriod,
  });
}
