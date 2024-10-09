import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'care_team.g.dart';

/// [CareTeam] /// The Care Team includes all the people and organizations who plan to
/// participate in the coordination and delivery of care for a patient.
@JsonSerializable()
class CareTeam extends DomainResource {
  CareTeam({
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
    this.status,
    this.statusElement,
    this.category,
    this.name,
    this.nameElement,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CareTeam);
  @override
  String get fhirType => 'CareTeam';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this care team by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of the care team.
  @JsonKey(name: 'status')
  final CareTeamStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [category] /// Identifies what kind of team. This is to support differentiation between
  /// multiple co-existing teams, such as care plan team, episode of care team,
  /// longitudinal care team.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [name] /// A label for human use intended to distinguish like teams. E.g. the "red"
  /// vs. "green" trauma teams.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [subject] /// Identifies the patient or group whose intended care is handled by the team.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// The Encounter during which this CareTeam was created or to which the
  /// creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [period] /// Indicates when the team did (or is intended to) come into effect and end.
  @JsonKey(name: 'period')
  final Period? period;

  /// [participant] /// Identifies all people and organizations who are expected to be involved in
  /// the care team.
  @JsonKey(name: 'participant')
  final List<CareTeamParticipant>? participant;

  /// [reasonCode] /// Describes why the care team exists.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition(s) that this care team addresses.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [managingOrganization] /// The organization responsible for the care team.
  @JsonKey(name: 'managingOrganization')
  final List<Reference>? managingOrganization;

  /// [telecom] /// A central contact detail for the care team (that applies to all members).
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [note] /// Comments made about the CareTeam.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory CareTeam.fromJson(Map<String, dynamic> json) =>
      _$CareTeamFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CareTeamToJson(this);

  @override
  CareTeam clone() => throw UnimplementedError();
  @override
  CareTeam copyWith({
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
    CareTeamStatus? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    FhirString? name,
    Element? nameElement,
    Reference? subject,
    Reference? encounter,
    Period? period,
    List<CareTeamParticipant>? participant,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? managingOrganization,
    List<ContactPoint>? telecom,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CareTeam(
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
      category: category ?? this.category,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      period: period ?? this.period,
      participant: participant ?? this.participant,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      telecom: telecom ?? this.telecom,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CareTeam.fromYaml(dynamic yaml) => yaml is String
      ? CareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CareTeam cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CareTeamParticipant] /// Identifies all people and organizations who are expected to be involved in
/// the care team.
@JsonSerializable()
class CareTeamParticipant extends BackboneElement {
  CareTeamParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CareTeamParticipant';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Indicates specific responsibility of an individual within the care team,
  /// such as "Primary care physician", "Trained social worker counselor",
  /// "Caregiver", etc.
  @JsonKey(name: 'role')
  final List<CodeableConcept>? role;

  /// [member] /// The specific person or organization who is participating/expected to
  /// participate in the care team.
  @JsonKey(name: 'member')
  final Reference? member;

  /// [onBehalfOf] /// The organization of the practitioner.
  @JsonKey(name: 'onBehalfOf')
  final Reference? onBehalfOf;

  /// [period] /// Indicates when the specific member or organization did (or is intended to)
  /// come into effect and end.
  @JsonKey(name: 'period')
  final Period? period;
  factory CareTeamParticipant.fromJson(Map<String, dynamic> json) =>
      _$CareTeamParticipantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CareTeamParticipantToJson(this);

  @override
  CareTeamParticipant clone() => throw UnimplementedError();
  @override
  CareTeamParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? role,
    Reference? member,
    Reference? onBehalfOf,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CareTeamParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      member: member ?? this.member,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CareTeamParticipant.fromYaml(dynamic yaml) => yaml is String
      ? CareTeamParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CareTeamParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CareTeamParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CareTeamParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CareTeamParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
