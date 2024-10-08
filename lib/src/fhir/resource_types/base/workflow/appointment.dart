// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

/// [Appointment] A booking of a healthcare event among patient(s),
@freezed
class Appointment extends DomainResource with _$Appointment {
  /// [Appointment] A booking of a healthcare event among patient(s),
  Appointment._();

  /// [Appointment] A booking of a healthcare event among patient(s),
  /// practitioner(s), related person(s) and/or device(s) for a specific
  ///  date/time. This may result in one or more Encounter(s).
  ///
  /// [resourceType] This is a Appointment resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] This records identifiers associated with this appointment
  /// concern that are defined by business processes and/or used to refer to it
  /// when a direct URL reference to the resource itself is not appropriate
  ///  (e.g. in CDA documents, or in written / printed documentation).
  ///
  /// [status] The overall status of the Appointment. Each of the participants
  /// has their own participation status which indicates their involvement in
  ///  the process, however this status indicates the shared status.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [cancelationReason] The coded reason for the appointment being cancelled.
  /// This is often used in reporting/billing/futher processing to determine if
  ///  further actions are required, or specific fees apply.
  ///
  /// [serviceCategory] A broad categorization of the service that is to be
  ///  performed during this appointment.
  ///
  /// [serviceType] The specific service that is to be performed during this
  ///  appointment.
  ///
  /// [specialty] The specialty of a practitioner that would be required to
  ///  perform the service requested in this appointment.
  ///
  /// [appointmentType] The style of appointment or patient that has been
  ///  booked in the slot (not service type).
  ///
  /// [reasonCode] The coded reason that this appointment is being scheduled.
  ///  This is more clinical than administrative.
  ///
  /// [reasonReference] Reason the appointment has been scheduled to take
  /// place, as specified using information from another resource. When the
  /// patient arrives and the encounter begins it may be used as the admission
  /// diagnosis. The indication will typically be a Condition (with other
  ///  resources referenced in the evidence.detail), or a Procedure.
  ///
  /// [priority] The priority of the appointment. Can be used to make informed
  /// decisions if needing to re-prioritize appointments. (The iCal Standard
  ///  specifies 0 as undefined, 1 as highest, 9 as lowest priority).
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [description] The brief description of the appointment as would be shown
  /// on a subject line in a meeting request, or appointment list. Detailed or
  ///  expanded information should be put in the comment field.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [supportingInformation] Additional information to support the appointment
  ///  provided when making the appointment.
  ///
  /// [start] Date/Time that the appointment is to take place.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] Date/Time that the appointment is to conclude.
  ///
  /// [endElement] Extensions for end
  ///
  /// [minutesDuration] Number of minutes that the appointment is to take. This
  /// can be less than the duration between the start and end times.  For
  /// example, where the actual time of appointment is only an estimate or if a
  /// 30 minute appointment is being requested, but any time would work.  Also,
  /// if there is, for example, a planned 15 minute break in the middle of a
  /// long appointment, the duration may be 15 minutes less than the difference
  ///  between the start and end.
  ///
  /// [minutesDurationElement] Extensions for minutesDuration
  ///
  /// [slot] The slots from the participants' schedules that will be filled by
  ///  the appointment.
  ///
  /// [created] The date that this appointment was initially created. This
  /// could be different to the meta.lastModified value on the initial entry, as
  /// this could have been before the resource was created on the FHIR server,
  ///  and should remain unchanged over the lifespan of the appointment.
  ///
  /// [createdElement] Extensions for created
  ///
  /// [comment] Additional comments about the appointment.
  ///
  /// [commentElement] Extensions for comment
  ///
  /// [patientInstruction] While Appointment.comment contains information for
  /// internal use, Appointment.patientInstructions is used to capture patient
  /// facing information about the Appointment (e.g. please bring your referral
  ///  or fast from 8pm night before).
  ///
  /// [patientInstructionElement] Extensions for patientInstruction
  ///
  /// [basedOn] The service request this appointment is allocated to assess
  ///  (e.g. incoming referral or procedure request).
  ///
  /// [participant] List of participants involved in the appointment.
  ///
  /// [requestedPeriod] A set of date ranges (potentially including times) that
  ///  the appointment is preferred to be scheduled within.
  /// The duration (usually in minutes) could also be provided to indicate the
  /// length of the appointment to fill and populate the start/end times for the
  /// actual allocated time. However, in other situations the duration may be
  ///  calculated by the scheduling system.
  factory Appointment({
    @Default(R4ResourceType.Appointment)
    @JsonKey(unknownEnumValue: R4ResourceType.Appointment)

    /// [resourceType] This is a Appointment resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] This records identifiers associated with this appointment
    /// concern that are defined by business processes and/or used to refer to it
    /// when a direct URL reference to the resource itself is not appropriate
    ///  (e.g. in CDA documents, or in written / printed documentation).
    List<Identifier>? identifier,

    /// [status] The overall status of the Appointment. Each of the participants
    /// has their own participation status which indicates their involvement in
    ///  the process, however this status indicates the shared status.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [cancelationReason] The coded reason for the appointment being cancelled.
    /// This is often used in reporting/billing/futher processing to determine if
    ///  further actions are required, or specific fees apply.
    CodeableConcept? cancelationReason,

    /// [serviceCategory] A broad categorization of the service that is to be
    ///  performed during this appointment.
    List<CodeableConcept>? serviceCategory,

    /// [serviceType] The specific service that is to be performed during this
    ///  appointment.
    List<CodeableConcept>? serviceType,

    /// [specialty] The specialty of a practitioner that would be required to
    ///  perform the service requested in this appointment.
    List<CodeableConcept>? specialty,

    /// [appointmentType] The style of appointment or patient that has been
    ///  booked in the slot (not service type).
    CodeableConcept? appointmentType,

    /// [reasonCode] The coded reason that this appointment is being scheduled.
    ///  This is more clinical than administrative.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Reason the appointment has been scheduled to take
    /// place, as specified using information from another resource. When the
    /// patient arrives and the encounter begins it may be used as the admission
    /// diagnosis. The indication will typically be a Condition (with other
    ///  resources referenced in the evidence.detail), or a Procedure.
    List<Reference>? reasonReference,

    /// [priority] The priority of the appointment. Can be used to make informed
    /// decisions if needing to re-prioritize appointments. (The iCal Standard
    ///  specifies 0 as undefined, 1 as highest, 9 as lowest priority).
    FhirUnsignedInt? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [description] The brief description of the appointment as would be shown
    /// on a subject line in a meeting request, or appointment list. Detailed or
    ///  expanded information should be put in the comment field.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [supportingInformation] Additional information to support the appointment
    ///  provided when making the appointment.
    List<Reference>? supportingInformation,

    /// [start] Date/Time that the appointment is to take place.
    FhirInstant? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') PrimitiveElement? startElement,

    /// [end] Date/Time that the appointment is to conclude.
    FhirInstant? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') PrimitiveElement? endElement,

    /// [minutesDuration] Number of minutes that the appointment is to take. This
    /// can be less than the duration between the start and end times.  For
    /// example, where the actual time of appointment is only an estimate or if a
    /// 30 minute appointment is being requested, but any time would work.  Also,
    /// if there is, for example, a planned 15 minute break in the middle of a
    /// long appointment, the duration may be 15 minutes less than the difference
    ///  between the start and end.
    FhirPositiveInt? minutesDuration,

    /// [minutesDurationElement] Extensions for minutesDuration
    @JsonKey(name: '_minutesDuration') PrimitiveElement? minutesDurationElement,

    /// [slot] The slots from the participants' schedules that will be filled by
    ///  the appointment.
    List<Reference>? slot,

    /// [created] The date that this appointment was initially created. This
    /// could be different to the meta.lastModified value on the initial entry, as
    /// this could have been before the resource was created on the FHIR server,
    ///  and should remain unchanged over the lifespan of the appointment.
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [comment] Additional comments about the appointment.
    String? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,

    /// [patientInstruction] While Appointment.comment contains information for
    /// internal use, Appointment.patientInstructions is used to capture patient
    /// facing information about the Appointment (e.g. please bring your referral
    ///  or fast from 8pm night before).
    String? patientInstruction,

    /// [patientInstructionElement] Extensions for patientInstruction
    @JsonKey(name: '_patientInstruction')
    PrimitiveElement? patientInstructionElement,

    /// [basedOn] The service request this appointment is allocated to assess
    ///  (e.g. incoming referral or procedure request).
    List<Reference>? basedOn,

    /// [participant] List of participants involved in the appointment.
    required List<AppointmentParticipant> participant,

    /// [requestedPeriod] A set of date ranges (potentially including times) that
    ///  the appointment is preferred to be scheduled within.
    /// The duration (usually in minutes) could also be provided to indicate the
    /// length of the appointment to fill and populate the start/end times for the
    /// actual allocated time. However, in other situations the duration may be
    ///  calculated by the scheduling system.
    List<Period>? requestedPeriod,
  }) = _Appointment;

