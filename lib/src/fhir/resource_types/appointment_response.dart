import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AppointmentResponse]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  /// Primary constructor for [AppointmentResponse]

  AppointmentResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.comment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.AppointmentResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponse.fromJson(Map<String, dynamic> json) {
    return AppointmentResponse(
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
      appointment: Reference.fromJson(
        json['appointment'] as Map<String, dynamic>,
      ),
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
      participantType: json['participantType'] != null
          ? (json['participantType'] as List<dynamic>)
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
      participantStatus: ParticipationStatus.fromJson({
        'value': json['participantStatus'],
        '_value': json['_participantStatus'],
      }),
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [AppointmentResponse] from a [String]
  /// or [YamlMap] object
  factory AppointmentResponse.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AppointmentResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AppointmentResponse cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AppointmentResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AppointmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AppointmentResponse';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// This records identifiers associated with this appointment response
  /// concern that are defined by business processes and/ or used to refer to
  /// it when a direct URL reference to the resource itself is not
  /// appropriate.
  final List<Identifier>? identifier;

  /// [appointment]
  /// Appointment that this response is replying to.
  final Reference appointment;

  /// [start]
  /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  final FhirInstant? start;

  /// [end]
  /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  final FhirInstant? end;

  /// [participantType]
  /// Role of participant in the appointment.
  final List<CodeableConcept>? participantType;

  /// [actor]
  /// A Person, Location, HealthcareService, or Device that is participating
  /// in the appointment.
  final Reference? actor;

  /// [participantStatus]
  /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment
  /// (as a confirmation of the time) or can be empty.
  final ParticipationStatus participantStatus;

  /// [comment]
  /// Additional comments about the appointment.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (text != null) {
      final primitiveJson = text!.toJson();
      json['text'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_text'] = primitiveJson['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final primitiveList = contained!.map((e) => e.toJson()).toList();
      json['contained'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contained'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final primitiveList = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_identifier'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (appointment != null) {
      final primitiveJson = appointment!.toJson();
      json['appointment'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_appointment'] = primitiveJson['_value'];
      }
    }

    if (start != null) {
      final primitiveJson = start!.toJson();
      json['start'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_start'] = primitiveJson['_value'];
      }
    }

    if (end != null) {
      final primitiveJson = end!.toJson();
      json['end'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_end'] = primitiveJson['_value'];
      }
    }

    if (participantType != null && participantType!.isNotEmpty) {
      final primitiveList = participantType!.map((e) => e.toJson()).toList();
      json['participantType'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_participantType'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (actor != null) {
      final primitiveJson = actor!.toJson();
      json['actor'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_actor'] = primitiveJson['_value'];
      }
    }

    if (participantStatus != null) {
      final primitiveJson = participantStatus!.toJson();
      json['participantStatus'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_participantStatus'] = primitiveJson['_value'];
      }
    }

    if (comment != null) {
      final primitiveJson = comment!.toJson();
      json['comment'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_comment'] = primitiveJson['_value'];
      }
    }

    return json;
  }

  @override
  AppointmentResponse clone() => throw UnimplementedError();
  @override
  AppointmentResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? appointment,
    FhirInstant? start,
    FhirInstant? end,
    List<CodeableConcept>? participantType,
    Reference? actor,
    ParticipationStatus? participantStatus,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AppointmentResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      appointment: appointment ?? this.appointment,
      start: start ?? this.start,
      end: end ?? this.end,
      participantType: participantType ?? this.participantType,
      actor: actor ?? this.actor,
      participantStatus: participantStatus ?? this.participantStatus,
      comment: comment ?? this.comment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
