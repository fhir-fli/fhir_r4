import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AppointmentResponse]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  /// Primary constructor for
  /// [AppointmentResponse]

  const AppointmentResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.comment,
  }) : super(
          resourceType: R4ResourceType.AppointmentResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentResponse(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      appointment: JsonParser.parseObject<Reference>(
        json,
        'appointment',
        Reference.fromJson,
      )!,
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
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      ),
      participantStatus: JsonParser.parsePrimitive<ParticipationStatus>(
        json,
        'participantStatus',
        ParticipationStatus.fromJson,
      )!,
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [AppointmentResponse]
  /// from a [String] or [YamlMap] object
  factory AppointmentResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponse.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('appointment', appointment);
    addField('start', start);
    addField('end', end);
    addField('participantType', participantType);
    addField('actor', actor);
    addField('participantStatus', participantStatus);
    addField('comment', comment);
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
    );
  }
}
