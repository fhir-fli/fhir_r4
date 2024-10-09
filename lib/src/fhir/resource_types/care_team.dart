import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [CareTeam] /// The Care Team includes all the people and organizations who plan to
/// participate in the coordination and delivery of care for a patient.
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
  }) : super(resourceType: R4ResourceType.CareTeam);

  @override
  String get fhirType => 'CareTeam';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this care team by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of the care team.
  final CareTeamStatus? status;
  final Element? statusElement;

  /// [category] /// Identifies what kind of team. This is to support differentiation between
  /// multiple co-existing teams, such as care plan team, episode of care team,
  /// longitudinal care team.
  final List<CodeableConcept>? category;

  /// [name] /// A label for human use intended to distinguish like teams. E.g. the "red"
  /// vs. "green" trauma teams.
  final FhirString? name;
  final Element? nameElement;

  /// [subject] /// Identifies the patient or group whose intended care is handled by the team.
  final Reference? subject;

  /// [encounter] /// The Encounter during which this CareTeam was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period] /// Indicates when the team did (or is intended to) come into effect and end.
  final Period? period;

  /// [participant] /// Identifies all people and organizations who are expected to be involved in
  /// the care team.
  final List<CareTeamParticipant>? participant;

  /// [reasonCode] /// Describes why the care team exists.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition(s) that this care team addresses.
  final List<Reference>? reasonReference;

  /// [managingOrganization] /// The organization responsible for the care team.
  final List<Reference>? managingOrganization;

  /// [telecom] /// A central contact detail for the care team (that applies to all members).
  final List<ContactPoint>? telecom;

  /// [note] /// Comments made about the CareTeam.
  final List<Annotation>? note;
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
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!
          .map<dynamic>((CareTeamParticipant v) => v.toJson())
          .toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (managingOrganization != null && managingOrganization!.isNotEmpty) {
      json['managingOrganization'] = managingOrganization!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory CareTeam.fromJson(Map<String, dynamic> json) {
    return CareTeam(
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
      status: json['status'] != null
          ? CareTeamStatus.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<CareTeamParticipant>((dynamic v) =>
                  CareTeamParticipant.fromJson(v as Map<String, dynamic>))
              .toList()
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
      managingOrganization: json['managingOrganization'] != null
          ? (json['managingOrganization'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [role] /// Indicates specific responsibility of an individual within the care team,
  /// such as "Primary care physician", "Trained social worker counselor",
  /// "Caregiver", etc.
  final List<CodeableConcept>? role;

  /// [member] /// The specific person or organization who is participating/expected to
  /// participate in the care team.
  final Reference? member;

  /// [onBehalfOf] /// The organization of the practitioner.
  final Reference? onBehalfOf;

  /// [period] /// Indicates when the specific member or organization did (or is intended to)
  /// come into effect and end.
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
    if (role != null && role!.isNotEmpty) {
      json['role'] =
          role!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (member != null) {
      json['member'] = member!.toJson();
    }
    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory CareTeamParticipant.fromJson(Map<String, dynamic> json) {
    return CareTeamParticipant(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      role: json['role'] != null
          ? (json['role'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      member: json['member'] != null
          ? Reference.fromJson(json['member'] as Map<String, dynamic>)
          : null,
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
    );
  }
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
