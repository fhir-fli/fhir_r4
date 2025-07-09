import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'appointment.g.dart';

/// [Appointment]
/// A booking of a healthcare event among patient(s), practitioner(s),
/// related person(s) and/or device(s) for a specific date/time. This may
/// result in one or more Encounter(s).
class Appointment extends DomainResource {
  /// Primary constructor for
  /// [Appointment]

  const Appointment({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.Appointment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Appointment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Appointment(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<AppointmentStatus>(
        json,
        'status',
        AppointmentStatus.fromJson,
      )!,
      cancelationReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'cancelationReason',
        CodeableConcept.fromJson,
      ),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      appointmentType: JsonParser.parseObject<CodeableConcept>(
        json,
        'appointmentType',
        CodeableConcept.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'priority',
        FhirUnsignedInt.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'start',
        FhirInstant.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
      ),
      minutesDuration: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'minutesDuration',
        FhirPositiveInt.fromJson,
      ),
      slot: (json['slot'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      participant: (json['participant'] as List<dynamic>)
          .map<AppointmentParticipant>(
            (v) => AppointmentParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      requestedPeriod: (json['requestedPeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Appointment]
  /// from a [String] or [YamlMap] object
  factory Appointment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Appointment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Appointment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Appointment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Appointment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Appointment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Appointment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Appointment';

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'cancelationReason',
      cancelationReason,
    );
    addField(
      'serviceCategory',
      serviceCategory,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'specialty',
      specialty,
    );
    addField(
      'appointmentType',
      appointmentType,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'description',
      description,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'minutesDuration',
      minutesDuration,
    );
    addField(
      'slot',
      slot,
    );
    addField(
      'created',
      created,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'patientInstruction',
      patientInstruction,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'requestedPeriod',
      requestedPeriod,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'cancelationReason',
      'serviceCategory',
      'serviceType',
      'specialty',
      'appointmentType',
      'reasonCode',
      'reasonReference',
      'priority',
      'description',
      'supportingInformation',
      'start',
      'end',
      'minutesDuration',
      'slot',
      'created',
      'comment',
      'patientInstruction',
      'basedOn',
      'participant',
      'requestedPeriod',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'cancelationReason':
        if (cancelationReason != null) {
          fields.add(cancelationReason!);
        }
      case 'serviceCategory':
        if (serviceCategory != null) {
          fields.addAll(serviceCategory!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.addAll(serviceType!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'appointmentType':
        if (appointmentType != null) {
          fields.add(appointmentType!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'minutesDuration':
        if (minutesDuration != null) {
          fields.add(minutesDuration!);
        }
      case 'slot':
        if (slot != null) {
          fields.addAll(slot!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'patientInstruction':
        if (patientInstruction != null) {
          fields.add(patientInstruction!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'participant':
        fields.addAll(participant);
      case 'requestedPeriod':
        if (requestedPeriod != null) {
          fields.addAll(requestedPeriod!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Appointment clone() => copyWith();

  /// Copy function for [Appointment]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Appointment) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cancelationReason,
      o.cancelationReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      serviceCategory,
      o.serviceCategory,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      appointmentType,
      o.appointmentType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minutesDuration,
      o.minutesDuration,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      slot,
      o.slot,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<AppointmentParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<Period>(
      requestedPeriod,
      o.requestedPeriod,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentParticipant]
/// List of participants involved in the appointment.
class AppointmentParticipant extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentParticipant]

  const AppointmentParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.actor,
    this.required_,
    required this.status,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentParticipant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      ),
      required_: JsonParser.parsePrimitive<ParticipantRequired>(
        json,
        'required',
        ParticipantRequired.fromJson,
      ),
      status: JsonParser.parsePrimitive<ParticipationStatus>(
        json,
        'status',
        ParticipationStatus.fromJson,
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [AppointmentParticipant]
  /// from a [String] or [YamlMap] object
  factory AppointmentParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentParticipant';

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'required',
      required_,
    );
    addField(
      'status',
      status,
    );
    addField(
      'period',
      period,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'actor',
      'required',
      'status',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      case 'required':
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'status':
        fields.add(status);
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AppointmentParticipant clone() => copyWith();

  /// Copy function for [AppointmentParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentParticipantCopyWith<AppointmentParticipant> get copyWith =>
      _$AppointmentParticipantCopyWithImpl<AppointmentParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      required_,
      o.required_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
