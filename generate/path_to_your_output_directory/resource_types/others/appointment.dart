import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Appointment] A booking of a healthcare event among patient(s),
/// practitioner(s), related person(s) and/or device(s) for a specific
/// date/time. This may result in one or more Encounter(s).

@freezed
class Appointment with _$Appointment {
  const Appointment._();

  const factory Appointment({
/// [resourceType] This is a Appointment resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] This records identifiers associated with this appointment
/// concern that are defined by business processes and/or used to refer to it
/// when a direct URL reference to the resource itself is not appropriate (e.g.
/// in CDA documents, or in written / printed documentation).

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The overall status of the Appointment. Each of the
/// participants has their own participation status which indicates their
/// involvement in the process, however this status indicates the shared
/// status.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [cancellationReason] The coded reason for the appointment being
/// cancelled. This is often used in reporting/billing/further processing to
/// determine if further actions are required, or specific fees apply.

    @JsonKey(name: 'cancellationReason') CodeableConcept? cancellationReason,
/// [class] Concepts representing classification of patient encounter such
/// as ambulatory (outpatient), inpatient, emergency, home health or others due
/// to local variations.

    @JsonKey(name: 'class') List<List<CodeableConcept>>? class,
/// [serviceCategory] A broad categorization of the service that is to be
/// performed during this appointment.

    @JsonKey(name: 'serviceCategory') List<List<CodeableConcept>>? serviceCategory,
/// [serviceType] The specific service that is to be performed during this
/// appointment.

    @JsonKey(name: 'serviceType') List<List<CodeableReference>>? serviceType,
/// [specialty] The specialty of a practitioner that would be required to
/// perform the service requested in this appointment.

    @JsonKey(name: 'specialty') List<List<CodeableConcept>>? specialty,
/// [appointmentType] The style of appointment or patient that has been
/// booked in the slot (not service type).

    @JsonKey(name: 'appointmentType') CodeableConcept? appointmentType,
/// [reason] The reason that this appointment is being scheduled. This is
/// more clinical than administrative. This can be coded, or as specified using
/// information from another resource. When the patient arrives and the
/// encounter begins it may be used as the admission diagnosis. The indication
/// will typically be a Condition (with other resources referenced in the
/// evidence.detail), or a Procedure.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [priority] The priority of the appointment. Can be used to make
/// informed decisions if needing to re-prioritize appointments. (The iCal
/// Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority).

    @JsonKey(name: 'priority') CodeableConcept? priority,
/// [description] The brief description of the appointment as would be
/// shown on a subject line in a meeting request, or appointment list. Detailed
/// or expanded information should be put in the note field.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [replaces] Appointment replaced by this Appointment in cases where
/// there is a cancellation, the details of the cancellation can be found in
/// the cancellationReason property (on the referenced resource).

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// [virtualService] Connection details of a virtual service (e.g.
/// conference call).

    @JsonKey(name: 'virtualService') List<List<VirtualServiceDetail>>? virtualService,
/// [supportingInformation] Additional information to support the
/// appointment provided when making the appointment.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [previousAppointment] The previous appointment in a series of related
/// appointments.

    @JsonKey(name: 'previousAppointment') Reference? previousAppointment,
/// [originatingAppointment] The originating appointment in a recurring set
/// of related appointments.

    @JsonKey(name: 'originatingAppointment') Reference? originatingAppointment,
/// [start] Date/Time that the appointment is to take place.

    @JsonKey(name: 'start') FhirInstant? start,
/// [_start] Extensions for start

    @JsonKey(name: '_start') PrimitiveElement? startElement,
/// [end] Date/Time that the appointment is to conclude.

    @JsonKey(name: 'end') FhirInstant? end,
/// [_end] Extensions for end

    @JsonKey(name: '_end') PrimitiveElement? endElement,
/// [minutesDuration] Number of minutes that the appointment is to take.
/// This can be less than the duration between the start and end times.  For
/// example, where the actual time of appointment is only an estimate or if a
/// 30 minute appointment is being requested, but any time would work.  Also,
/// if there is, for example, a planned 15 minute break in the middle of a long
/// appointment, the duration may be 15 minutes less than the difference
/// between the start and end.

    @JsonKey(name: 'minutesDuration') FhirPositiveInt? minutesDuration,
/// [_minutesDuration] Extensions for minutesDuration

    @JsonKey(name: '_minutesDuration') PrimitiveElement? minutesDurationElement,
/// [requestedPeriod] A set of date ranges (potentially including times)
/// that the appointment is preferred to be scheduled within.

The duration
/// (usually in minutes) could also be provided to indicate the length of the
/// appointment to fill and populate the start/end times for the actual
/// allocated time. However, in other situations the duration may be calculated
/// by the scheduling system.

    @JsonKey(name: 'requestedPeriod') List<List<Period>>? requestedPeriod,
/// [slot] The slots from the participants' schedules that will be filled
/// by the appointment.

    @JsonKey(name: 'slot') List<List<Reference>>? slot,
/// [account] The set of accounts that is expected to be used for billing
/// the activities that result from this Appointment.

    @JsonKey(name: 'account') List<List<Reference>>? account,
/// [created] The date that this appointment was initially created. This
/// could be different to the meta.lastModified value on the initial entry, as
/// this could have been before the resource was created on the FHIR server,
/// and should remain unchanged over the lifespan of the appointment.

    @JsonKey(name: 'created') FhirDateTime? created,
/// [_created] Extensions for created

    @JsonKey(name: '_created') PrimitiveElement? createdElement,
/// [cancellationDate] The date/time describing when the appointment was
/// cancelled.

    @JsonKey(name: 'cancellationDate') FhirDateTime? cancellationDate,
/// [_cancellationDate] Extensions for cancellationDate

    @JsonKey(name: '_cancellationDate') PrimitiveElement? cancellationDateElement,
/// [note] Additional notes/comments about the appointment.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [patientInstruction] While Appointment.note contains information for
/// internal use, Appointment.patientInstructions is used to capture patient
/// facing information about the Appointment (e.g. please bring your referral
/// or fast from 8pm night before).

    @JsonKey(name: 'patientInstruction') List<List<CodeableReference>>? patientInstruction,
/// [basedOn] The request this appointment is allocated to assess (e.g.
/// incoming referral or procedure request).

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [subject] The patient or group associated with the appointment, if they
/// are to be present (usually) then they should also be included in the
/// participant backbone element.

    @JsonKey(name: 'subject') Reference? subject,
/// [participant] List of participants involved in the appointment.

    @JsonKey(name: 'participant') List<List<Appointment_Participant>>? participant,
/// [recurrenceId] The sequence number that identifies a specific
/// appointment in a recurring pattern.

    @JsonKey(name: 'recurrenceId') FhirPositiveInt? recurrenceId,
/// [_recurrenceId] Extensions for recurrenceId

    @JsonKey(name: '_recurrenceId') PrimitiveElement? recurrenceIdElement,
/// [occurrenceChanged] This appointment varies from the recurring pattern.

    @JsonKey(name: 'occurrenceChanged') FhirBoolean? occurrenceChanged,
/// [_occurrenceChanged] Extensions for occurrenceChanged

    @JsonKey(name: '_occurrenceChanged') PrimitiveElement? occurrenceChangedElement,
/// [recurrenceTemplate] The details of the recurrence pattern or template
/// that is used to generate recurring appointments.

    @JsonKey(name: 'recurrenceTemplate') List<List<Appointment_RecurrenceTemplate>>? recurrenceTemplate,
  }) = _$Appointment;

  @override
  String get fhirType => 'Appointment';

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  factory Appointment.fromYaml(dynamic yaml) => yaml is String
      ? Appointment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AppointmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
