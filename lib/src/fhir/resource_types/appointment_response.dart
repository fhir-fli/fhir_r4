import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [AppointmentResponse] /// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  AppointmentResponse({
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
    required this.appointment,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.participantStatusElement,
    this.comment,
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.AppointmentResponse);

  @override
  String get fhirType => 'AppointmentResponse';

  @Id()
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this appointment response concern
  /// that are defined by business processes and/ or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate.
  final List<Identifier>? identifier;

  /// [appointment] /// Appointment that this response is replying to.
  final Reference appointment;

  /// [start] /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  final FhirInstant? start;
  final Element? startElement;

  /// [end] /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  final FhirInstant? end;
  final Element? endElement;

  /// [participantType] /// Role of participant in the appointment.
  final List<CodeableConcept>? participantType;

  /// [actor] /// A Person, Location, HealthcareService, or Device that is participating in
  /// the appointment.
  final Reference? actor;

  /// [participantStatus] /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment (as
  /// a confirmation of the time) or can be empty.
  final ParticipationStatus participantStatus;
  final Element? participantStatusElement;

  /// [comment] /// Additional comments about the appointment.
  final FhirString? comment;
  final Element? commentElement;
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
    json['appointment'] = appointment.toJson();
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
    if (participantType != null && participantType!.isNotEmpty) {
      json['participantType'] = participantType!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (actor != null) {
      json['actor'] = actor!.toJson();
    }
    json['participantStatus'] = participantStatus.toJson();
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) {
    return AppointmentResponse(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      appointment:
          Reference.fromJson(json['appointment'] as Map<String, dynamic>),
      start: json['start'] != null ? FhirInstant(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInstant(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
      participantType: json['participantType'] != null
          ? (json['participantType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      actor: json['actor'] != null
          ? Reference.fromJson(json['actor'] as Map<String, dynamic>)
          : null,
      participantStatus: ParticipationStatus.fromJson(
          json['participantStatus'] as Map<String, dynamic>),
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  AppointmentResponse clone() => throw UnimplementedError();
  @override
  AppointmentResponse copyWith({
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
    Reference? appointment,
    FhirInstant? start,
    Element? startElement,
    FhirInstant? end,
    Element? endElement,
    List<CodeableConcept>? participantType,
    Reference? actor,
    ParticipationStatus? participantStatus,
    Element? participantStatusElement,
    FhirString? comment,
    Element? commentElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      appointment: appointment ?? this.appointment,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      participantType: participantType ?? this.participantType,
      actor: actor ?? this.actor,
      participantStatus: participantStatus ?? this.participantStatus,
      participantStatusElement:
          participantStatusElement ?? this.participantStatusElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AppointmentResponse.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AppointmentResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AppointmentResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AppointmentResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AppointmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
