import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Appointment] /// A booking of a healthcare event among patient(s), practitioner(s), related
/// person(s) and/or device(s) for a specific date/time. This may result in one
/// or more Encounter(s).
class Appointment extends DomainResource {
  Appointment({
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
    required this.status,
    this.statusElement,
    this.cancelationReason,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reasonCode,
    this.reasonReference,
    this.priority,
    this.priorityElement,
    this.description,
    this.descriptionElement,
    this.supportingInformation,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.minutesDuration,
    this.minutesDurationElement,
    this.slot,
    this.created,
    this.createdElement,
    this.comment,
    this.commentElement,
    this.patientInstruction,
    this.patientInstructionElement,
    this.basedOn,
    required this.participant,
    this.requestedPeriod,
  }) : super(resourceType: R4ResourceType.Appointment);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this appointment concern that are
  /// defined by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate (e.g. in CDA documents,
  /// or in written / printed documentation).
  final List<Identifier>? identifier;

  /// [status] /// The overall status of the Appointment. Each of the participants has their
  /// own participation status which indicates their involvement in the process,
  /// however this status indicates the shared status.
  final FhirCode status;
  final Element? statusElement;

  /// [cancelationReason] /// The coded reason for the appointment being cancelled. This is often used in
  /// reporting/billing/futher processing to determine if further actions are
  /// required, or specific fees apply.
  final CodeableConcept? cancelationReason;

  /// [serviceCategory] /// A broad categorization of the service that is to be performed during this
  /// appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType] /// The specific service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceType;

  /// [specialty] /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType] /// The style of appointment or patient that has been booked in the slot (not
  /// service type).
  final CodeableConcept? appointmentType;

  /// [reasonCode] /// The coded reason that this appointment is being scheduled. This is more
  /// clinical than administrative.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Reason the appointment has been scheduled to take place, as specified using
  /// information from another resource. When the patient arrives and the
  /// encounter begins it may be used as the admission diagnosis. The indication
  /// will typically be a Condition (with other resources referenced in the
  /// evidence.detail), or a Procedure.
  final List<Reference>? reasonReference;

  /// [priority] /// The priority of the appointment. Can be used to make informed decisions if
  /// needing to re-prioritize appointments. (The iCal Standard specifies 0 as
  /// undefined, 1 as highest, 9 as lowest priority).
  final FhirUnsignedInt? priority;
  final Element? priorityElement;

  /// [description] /// The brief description of the appointment as would be shown on a subject
  /// line in a meeting request, or appointment list. Detailed or expanded
  /// information should be put in the comment field.
  final FhirString? description;
  final Element? descriptionElement;

  /// [supportingInformation] /// Additional information to support the appointment provided when making the
  /// appointment.
  final List<Reference>? supportingInformation;

  /// [start] /// Date/Time that the appointment is to take place.
  final FhirInstant? start;
  final Element? startElement;

  /// [end] /// Date/Time that the appointment is to conclude.
  final FhirInstant? end;
  final Element? endElement;

  /// [minutesDuration] /// Number of minutes that the appointment is to take. This can be less than
  /// the duration between the start and end times. For example, where the actual
  /// time of appointment is only an estimate or if a 30 minute appointment is
  /// being requested, but any time would work. Also, if there is, for example, a
  /// planned 15 minute break in the middle of a long appointment, the duration
  /// may be 15 minutes less than the difference between the start and end.
  final FhirPositiveInt? minutesDuration;
  final Element? minutesDurationElement;

  /// [slot] /// The slots from the participants' schedules that will be filled by the
  /// appointment.
  final List<Reference>? slot;

  /// [created] /// The date that this appointment was initially created. This could be
  /// different to the meta.lastModified value on the initial entry, as this
  /// could have been before the resource was created on the FHIR server, and
  /// should remain unchanged over the lifespan of the appointment.
  final FhirDateTime? created;
  final Element? createdElement;

  /// [comment] /// Additional comments about the appointment.
  final FhirString? comment;
  final Element? commentElement;

  /// [patientInstruction] /// While Appointment.comment contains information for internal use,
  /// Appointment.patientInstructions is used to capture patient facing
  /// information about the Appointment (e.g. please bring your referral or fast
  /// from 8pm night before).
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;

  /// [basedOn] /// The service request this appointment is allocated to assess (e.g. incoming
  /// referral or procedure request).
  final List<Reference>? basedOn;

  /// [participant] /// List of participants involved in the appointment.
  final List<AppointmentParticipant> participant;

  /// [requestedPeriod] /// A set of date ranges (potentially including times) that the appointment is
  /// preferred to be scheduled within.
  ///
  /// The duration (usually in minutes) could also be provided to indicate the
  /// length of the appointment to fill and populate the start/end times for the
  /// actual allocated time. However, in other situations the duration may be
  /// calculated by the scheduling system.
  final List<Period>? requestedPeriod;
  @override
  Appointment clone() => throw UnimplementedError();
  Appointment copy({
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
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? cancelationReason,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirUnsignedInt? priority,
    Element? priorityElement,
    FhirString? description,
    Element? descriptionElement,
    List<Reference>? supportingInformation,
    FhirInstant? start,
    Element? startElement,
    FhirInstant? end,
    Element? endElement,
    FhirPositiveInt? minutesDuration,
    Element? minutesDurationElement,
    List<Reference>? slot,
    FhirDateTime? created,
    Element? createdElement,
    FhirString? comment,
    Element? commentElement,
    FhirString? patientInstruction,
    Element? patientInstructionElement,
    List<Reference>? basedOn,
    List<AppointmentParticipant>? participant,
    List<Period>? requestedPeriod,
  }) {
    return Appointment(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      cancelationReason: cancelationReason ?? this.cancelationReason,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      appointmentType: appointmentType ?? this.appointmentType,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      minutesDuration: minutesDuration ?? this.minutesDuration,
      minutesDurationElement:
          minutesDurationElement ?? this.minutesDurationElement,
      slot: slot ?? this.slot,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      patientInstructionElement:
          patientInstructionElement ?? this.patientInstructionElement,
      basedOn: basedOn ?? this.basedOn,
      participant: participant ?? this.participant,
      requestedPeriod: requestedPeriod ?? this.requestedPeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AppointmentParticipant] /// List of participants involved in the appointment.
class AppointmentParticipant extends BackboneElement {
  AppointmentParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.actor,
    this.required_,
    this.requiredElement,
    required this.status,
    this.statusElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Role of participant in the appointment.
  final List<CodeableConcept>? type;

  /// [actor] /// A Person, Location/HealthcareService or Device that is participating in the
  /// appointment.
  final Reference? actor;

  /// [required_] /// Whether this participant is required to be present at the meeting. This
  /// covers a use-case where two doctors need to meet to discuss the results for
  /// a specific patient, and the patient is not required to be present.
  final FhirCode? required_;
  final Element? requiredElement;

  /// [status] /// Participation status of the actor.
  final FhirCode status;
  final Element? statusElement;

  /// [period] /// Participation period of the actor.
  final Period? period;
  @override
  AppointmentParticipant clone() => throw UnimplementedError();
  AppointmentParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Reference? actor,
    FhirCode? required_,
    Element? requiredElement,
    FhirCode? status,
    Element? statusElement,
    Period? period,
  }) {
    return AppointmentParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      actor: actor ?? this.actor,
      required_: required_ ?? this.required_,
      requiredElement: requiredElement ?? this.requiredElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
    );
  }
}