  @override
  String get fhirType => 'Appointment';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Appointment.fromYaml(dynamic yaml) => yaml is String
      ? Appointment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  /// Acts like a constructor, returns a [Appointment], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Appointment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AppointmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [AppointmentParticipant] A booking of a healthcare event among
@freezed

/// [AppointmentParticipant] A booking of a healthcare event among
@freezed
class AppointmentParticipant extends BackboneElement
    with _$AppointmentParticipant {
  /// [AppointmentParticipant] A booking of a healthcare event among
  AppointmentParticipant._();

  /// [AppointmentParticipant] A booking of a healthcare event among
  /// patient(s), practitioner(s), related person(s) and/or device(s) for a
  ///  specific date/time. This may result in one or more Encounter(s).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Role of participant in the appointment.
  ///
  /// [actor] A Person, Location/HealthcareService or Device that is
  ///  participating in the appointment.
  ///
  /// [required] Whether this participant is required to be present at the
  /// meeting. This covers a use-case where two doctors need to meet to discuss
  /// the results for a specific patient, and the patient is not required to be
  ///  present.
  ///
  /// [requiredElement] Extensions for required
  ///
  /// [status] Participation status of the actor.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [period] Participation period of the actor.
  factory AppointmentParticipant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Role of participant in the appointment.
    List<CodeableConcept>? type,

    /// [actor] A Person, Location/HealthcareService or Device that is
    ///  participating in the appointment.
    Reference? actor,

    /// [required] Whether this participant is required to be present at the
    /// meeting. This covers a use-case where two doctors need to meet to discuss
    /// the results for a specific patient, and the patient is not required to be
    ///  present.
    @JsonKey(name: 'required') FhirCode? required_,

    /// [requiredElement] Extensions for required
    @JsonKey(name: '_required') PrimitiveElement? requiredElement,

    /// [status] Participation status of the actor.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [period] Participation period of the actor.
    Period? period,
  }) = _AppointmentParticipant;

  @override
  String get fhirType => 'AppointmentParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AppointmentParticipant.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AppointmentParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AppointmentParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AppointmentParticipant.fromJson(Map<String, dynamic> json) =>
      _$AppointmentParticipantFromJson(json);

  /// Acts like a constructor, returns a [AppointmentParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AppointmentParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AppointmentParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
