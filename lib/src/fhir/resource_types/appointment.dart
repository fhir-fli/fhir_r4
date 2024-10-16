import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Appointment]
/// A booking of a healthcare event among patient(s), practitioner(s),
/// related person(s) and/or device(s) for a specific date/time. This may
/// result in one or more Encounter(s).
class Appointment extends DomainResource {
  /// Primary constructor for [Appointment]

  Appointment({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Appointment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: AppointmentStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      cancelationReason: json['cancelationReason'] != null
          ? CodeableConcept.fromJson(
              json['cancelationReason'] as Map<String, dynamic>,
            )
          : null,
      serviceCategory: json['serviceCategory'] != null
          ? (json['serviceCategory'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? (json['serviceType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      appointmentType: json['appointmentType'] != null
          ? CodeableConcept.fromJson(
              json['appointmentType'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: json['priority'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      start: json['start'] != null
          ? FhirInstant.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
          ? FhirInstant.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
      minutesDuration: json['minutesDuration'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['minutesDuration'],
              '_value': json['_minutesDuration'],
            })
          : null,
      slot: json['slot'] != null
          ? (json['slot'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      created: json['created'] != null
          ? FhirDateTime.fromJson({
              'value': json['created'],
              '_value': json['_created'],
            })
          : null,
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      patientInstruction: json['patientInstruction'] != null
          ? FhirString.fromJson({
              'value': json['patientInstruction'],
              '_value': json['_patientInstruction'],
            })
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      participant: ensureNonNullList((json['participant'] as List<dynamic>)
          .map<AppointmentParticipant>(
            (v) => AppointmentParticipant.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      requestedPeriod: json['requestedPeriod'] != null
          ? (json['requestedPeriod'] as List<dynamic>)
              .map<Period>(
                (v) => Period.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Appointment] from a [String]
  /// or [YamlMap] object
  factory Appointment.fromYaml(dynamic yaml) => yaml is String
      ? Appointment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Appointment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Appointment cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Appointment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Appointment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Appointment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Appointment';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// This records identifiers associated with this appointment concern that
  /// are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate (e.g. in
  /// CDA documents, or in written / printed documentation).
  final List<Identifier>? identifier;

  /// [status]
  /// The overall status of the Appointment. Each of the participants has
  /// their own participation status which indicates their involvement in the
  /// process, however this status indicates the shared status.
  final AppointmentStatus status;

  /// [cancelationReason]
  /// The coded reason for the appointment being cancelled. This is often
  /// used in reporting/billing/futher processing to determine if further
  /// actions are required, or specific fees apply.
  final CodeableConcept? cancelationReason;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType]
  /// The specific service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType]
  /// The style of appointment or patient that has been booked in the slot
  /// (not service type).
  final CodeableConcept? appointmentType;

  /// [reasonCode]
  /// The coded reason that this appointment is being scheduled. This is more
  /// clinical than administrative.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Reason the appointment has been scheduled to take place, as specified
  /// using information from another resource. When the patient arrives and
  /// the encounter begins it may be used as the admission diagnosis. The
  /// indication will typically be a Condition (with other resources
  /// referenced in the evidence.detail), or a Procedure.
  final List<Reference>? reasonReference;

  /// [priority]
  /// The priority of the appointment. Can be used to make informed decisions
  /// if needing to re-prioritize appointments. (The iCal Standard specifies
  /// 0 as undefined, 1 as highest, 9 as lowest priority).
  final FhirUnsignedInt? priority;

  /// [description]
  /// The brief description of the appointment as would be shown on a subject
  /// line in a meeting request, or appointment list. Detailed or expanded
  /// information should be put in the comment field.
  final FhirString? description;

  /// [supportingInformation]
  /// Additional information to support the appointment provided when making
  /// the appointment.
  final List<Reference>? supportingInformation;

  /// [start]
  /// Date/Time that the appointment is to take place.
  final FhirInstant? start;

  /// [end]
  /// Date/Time that the appointment is to conclude.
  final FhirInstant? end;

  /// [minutesDuration]
  /// Number of minutes that the appointment is to take. This can be less
  /// than the duration between the start and end times. For example, where
  /// the actual time of appointment is only an estimate or if a 30 minute
  /// appointment is being requested, but any time would work. Also, if there
  /// is, for example, a planned 15 minute break in the middle of a long
  /// appointment, the duration may be 15 minutes less than the difference
  /// between the start and end.
  final FhirPositiveInt? minutesDuration;

  /// [slot]
  /// The slots from the participants' schedules that will be filled by the
  /// appointment.
  final List<Reference>? slot;

  /// [created]
  /// The date that this appointment was initially created. This could be
  /// different to the meta.lastModified value on the initial entry, as this
  /// could have been before the resource was created on the FHIR server, and
  /// should remain unchanged over the lifespan of the appointment.
  final FhirDateTime? created;

  /// [comment]
  /// Additional comments about the appointment.
  final FhirString? comment;

  /// [patientInstruction]
  /// While Appointment.comment contains information for internal use,
  /// Appointment.patientInstructions is used to capture patient facing
  /// information about the Appointment (e.g. please bring your referral or
  /// fast from 8pm night before).
  final FhirString? patientInstruction;

  /// [basedOn]
  /// The service request this appointment is allocated to assess (e.g.
  /// incoming referral or procedure request).
  final List<Reference>? basedOn;

  /// [participant]
  /// List of participants involved in the appointment.
  final List<AppointmentParticipant> participant;

  /// [requestedPeriod]
  /// A set of date ranges (potentially including times) that the appointment
  /// is preferred to be scheduled within.
  ///
  /// The duration (usually in minutes) could also be provided to indicate
  /// the length of the appointment to fill and populate the start/end times
  /// for the actual allocated time. However, in other situations the
  /// duration may be calculated by the scheduling system.
  final List<Period>? requestedPeriod;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (cancelationReason != null) {
      final fieldJson10 = cancelationReason!.toJson();
      json['cancelationReason'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_cancelationReason'] = fieldJson10['_value'];
      }
    }

    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      final fieldJson11 = serviceCategory!.map((e) => e.toJson()).toList();
      json['serviceCategory'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_serviceCategory'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (serviceType != null && serviceType!.isNotEmpty) {
      final fieldJson12 = serviceType!.map((e) => e.toJson()).toList();
      json['serviceType'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_serviceType'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (specialty != null && specialty!.isNotEmpty) {
      final fieldJson13 = specialty!.map((e) => e.toJson()).toList();
      json['specialty'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_specialty'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (appointmentType != null) {
      final fieldJson14 = appointmentType!.toJson();
      json['appointmentType'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_appointmentType'] = fieldJson14['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson15 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson16 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (priority != null) {
      final fieldJson17 = priority!.toJson();
      json['priority'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_priority'] = fieldJson17['_value'];
      }
    }

    if (description != null) {
      final fieldJson18 = description!.toJson();
      json['description'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_description'] = fieldJson18['_value'];
      }
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      final fieldJson19 =
          supportingInformation!.map((e) => e.toJson()).toList();
      json['supportingInformation'] =
          fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_supportingInformation'] =
            fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (start != null) {
      final fieldJson20 = start!.toJson();
      json['start'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_start'] = fieldJson20['_value'];
      }
    }

    if (end != null) {
      final fieldJson21 = end!.toJson();
      json['end'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_end'] = fieldJson21['_value'];
      }
    }

    if (minutesDuration != null) {
      final fieldJson22 = minutesDuration!.toJson();
      json['minutesDuration'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_minutesDuration'] = fieldJson22['_value'];
      }
    }

    if (slot != null && slot!.isNotEmpty) {
      final fieldJson23 = slot!.map((e) => e.toJson()).toList();
      json['slot'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_slot'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (created != null) {
      final fieldJson24 = created!.toJson();
      json['created'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_created'] = fieldJson24['_value'];
      }
    }

    if (comment != null) {
      final fieldJson25 = comment!.toJson();
      json['comment'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_comment'] = fieldJson25['_value'];
      }
    }

    if (patientInstruction != null) {
      final fieldJson26 = patientInstruction!.toJson();
      json['patientInstruction'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_patientInstruction'] = fieldJson26['_value'];
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson27 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    final fieldJson28 = participant.map((e) => e.toJson()).toList();
    json['participant'] = fieldJson28.map((e) => e['value']).toList();
    if (fieldJson28.any((e) => e['_value'] != null)) {
      json['_participant'] = fieldJson28.map((e) => e['_value']).toList();
    }

    if (requestedPeriod != null && requestedPeriod!.isNotEmpty) {
      final fieldJson29 = requestedPeriod!.map((e) => e.toJson()).toList();
      json['requestedPeriod'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_requestedPeriod'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Appointment clone() => throw UnimplementedError();
  @override
  Appointment copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    AppointmentStatus? status,
    CodeableConcept? cancelationReason,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirUnsignedInt? priority,
    FhirString? description,
    List<Reference>? supportingInformation,
    FhirInstant? start,
    FhirInstant? end,
    FhirPositiveInt? minutesDuration,
    List<Reference>? slot,
    FhirDateTime? created,
    FhirString? comment,
    FhirString? patientInstruction,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      cancelationReason: cancelationReason ?? this.cancelationReason,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      appointmentType: appointmentType ?? this.appointmentType,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      priority: priority ?? this.priority,
      description: description ?? this.description,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      start: start ?? this.start,
      end: end ?? this.end,
      minutesDuration: minutesDuration ?? this.minutesDuration,
      slot: slot ?? this.slot,
      created: created ?? this.created,
      comment: comment ?? this.comment,
      patientInstruction: patientInstruction ?? this.patientInstruction,
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
}

/// [AppointmentParticipant]
/// List of participants involved in the appointment.
class AppointmentParticipant extends BackboneElement {
  /// Primary constructor for [AppointmentParticipant]

  AppointmentParticipant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.actor,
    this.required_,
    required this.status,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentParticipant.fromJson(Map<String, dynamic> json) {
    return AppointmentParticipant(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      actor: json['actor'] != null
          ? Reference.fromJson(
              json['actor'] as Map<String, dynamic>,
            )
          : null,
      required_: json['required'] != null
          ? ParticipantRequired.fromJson({
              'value': json['required'],
              '_value': json['_required'],
            })
          : null,
      status: ParticipationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [AppointmentParticipant] from a [String]
  /// or [YamlMap] object
  factory AppointmentParticipant.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AppointmentParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AppointmentParticipant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AppointmentParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AppointmentParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AppointmentParticipant';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Role of participant in the appointment.
  final List<CodeableConcept>? type;

  /// [actor]
  /// A Person, Location/HealthcareService or Device that is participating in
  /// the appointment.
  final Reference? actor;

  /// [required_]
  /// Whether this participant is required to be present at the meeting. This
  /// covers a use-case where two doctors need to meet to discuss the results
  /// for a specific patient, and the patient is not required to be present.
  final ParticipantRequired? required_;

  /// [status]
  /// Participation status of the actor.
  final ParticipationStatus status;

  /// [period]
  /// Participation period of the actor.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson3 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (actor != null) {
      final fieldJson4 = actor!.toJson();
      json['actor'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_actor'] = fieldJson4['_value'];
      }
    }

    if (required_ != null) {
      final fieldJson5 = required_!.toJson();
      json['required'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_required'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = status.toJson();
    json['status'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_status'] = fieldJson6['_value'];
    }

    if (period != null) {
      final fieldJson7 = period!.toJson();
      json['period'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_period'] = fieldJson7['_value'];
      }
    }

    return json;
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
    ParticipationStatus? status,
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
      status: status ?? this.status,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
