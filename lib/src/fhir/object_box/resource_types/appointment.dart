import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Appointment extends Resource {
  Appointment({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.cancelationReason,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reasonCode,
    this.reasonReference,
    this.priority,
    this.description,
    this.supportingInformation,
    this.start,
    this.end,
    this.minutesDuration,
    this.slot,
    this.created,
    this.comment,
    this.patientInstruction,
    this.basedOn,
    required this.participant,
    this.requestedPeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept>? cancelationReason = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? serviceCategory = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? serviceType = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? appointmentType = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  int? priority;
  String? description;
  ToMany<Reference>? supportingInformation = ToMany<Reference>();
  String? start;
  String? end;
  int? minutesDuration;
  ToMany<Reference>? slot = ToMany<Reference>();
  String? created;
  String? comment;
  String? patientInstruction;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<AppointmentParticipant> participant = ToMany<AppointmentParticipant>();
  ToMany<Period>? requestedPeriod = ToMany<Period>();
}

@Entity()
class AppointmentParticipant {
  AppointmentParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.actor,
    this.required_,
    required this.status,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<Reference>? actor = ToOne<Reference>();
  String? required_;
  String status;
  ToOne<Period>? period = ToOne<Period>();
}
