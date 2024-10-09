import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Provenance] /// Provenance of a resource is a record that describes entities and processes
/// involved in producing and delivering or otherwise influencing that
/// resource. Provenance provides a critical foundation for assessing
/// authenticity, enabling trust, and allowing reproducibility. Provenance
/// assertions are a form of contextual metadata and can themselves become
/// important records with their own provenance. Provenance statement indicates
/// clinical significance in terms of confidence in authenticity, reliability,
/// and trustworthiness, integrity, and stage in lifecycle (e.g. Document
/// Completion - has the artifact been legally authenticated), all of which may
/// impact security, privacy, and trust policies.
@JsonSerializable()
class Provenance extends DomainResource {
  Provenance({
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
    required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    this.occurredDateTimeElement,
    required this.recorded,
    this.recordedElement,
    this.policy,
    this.policyElement,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Provenance);
  @override
  String get fhirType => 'Provenance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [target] /// The Reference(s) that were generated or updated by the activity described
  /// in this resource. A provenance can point to more than one target if
  /// multiple resources were created/updated by the same activity.
  @JsonKey(name: 'target')
  final List<Reference> target;

  /// [occurredPeriod] /// The period during which the activity occurred.
  @JsonKey(name: 'occurredPeriod')
  final Period? occurredPeriod;

  /// [occurredDateTime] /// The period during which the activity occurred.
  @JsonKey(name: 'occurredDateTime')
  final FhirDateTime? occurredDateTime;
  @JsonKey(name: '_occurredDateTime')
  final Element? occurredDateTimeElement;

  /// [recorded] /// The instant of time at which the activity was recorded.
  @JsonKey(name: 'recorded')
  final FhirInstant recorded;
  @JsonKey(name: '_recorded')
  final Element? recordedElement;

  /// [policy] /// Policy or plan the activity was defined by. Typically, a single activity
  /// may have multiple applicable policy documents, such as patient consent,
  /// guarantor funding, etc.
  @JsonKey(name: 'policy')
  final List<FhirUri>? policy;
  @JsonKey(name: '_policy')
  final List<Element>? policyElement;

  /// [location] /// Where the activity occurred, if relevant.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [reason] /// The reason that the activity was taking place.
  @JsonKey(name: 'reason')
  final List<CodeableConcept>? reason;

  /// [activity] /// An activity is something that occurs over a period of time and acts upon or
  /// with entities; it may include consuming, processing, transforming,
  /// modifying, relocating, using, or generating entities.
  @JsonKey(name: 'activity')
  final CodeableConcept? activity;

  /// [agent] /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  @JsonKey(name: 'agent')
  final List<ProvenanceAgent> agent;

  /// [entity] /// An entity used in this activity.
  @JsonKey(name: 'entity')
  final List<ProvenanceEntity>? entity;

  /// [signature] /// A digital signature on the target Reference(s). The signer should match a
  /// Provenance.agent. The purpose of the signature is indicated.
  @JsonKey(name: 'signature')
  final List<Signature>? signature;
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
    json['target'] = target.map<dynamic>((Reference v) => v.toJson()).toList();
    if (occurredPeriod != null) {
      json['occurredPeriod'] = occurredPeriod!.toJson();
    }
    if (occurredDateTime?.value != null) {
      json['occurredDateTime'] = occurredDateTime!.value;
    }
    if (occurredDateTimeElement != null) {
      json['_occurredDateTime'] = occurredDateTimeElement!.toJson();
    }
    json['recorded'] = recorded.value;
    if (recordedElement != null) {
      json['_recorded'] = recordedElement!.toJson();
    }
    if (policy != null && policy!.isNotEmpty) {
      json['policy'] = policy!.map((FhirUri v) => v.value).toList();
    }
    if (policyElement != null && policyElement!.isNotEmpty) {
      json['_policy'] = policyElement!.map((Element v) => v.toJson()).toList();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (reason != null && reason!.isNotEmpty) {
      json['reason'] =
          reason!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (activity != null) {
      json['activity'] = activity!.toJson();
    }
    json['agent'] =
        agent.map<dynamic>((ProvenanceAgent v) => v.toJson()).toList();
    if (entity != null && entity!.isNotEmpty) {
      json['entity'] =
          entity!.map<dynamic>((ProvenanceEntity v) => v.toJson()).toList();
    }
    if (signature != null && signature!.isNotEmpty) {
      json['signature'] =
          signature!.map<dynamic>((Signature v) => v.toJson()).toList();
    }
    return json;
  }

  factory Provenance.fromJson(Map<String, dynamic> json) {
    return Provenance(
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
      target: (json['target'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
      occurredPeriod: json['occurredPeriod'] != null
          ? Period.fromJson(json['occurredPeriod'] as Map<String, dynamic>)
          : null,
      occurredDateTime: json['occurredDateTime'] != null
          ? FhirDateTime(json['occurredDateTime'])
          : null,
      occurredDateTimeElement: json['_occurredDateTime'] != null
          ? Element.fromJson(json['_occurredDateTime'] as Map<String, dynamic>)
          : null,
      recorded: FhirInstant(json['recorded']),
      recordedElement:
          Element.fromJson(json['_recorded'] as Map<String, dynamic>),
      policy: json['policy'] != null
          ? (json['policy'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri(v))
              .toList()
          : null,
      policyElement: json['_policy'] != null
          ? (json['_policy'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      activity: json['activity'] != null
          ? CodeableConcept.fromJson(json['activity'] as Map<String, dynamic>)
          : null,
      agent: (json['agent'] as List<dynamic>)
          .map<ProvenanceAgent>((dynamic v) =>
              ProvenanceAgent.fromJson(v as Map<String, dynamic>))
          .toList(),
      entity: json['entity'] != null
          ? (json['entity'] as List<dynamic>)
              .map<ProvenanceEntity>((dynamic v) =>
                  ProvenanceEntity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      signature: json['signature'] != null
          ? (json['signature'] as List<dynamic>)
              .map<Signature>(
                  (dynamic v) => Signature.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Provenance clone() => throw UnimplementedError();
  @override
  Provenance copyWith({
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
    List<Reference>? target,
    Period? occurredPeriod,
    FhirDateTime? occurredDateTime,
    Element? occurredDateTimeElement,
    FhirInstant? recorded,
    Element? recordedElement,
    List<FhirUri>? policy,
    List<Element>? policyElement,
    Reference? location,
    List<CodeableConcept>? reason,
    CodeableConcept? activity,
    List<ProvenanceAgent>? agent,
    List<ProvenanceEntity>? entity,
    List<Signature>? signature,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Provenance(
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
      target: target ?? this.target,
      occurredPeriod: occurredPeriod ?? this.occurredPeriod,
      occurredDateTime: occurredDateTime ?? this.occurredDateTime,
      occurredDateTimeElement:
          occurredDateTimeElement ?? this.occurredDateTimeElement,
      recorded: recorded ?? this.recorded,
      recordedElement: recordedElement ?? this.recordedElement,
      policy: policy ?? this.policy,
      policyElement: policyElement ?? this.policyElement,
      location: location ?? this.location,
      reason: reason ?? this.reason,
      activity: activity ?? this.activity,
      agent: agent ?? this.agent,
      entity: entity ?? this.entity,
      signature: signature ?? this.signature,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Provenance.fromYaml(dynamic yaml) => yaml is String
      ? Provenance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Provenance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Provenance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Provenance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Provenance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ProvenanceAgent] /// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
@JsonSerializable()
class ProvenanceAgent extends BackboneElement {
  ProvenanceAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ProvenanceAgent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The participation the agent had with respect to the activity.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [role] /// The function of the agent with respect to the activity. The security role
  /// enabling the agent with respect to the activity.
  @JsonKey(name: 'role')
  final List<CodeableConcept>? role;

  /// [who] /// The individual, device or organization that participated in the event.
  @JsonKey(name: 'who')
  final Reference who;

  /// [onBehalfOf] /// The individual, device, or organization for whom the change was made.
  @JsonKey(name: 'onBehalfOf')
  final Reference? onBehalfOf;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (role != null && role!.isNotEmpty) {
      json['role'] =
          role!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    json['who'] = who.toJson();
    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }
    return json;
  }

  factory ProvenanceAgent.fromJson(Map<String, dynamic> json) {
    return ProvenanceAgent(
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
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? (json['role'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      who: Reference.fromJson(json['who'] as Map<String, dynamic>),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ProvenanceAgent clone() => throw UnimplementedError();
  @override
  ProvenanceAgent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    Reference? onBehalfOf,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProvenanceAgent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ProvenanceAgent.fromYaml(dynamic yaml) => yaml is String
      ? ProvenanceAgent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProvenanceAgent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProvenanceAgent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProvenanceAgent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProvenanceAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ProvenanceEntity] /// An entity used in this activity.
@JsonSerializable()
class ProvenanceEntity extends BackboneElement {
  ProvenanceEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    this.roleElement,
    required this.what,
    this.agent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ProvenanceEntity';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// How the entity was used during the activity.
  @JsonKey(name: 'role')
  final ProvenanceEntityRole role;
  @JsonKey(name: '_role')
  final Element? roleElement;

  /// [what] /// Identity of the Entity used. May be a logical or physical uri and maybe
  /// absolute or relative.
  @JsonKey(name: 'what')
  final Reference what;

  /// [agent] /// The entity is attributed to an agent to express the agent's responsibility
  /// for that entity, possibly along with other agents. This description can be
  /// understood as shorthand for saying that the agent was responsible for the
  /// activity which generated the entity.
  @JsonKey(name: 'agent')
  final List<ProvenanceAgent>? agent;
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
    json['role'] = role.toJson();
    json['what'] = what.toJson();
    if (agent != null && agent!.isNotEmpty) {
      json['agent'] =
          agent!.map<dynamic>((ProvenanceAgent v) => v.toJson()).toList();
    }
    return json;
  }

  factory ProvenanceEntity.fromJson(Map<String, dynamic> json) {
    return ProvenanceEntity(
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
      role: ProvenanceEntityRole.fromJson(json['role'] as Map<String, dynamic>),
      what: Reference.fromJson(json['what'] as Map<String, dynamic>),
      agent: json['agent'] != null
          ? (json['agent'] as List<dynamic>)
              .map<ProvenanceAgent>((dynamic v) =>
                  ProvenanceAgent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ProvenanceEntity clone() => throw UnimplementedError();
  @override
  ProvenanceEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ProvenanceEntityRole? role,
    Element? roleElement,
    Reference? what,
    List<ProvenanceAgent>? agent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProvenanceEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      roleElement: roleElement ?? this.roleElement,
      what: what ?? this.what,
      agent: agent ?? this.agent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ProvenanceEntity.fromYaml(dynamic yaml) => yaml is String
      ? ProvenanceEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProvenanceEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProvenanceEntity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProvenanceEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProvenanceEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
