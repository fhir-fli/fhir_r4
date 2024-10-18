import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Provenance]
/// Provenance of a resource is a record that describes entities and
/// processes involved in producing and delivering or otherwise influencing
/// that resource. Provenance provides a critical foundation for assessing
/// authenticity, enabling trust, and allowing reproducibility. Provenance
/// assertions are a form of contextual metadata and can themselves become
/// important records with their own provenance. Provenance statement
/// indicates clinical significance in terms of confidence in authenticity,
/// reliability, and trustworthiness, integrity, and stage in lifecycle
/// (e.g. Document Completion - has the artifact been legally
/// authenticated), all of which may impact security, privacy, and trust
/// policies.
class Provenance extends DomainResource {
  /// Primary constructor for
  /// [Provenance]

  Provenance({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    required this.recorded,
    this.policy,
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
  }) : super(
          resourceType: R4ResourceType.Provenance,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Provenance.fromJson(
    Map<String, dynamic> json,
  ) {
    return Provenance(
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
      target: ensureNonNullList(
        (json['target'] as List<dynamic>)
            .map<Reference>(
              (v) => Reference.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      occurredPeriod: json['occurredPeriod'] != null
          ? Period.fromJson(
              json['occurredPeriod'] as Map<String, dynamic>,
            )
          : null,
      occurredDateTime: json['occurredDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurredDateTime'],
              '_value': json['_occurredDateTime'],
            })
          : null,
      recorded: FhirInstant.fromJson({
        'value': json['recorded'],
        '_value': json['_recorded'],
      }),
      policy: parsePrimitiveList<FhirUri>(
        json['policy'] as List<dynamic>?,
        json['_policy'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      activity: json['activity'] != null
          ? CodeableConcept.fromJson(
              json['activity'] as Map<String, dynamic>,
            )
          : null,
      agent: ensureNonNullList(
        (json['agent'] as List<dynamic>)
            .map<ProvenanceAgent>(
              (v) => ProvenanceAgent.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      entity: json['entity'] != null
          ? (json['entity'] as List<dynamic>)
              .map<ProvenanceEntity>(
                (v) => ProvenanceEntity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      signature: json['signature'] != null
          ? (json['signature'] as List<dynamic>)
              .map<Signature>(
                (v) => Signature.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Provenance]
  /// from a [String] or [YamlMap] object
  factory Provenance.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Provenance.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Provenance.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Provenance '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Provenance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Provenance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Provenance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Provenance';

  /// [target]
  /// The Reference(s) that were generated or updated by the activity
  /// described in this resource. A provenance can point to more than one
  /// target if multiple resources were created/updated by the same activity.
  final List<Reference> target;

  /// [occurredPeriod]
  /// The period during which the activity occurred.
  final Period? occurredPeriod;

  /// [occurredDateTime]
  /// The period during which the activity occurred.
  final FhirDateTime? occurredDateTime;

  /// [recorded]
  /// The instant of time at which the activity was recorded.
  final FhirInstant recorded;

  /// [policy]
  /// Policy or plan the activity was defined by. Typically, a single
  /// activity may have multiple applicable policy documents, such as patient
  /// consent, guarantor funding, etc.
  final List<FhirUri>? policy;

  /// [location]
  /// Where the activity occurred, if relevant.
  final Reference? location;

  /// [reason]
  /// The reason that the activity was taking place.
  final List<CodeableConcept>? reason;

  /// [activity]
  /// An activity is something that occurs over a period of time and acts
  /// upon or with entities; it may include consuming, processing,
  /// transforming, modifying, relocating, using, or generating entities.
  final CodeableConcept? activity;

  /// [agent]
  /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ProvenanceAgent> agent;

  /// [entity]
  /// An entity used in this activity.
  final List<ProvenanceEntity>? entity;

  /// [signature]
  /// A digital signature on the target Reference(s). The signer should match
  /// a Provenance.agent. The purpose of the signature is indicated.
  final List<Signature>? signature;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['target'] = target.map((e) => e.toJson()).toList();

    if (occurredPeriod != null) {
      json['occurredPeriod'] = occurredPeriod!.toJson();
    }

    if (occurredDateTime != null) {
      final fieldJson9 = occurredDateTime!.toJson();
      json['occurredDateTime'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_occurredDateTime'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = recorded.toJson();
    json['recorded'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_recorded'] = fieldJson10['_value'];
    }

    if (policy != null && policy!.isNotEmpty) {
      final fieldJson11 = policy!.map((e) => e.toJson()).toList();
      json['policy'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_policy'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (reason != null && reason!.isNotEmpty) {
      json['reason'] = reason!.map((e) => e.toJson()).toList();
    }

    if (activity != null) {
      json['activity'] = activity!.toJson();
    }

    json['agent'] = agent.map((e) => e.toJson()).toList();

    if (entity != null && entity!.isNotEmpty) {
      json['entity'] = entity!.map((e) => e.toJson()).toList();
    }

    if (signature != null && signature!.isNotEmpty) {
      json['signature'] = signature!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Provenance clone() => throw UnimplementedError();
  @override
  Provenance copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    Period? occurredPeriod,
    FhirDateTime? occurredDateTime,
    FhirInstant? recorded,
    List<FhirUri>? policy,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      occurredPeriod: occurredPeriod ?? this.occurredPeriod,
      occurredDateTime: occurredDateTime ?? this.occurredDateTime,
      recorded: recorded ?? this.recorded,
      policy: policy ?? this.policy,
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
}

/// [ProvenanceAgent]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ProvenanceAgent extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceAgent]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProvenanceAgent(
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
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      role: json['role'] != null
          ? (json['role'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      who: Reference.fromJson(
        json['who'] as Map<String, dynamic>,
      ),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ProvenanceAgent]
  /// from a [String] or [YamlMap] object
  factory ProvenanceAgent.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ProvenanceAgent.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ProvenanceAgent.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ProvenanceAgent '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ProvenanceAgent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceAgent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProvenanceAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceAgent';

  /// [type]
  /// The participation the agent had with respect to the activity.
  final CodeableConcept? type;

  /// [role]
  /// The function of the agent with respect to the activity. The security
  /// role enabling the agent with respect to the activity.
  final List<CodeableConcept>? role;

  /// [who]
  /// The individual, device or organization that participated in the event.
  final Reference who;

  /// [onBehalfOf]
  /// The individual, device, or organization for whom the change was made.
  final Reference? onBehalfOf;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (role != null && role!.isNotEmpty) {
      json['role'] = role!.map((e) => e.toJson()).toList();
    }

    json['who'] = who.toJson();

    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }

    return json;
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
}

/// [ProvenanceEntity]
/// An entity used in this activity.
class ProvenanceEntity extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceEntity]

  ProvenanceEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.what,
    this.agent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProvenanceEntity(
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
      role: ProvenanceEntityRole.fromJson({
        'value': json['role'],
        '_value': json['_role'],
      }),
      what: Reference.fromJson(
        json['what'] as Map<String, dynamic>,
      ),
      agent: json['agent'] != null
          ? (json['agent'] as List<dynamic>)
              .map<ProvenanceAgent>(
                (v) => ProvenanceAgent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ProvenanceEntity]
  /// from a [String] or [YamlMap] object
  factory ProvenanceEntity.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ProvenanceEntity.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ProvenanceEntity.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ProvenanceEntity '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ProvenanceEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProvenanceEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceEntity';

  /// [role]
  /// How the entity was used during the activity.
  final ProvenanceEntityRole role;

  /// [what]
  /// Identity of the Entity used. May be a logical or physical uri and maybe
  /// absolute or relative.
  final Reference what;

  /// [agent]
  /// The entity is attributed to an agent to express the agent's
  /// responsibility for that entity, possibly along with other agents. This
  /// description can be understood as shorthand for saying that the agent
  /// was responsible for the activity which generated the entity.
  final List<ProvenanceAgent>? agent;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['role'] = role.toJson();

    json['what'] = what.toJson();

    if (agent != null && agent!.isNotEmpty) {
      json['agent'] = agent!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ProvenanceEntity clone() => throw UnimplementedError();
  @override
  ProvenanceEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ProvenanceEntityRole? role,
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
}
