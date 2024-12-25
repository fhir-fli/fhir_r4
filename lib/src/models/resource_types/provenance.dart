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

  const Provenance({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.occurredX,
    required this.recorded,
    this.policy,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
  }) : super(
          objectPath: 'Provenance',
          resourceType: R4ResourceType.Provenance,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Provenance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance';
    return Provenance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.contained'}),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.target'}),
            ),
          )
          .toList(),
      occurredX: JsonParser.parsePolymorphic<OccurredXProvenance>(
        json,
        {
          'occurredPeriod': Period.fromJson,
          'occurredDateTime': FhirDateTime.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'recorded',
        FhirInstant.fromJson,
        '$objectPath.recorded',
      )!,
      policy: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'policy',
        FhirUri.fromJson,
        '$objectPath.policy',
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.reason'}),
            ),
          )
          .toList(),
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
        '$objectPath.activity',
      ),
      agent: (json['agent'] as List<dynamic>)
          .map<ProvenanceAgent>(
            (v) => ProvenanceAgent.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.agent'}),
            ),
          )
          .toList(),
      entity: (json['entity'] as List<dynamic>?)
          ?.map<ProvenanceEntity>(
            (v) => ProvenanceEntity.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.entity'}),
            ),
          )
          .toList(),
      signature: (json['signature'] as List<dynamic>?)
          ?.map<Signature>(
            (v) => Signature.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.signature'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Provenance]
  /// from a [String] or [YamlMap] object
  factory Provenance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Provenance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Provenance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Provenance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Provenance]
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

  /// [occurredX]
  /// The period during which the activity occurred.
  final OccurredXProvenance? occurredX;

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
    addField('target', target);
    if (occurredX != null) {
      final fhirType = occurredX!.fhirType;
      addField('occurred${fhirType.capitalize()}', occurredX);
    }

    addField('recorded', recorded);
    addField('policy', policy);
    addField('location', location);
    addField('reason', reason);
    addField('activity', activity);
    addField('agent', agent);
    addField('entity', entity);
    addField('signature', signature);
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
    OccurredXProvenance? occurredX,
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
      occurredX: occurredX ?? this.occurredX,
      recorded: recorded ?? this.recorded,
      policy: policy ?? this.policy,
      location: location ?? this.location,
      reason: reason ?? this.reason,
      activity: activity ?? this.activity,
      agent: agent ?? this.agent,
      entity: entity ?? this.entity,
      signature: signature ?? this.signature,
    );
  }
}

/// [ProvenanceAgent]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ProvenanceAgent extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceAgent]

  const ProvenanceAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.agent',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.agent';
    return ProvenanceAgent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.role'}),
            ),
          )
          .toList(),
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
      ),
    );
  }

  /// Deserialize [ProvenanceAgent]
  /// from a [String] or [YamlMap] object
  factory ProvenanceAgent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceAgent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceAgent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceAgent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceAgent]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('role', role);
    addField('who', who);
    addField('onBehalfOf', onBehalfOf);
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
  }) {
    return ProvenanceAgent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
    );
  }
}

/// [ProvenanceEntity]
/// An entity used in this activity.
class ProvenanceEntity extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceEntity]

  const ProvenanceEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.what,
    this.agent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.entity',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.entity';
    return ProvenanceEntity(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      role: JsonParser.parsePrimitive<ProvenanceEntityRole>(
        json,
        'role',
        ProvenanceEntityRole.fromJson,
        '$objectPath.role',
      )!,
      what: JsonParser.parseObject<Reference>(
        json,
        'what',
        Reference.fromJson,
        '$objectPath.what',
      )!,
      agent: (json['agent'] as List<dynamic>?)
          ?.map<ProvenanceAgent>(
            (v) => ProvenanceAgent.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.agent'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ProvenanceEntity]
  /// from a [String] or [YamlMap] object
  factory ProvenanceEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceEntity]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('what', what);
    addField('agent', agent);
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
  }) {
    return ProvenanceEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      what: what ?? this.what,
      agent: agent ?? this.agent,
    );
  }
}
