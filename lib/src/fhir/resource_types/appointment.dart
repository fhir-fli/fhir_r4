import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Appointment] /// A booking of a healthcare event among patient(s), practitioner(s), related
/// person(s) and/or device(s) for a specific date/time. This may result in one
/// or more Encounter(s).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Appointment);
  @override
  String get fhirType => 'Appointment';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this appointment concern that are
  /// defined by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate (e.g. in CDA documents,
  /// or in written / printed documentation).
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The overall status of the Appointment. Each of the participants has their
  /// own participation status which indicates their involvement in the process,
  /// however this status indicates the shared status.
  @JsonKey(name: 'status')
  final AppointmentStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [cancelationReason] /// The coded reason for the appointment being cancelled. This is often used in
  /// reporting/billing/futher processing to determine if further actions are
  /// required, or specific fees apply.
  @JsonKey(name: 'cancelationReason')
  final CodeableConcept? cancelationReason;

  /// [serviceCategory] /// A broad categorization of the service that is to be performed during this
  /// appointment.
  @JsonKey(name: 'serviceCategory')
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType] /// The specific service that is to be performed during this appointment.
  @JsonKey(name: 'serviceType')
  final List<CodeableConcept>? serviceType;

  /// [specialty] /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  @JsonKey(name: 'specialty')
  final List<CodeableConcept>? specialty;

  /// [appointmentType] /// The style of appointment or patient that has been booked in the slot (not
  /// service type).
  @JsonKey(name: 'appointmentType')
  final CodeableConcept? appointmentType;

  /// [reasonCode] /// The coded reason that this appointment is being scheduled. This is more
  /// clinical than administrative.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Reason the appointment has been scheduled to take place, as specified using
  /// information from another resource. When the patient arrives and the
  /// encounter begins it may be used as the admission diagnosis. The indication
  /// will typically be a Condition (with other resources referenced in the
  /// evidence.detail), or a Procedure.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [priority] /// The priority of the appointment. Can be used to make informed decisions if
  /// needing to re-prioritize appointments. (The iCal Standard specifies 0 as
  /// undefined, 1 as highest, 9 as lowest priority).
  @JsonKey(name: 'priority')
  final FhirUnsignedInt? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [description] /// The brief description of the appointment as would be shown on a subject
  /// line in a meeting request, or appointment list. Detailed or expanded
  /// information should be put in the comment field.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [supportingInformation] /// Additional information to support the appointment provided when making the
  /// appointment.
  @JsonKey(name: 'supportingInformation')
  final List<Reference>? supportingInformation;

  /// [start] /// Date/Time that the appointment is to take place.
  @JsonKey(name: 'start')
  final FhirInstant? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// Date/Time that the appointment is to conclude.
  @JsonKey(name: 'end')
  final FhirInstant? end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [minutesDuration] /// Number of minutes that the appointment is to take. This can be less than
  /// the duration between the start and end times. For example, where the actual
  /// time of appointment is only an estimate or if a 30 minute appointment is
  /// being requested, but any time would work. Also, if there is, for example, a
  /// planned 15 minute break in the middle of a long appointment, the duration
  /// may be 15 minutes less than the difference between the start and end.
  @JsonKey(name: 'minutesDuration')
  final FhirPositiveInt? minutesDuration;
  @JsonKey(name: '_minutesDuration')
  final Element? minutesDurationElement;

  /// [slot] /// The slots from the participants' schedules that will be filled by the
  /// appointment.
  @JsonKey(name: 'slot')
  final List<Reference>? slot;

  /// [created] /// The date that this appointment was initially created. This could be
  /// different to the meta.lastModified value on the initial entry, as this
  /// could have been before the resource was created on the FHIR server, and
  /// should remain unchanged over the lifespan of the appointment.
  @JsonKey(name: 'created')
  final FhirDateTime? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [comment] /// Additional comments about the appointment.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [patientInstruction] /// While Appointment.comment contains information for internal use,
  /// Appointment.patientInstructions is used to capture patient facing
  /// information about the Appointment (e.g. please bring your referral or fast
  /// from 8pm night before).
  @JsonKey(name: 'patientInstruction')
  final FhirString? patientInstruction;
  @JsonKey(name: '_patientInstruction')
  final Element? patientInstructionElement;

  /// [basedOn] /// The service request this appointment is allocated to assess (e.g. incoming
  /// referral or procedure request).
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [participant] /// List of participants involved in the appointment.
  @JsonKey(name: 'participant')
  final List<AppointmentParticipant> participant;

  /// [requestedPeriod] /// A set of date ranges (potentially including times) that the appointment is
  /// preferred to be scheduled within.
  ///
  /// The duration (usually in minutes) could also be provided to indicate the
  /// length of the appointment to fill and populate the start/end times for the
  /// actual allocated time. However, in other situations the duration may be
  /// calculated by the scheduling system.
  @JsonKey(name: 'requestedPeriod')
  final List<Period>? requestedPeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (cancelationReason != null) {
      json['cancelationReason'] = cancelationReason!.toJson();
    }
    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      json['serviceCategory'] = serviceCategory!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (serviceType != null && serviceType!.isNotEmpty) {
      json['serviceType'] =
          serviceType!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (appointmentType != null) {
      json['appointmentType'] = appointmentType!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (priority?.value != null) {
      json['priority'] = priority!.value;
    }
    if (priorityElement != null) {
      json['_priority'] = priorityElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] = supportingInformation!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    if (minutesDuration?.value != null) {
      json['minutesDuration'] = minutesDuration!.value;
    }
    if (minutesDurationElement != null) {
      json['_minutesDuration'] = minutesDurationElement!.toJson();
    }
    if (slot != null && slot!.isNotEmpty) {
      json['slot'] = slot!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (created?.value != null) {
      json['created'] = created!.value;
    }
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (patientInstruction?.value != null) {
      json['patientInstruction'] = patientInstruction!.value;
    }
    if (patientInstructionElement != null) {
      json['_patientInstruction'] = patientInstructionElement!.toJson();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['participant'] = participant
        .map<dynamic>((AppointmentParticipant v) => v.toJson())
        .toList();
    if (requestedPeriod != null && requestedPeriod!.isNotEmpty) {
      json['requestedPeriod'] =
          requestedPeriod!.map<dynamic>((Period v) => v.toJson()).toList();
    }
    return json;
  }

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status:
          AppointmentStatus.fromJson(json['status'] as Map<String, dynamic>),
      cancelationReason: json['cancelationReason'] != null
          ? CodeableConcept.fromJson(
              json['cancelationReason'] as Map<String, dynamic>)
          : null,
      serviceCategory: json['serviceCategory'] != null
          ? (json['serviceCategory'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? (json['serviceType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      appointmentType: json['appointmentType'] != null
          ? CodeableConcept.fromJson(
              json['appointmentType'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      priority:
          json['priority'] != null ? FhirUnsignedInt(json['priority']) : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(json['_priority'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      start: json['start'] != null ? FhirInstant(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInstant(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
      minutesDuration: json['minutesDuration'] != null
          ? FhirPositiveInt(json['minutesDuration'])
          : null,
      minutesDurationElement: json['_minutesDuration'] != null
          ? Element.fromJson(json['_minutesDuration'] as Map<String, dynamic>)
          : null,
      slot: json['slot'] != null
          ? (json['slot'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      created: json['created'] != null ? FhirDateTime(json['created']) : null,
      createdElement: json['_created'] != null
          ? Element.fromJson(json['_created'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
      patientInstruction: json['patientInstruction'] != null
          ? FhirString(json['patientInstruction'])
          : null,
      patientInstructionElement: json['_patientInstruction'] != null
          ? Element.fromJson(
              json['_patientInstruction'] as Map<String, dynamic>)
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      participant: (json['participant'] as List<dynamic>)
          .map<AppointmentParticipant>((dynamic v) =>
              AppointmentParticipant.fromJson(v as Map<String, dynamic>))
          .toList(),
      requestedPeriod: json['requestedPeriod'] != null
          ? (json['requestedPeriod'] as List<dynamic>)
              .map<Period>(
                  (dynamic v) => Period.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Appointment clone() => throw UnimplementedError();
  @override
  Appointment copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    AppointmentStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Appointment.fromYaml(dynamic yaml) => yaml is String
      ? Appointment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Appointment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Appointment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Appointment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Appointment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AppointmentParticipant] /// List of participants involved in the appointment.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AppointmentParticipant';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Role of participant in the appointment.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [actor] /// A Person, Location/HealthcareService or Device that is participating in the
  /// appointment.
  @JsonKey(name: 'actor')
  final Reference? actor;

  /// [required_] /// Whether this participant is required to be present at the meeting. This
  /// covers a use-case where two doctors need to meet to discuss the results for
  /// a specific patient, and the patient is not required to be present.
  @JsonKey(name: 'required')
  final ParticipantRequired? required_;
  @JsonKey(name: '_required')
  final Element? requiredElement;

  /// [status] /// Participation status of the actor.
  @JsonKey(name: 'status')
  final ParticipationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [period] /// Participation period of the actor.
  @JsonKey(name: 'period')
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (actor != null) {
      json['actor'] = actor!.toJson();
    }
    if (required_ != null) {
      json['required'] = required_!.toJson();
    }
    json['status'] = status.toJson();
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory AppointmentParticipant.fromJson(Map<String, dynamic> json) {
    return AppointmentParticipant(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      actor: json['actor'] != null
          ? Reference.fromJson(json['actor'] as Map<String, dynamic>)
          : null,
      required_: json['required'] != null
          ? ParticipantRequired.fromJson(
              json['required'] as Map<String, dynamic>)
          : null,
      status:
          ParticipationStatus.fromJson(json['status'] as Map<String, dynamic>),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  AppointmentParticipant clone() => throw UnimplementedError();
  @override
  AppointmentParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Reference? actor,
    ParticipantRequired? required_,
    Element? requiredElement,
    ParticipationStatus? status,
    Element? statusElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AppointmentParticipant.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AppointmentParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AppointmentParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AppointmentParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AppointmentParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
