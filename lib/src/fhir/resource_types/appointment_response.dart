import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'appointment_response.g.dart';

/// [AppointmentResponse] /// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.AppointmentResponse);
  @override
  String get fhirType => 'AppointmentResponse';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this appointment response concern
  /// that are defined by business processes and/ or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [appointment] /// Appointment that this response is replying to.
  @JsonKey(name: 'appointment')
  final Reference appointment;

  /// [start] /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  @JsonKey(name: 'start')
  final FhirInstant? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  @JsonKey(name: 'end')
  final FhirInstant? end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [participantType] /// Role of participant in the appointment.
  @JsonKey(name: 'participantType')
  final List<CodeableConcept>? participantType;

  /// [actor] /// A Person, Location, HealthcareService, or Device that is participating in
  /// the appointment.
  @JsonKey(name: 'actor')
  final Reference? actor;

  /// [participantStatus] /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment (as
  /// a confirmation of the time) or can be empty.
  @JsonKey(name: 'participantStatus')
  final ParticipationStatus participantStatus;
  @JsonKey(name: '_participantStatus')
  final Element? participantStatusElement;

  /// [comment] /// Additional comments about the appointment.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;
  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);

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
