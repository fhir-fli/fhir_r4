import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AuditEvent]
/// A record of an event made for purposes of maintaining a security log.
/// Typical uses include detection of intrusion attempts and monitoring for
/// inappropriate usage.
class AuditEvent extends DomainResource {
  /// Primary constructor for
  /// [AuditEvent]

  const AuditEvent({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.subtype,
    this.action,
    this.period,
    required this.recorded,
    this.outcome,
    this.outcomeDesc,
    this.purposeOfEvent,
    required this.agent,
    required this.source,
    this.entity,
  }) : super(
          objectPath: 'AuditEvent',
          resourceType: R4ResourceType.AuditEvent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent';
    return AuditEvent(
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
        '$objectPath.type',
      )!,
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subtype',
              },
            ),
          )
          .toList(),
      action: JsonParser.parsePrimitive<AuditEventAction>(
        json,
        'action',
        AuditEventAction.fromJson,
        '$objectPath.action',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      recorded: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'recorded',
        FhirInstant.fromJson,
        '$objectPath.recorded',
      )!,
      outcome: JsonParser.parsePrimitive<AuditEventOutcome>(
        json,
        'outcome',
        AuditEventOutcome.fromJson,
        '$objectPath.outcome',
      ),
      outcomeDesc: JsonParser.parsePrimitive<FhirString>(
        json,
        'outcomeDesc',
        FhirString.fromJson,
        '$objectPath.outcomeDesc',
      ),
      purposeOfEvent: (json['purposeOfEvent'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purposeOfEvent',
              },
            ),
          )
          .toList(),
      agent: (json['agent'] as List<dynamic>)
          .map<AuditEventAgent>(
            (v) => AuditEventAgent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
      source: JsonParser.parseObject<AuditEventSource>(
        json,
        'source',
        AuditEventSource.fromJson,
        '$objectPath.source',
      )!,
      entity: (json['entity'] as List<dynamic>?)
          ?.map<AuditEventEntity>(
            (v) => AuditEventEntity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entity',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEvent]
  /// from a [String] or [YamlMap] object
  factory AuditEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEvent';

  /// [type]
  /// Identifier for a family of the event. For example, a menu item,
  /// program, rule, policy, function code, application name or URL. It
  /// identifies the performed function.
  final Coding type;

  /// [subtype]
  /// Identifier for the category of event.
  final List<Coding>? subtype;

  /// [action]
  /// Indicator for type of action performed during the event that generated
  /// the audit.
  final AuditEventAction? action;

  /// [period]
  /// The period during which the activity occurred.
  final Period? period;

  /// [recorded]
  /// The time when the event was recorded.
  final FhirInstant recorded;

  /// [outcome]
  /// Indicates whether the event succeeded or failed.
  final AuditEventOutcome? outcome;

  /// [outcomeDesc]
  /// A free text description of the outcome of the event.
  final FhirString? outcomeDesc;

  /// [purposeOfEvent]
  /// The purposeOfUse (reason) that was used during the event being
  /// recorded.
  final List<CodeableConcept>? purposeOfEvent;

  /// [agent]
  /// An actor taking an active role in the event or activity that is logged.
  final List<AuditEventAgent> agent;

  /// [source]
  /// The system that is reporting the event.
  final AuditEventSource source;

  /// [entity]
  /// Specific instances of data or objects that have been accessed.
  final List<AuditEventEntity>? entity;
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
    addField('type', type);
    addField('subtype', subtype);
    addField('action', action);
    addField('period', period);
    addField('recorded', recorded);
    addField('outcome', outcome);
    addField('outcomeDesc', outcomeDesc);
    addField('purposeOfEvent', purposeOfEvent);
    addField('agent', agent);
    addField('source', source);
    addField('entity', entity);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'type',
      'subtype',
      'action',
      'period',
      'recorded',
      'outcome',
      'outcomeDesc',
      'purposeOfEvent',
      'agent',
      'source',
      'entity',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'type':
        fields.add(type);
      case 'subtype':
        if (subtype != null) {
          fields.addAll(subtype!);
        }
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'recorded':
        fields.add(recorded);
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'outcomeDesc':
        if (outcomeDesc != null) {
          fields.add(outcomeDesc!);
        }
      case 'purposeOfEvent':
        if (purposeOfEvent != null) {
          fields.addAll(purposeOfEvent!);
        }
      case 'agent':
        fields.addAll(agent);
      case 'source':
        fields.add(source);
      case 'entity':
        if (entity != null) {
          fields.addAll(entity!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEvent clone() => throw UnimplementedError();
  @override
  AuditEvent copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    List<Coding>? subtype,
    AuditEventAction? action,
    Period? period,
    FhirInstant? recorded,
    AuditEventOutcome? outcome,
    FhirString? outcomeDesc,
    List<CodeableConcept>? purposeOfEvent,
    List<AuditEventAgent>? agent,
    AuditEventSource? source,
    List<AuditEventEntity>? entity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return AuditEvent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subtype: subtype
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subtype',
                ),
              )
              .toList() ??
          this.subtype,
      action: action?.copyWith(
            objectPath: '$newObjectPath.action',
          ) ??
          this.action,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      recorded: recorded?.copyWith(
            objectPath: '$newObjectPath.recorded',
          ) ??
          this.recorded,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      outcomeDesc: outcomeDesc?.copyWith(
            objectPath: '$newObjectPath.outcomeDesc',
          ) ??
          this.outcomeDesc,
      purposeOfEvent: purposeOfEvent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.purposeOfEvent',
                ),
              )
              .toList() ??
          this.purposeOfEvent,
      agent: agent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.agent',
                ),
              )
              .toList() ??
          this.agent,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      entity: entity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entity',
                ),
              )
              .toList() ??
          this.entity,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEvent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<Coding>(
      subtype,
      o.subtype,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(action, o.action)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(recorded, o.recorded)) {
      return false;
    }
    if (!equalsDeepWithNull(outcome, o.outcome)) {
      return false;
    }
    if (!equalsDeepWithNull(outcomeDesc, o.outcomeDesc)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      purposeOfEvent,
      o.purposeOfEvent,
    )) {
      return false;
    }
    if (!listEquals<AuditEventAgent>(
      agent,
      o.agent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!listEquals<AuditEventEntity>(
      entity,
      o.entity,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventAgent]
/// An actor taking an active role in the event or activity that is logged.
class AuditEventAgent extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventAgent]

  const AuditEventAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.name,
    required this.requestor,
    this.location,
    this.policy,
    this.media,
    this.network,
    this.purposeOfUse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.agent',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.agent';
    return AuditEventAgent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.role',
              },
            ),
          )
          .toList(),
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      ),
      altId: JsonParser.parsePrimitive<FhirString>(
        json,
        'altId',
        FhirString.fromJson,
        '$objectPath.altId',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      requestor: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'requestor',
        FhirBoolean.fromJson,
        '$objectPath.requestor',
      )!,
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      policy: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'policy',
        FhirUri.fromJson,
        '$objectPath.policy',
      ),
      media: JsonParser.parseObject<Coding>(
        json,
        'media',
        Coding.fromJson,
        '$objectPath.media',
      ),
      network: JsonParser.parseObject<AuditEventNetwork>(
        json,
        'network',
        AuditEventNetwork.fromJson,
        '$objectPath.network',
      ),
      purposeOfUse: (json['purposeOfUse'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purposeOfUse',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventAgent]
  /// from a [String] or [YamlMap] object
  factory AuditEventAgent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventAgent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventAgent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventAgent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventAgent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventAgent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventAgent';

  /// [type]
  /// Specification of the participation type the user plays when performing
  /// the event.
  final CodeableConcept? type;

  /// [role]
  /// The security role that the user was acting under, that come from local
  /// codes defined by the access control security system (e.g. RBAC, ABAC)
  /// used in the local context.
  final List<CodeableConcept>? role;

  /// [who]
  /// Reference to who this agent is that was involved in the event.
  final Reference? who;

  /// [altId]
  /// Alternative agent Identifier. For a human, this should be a user
  /// identifier text string from authentication system. This identifier
  /// would be one known to a common authentication system (e.g. single
  /// sign-on), if available.
  final FhirString? altId;

  /// [name]
  /// Human-meaningful name for the agent.
  final FhirString? name;

  /// [requestor]
  /// Indicator that the user is or is not the requestor, or initiator, for
  /// the event being audited.
  final FhirBoolean requestor;

  /// [location]
  /// Where the event occurred.
  final Reference? location;

  /// [policy]
  /// The policy or plan that authorized the activity being recorded.
  /// Typically, a single activity may have multiple applicable policies,
  /// such as patient consent, guarantor funding, etc. The policy would also
  /// indicate the security token used.
  final List<FhirUri>? policy;

  /// [media]
  /// Type of media involved. Used when the event is about
  /// exporting/importing onto media.
  final Coding? media;

  /// [network]
  /// Logical network location for application activity, if the activity has
  /// a network location.
  final AuditEventNetwork? network;

  /// [purposeOfUse]
  /// The reason (purpose of use), specific to this agent, that was used
  /// during the event being recorded.
  final List<CodeableConcept>? purposeOfUse;
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
    addField('altId', altId);
    addField('name', name);
    addField('requestor', requestor);
    addField('location', location);
    addField('policy', policy);
    addField('media', media);
    addField('network', network);
    addField('purposeOfUse', purposeOfUse);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'role',
      'who',
      'altId',
      'name',
      'requestor',
      'location',
      'policy',
      'media',
      'network',
      'purposeOfUse',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'altId':
        if (altId != null) {
          fields.add(altId!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'requestor':
        fields.add(requestor);
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'policy':
        if (policy != null) {
          fields.addAll(policy!);
        }
      case 'media':
        if (media != null) {
          fields.add(media!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'purposeOfUse':
        if (purposeOfUse != null) {
          fields.addAll(purposeOfUse!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEventAgent clone() => throw UnimplementedError();
  @override
  AuditEventAgent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    FhirString? altId,
    FhirString? name,
    FhirBoolean? requestor,
    Reference? location,
    List<FhirUri>? policy,
    Coding? media,
    AuditEventNetwork? network,
    List<CodeableConcept>? purposeOfUse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AuditEventAgent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      role: role
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.role',
                ),
              )
              .toList() ??
          this.role,
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      altId: altId?.copyWith(
            objectPath: '$newObjectPath.altId',
          ) ??
          this.altId,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      requestor: requestor?.copyWith(
            objectPath: '$newObjectPath.requestor',
          ) ??
          this.requestor,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      policy: policy
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.policy',
                ),
              )
              .toList() ??
          this.policy,
      media: media?.copyWith(
            objectPath: '$newObjectPath.media',
          ) ??
          this.media,
      network: network?.copyWith(
            objectPath: '$newObjectPath.network',
          ) ??
          this.network,
      purposeOfUse: purposeOfUse
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.purposeOfUse',
                ),
              )
              .toList() ??
          this.purposeOfUse,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventAgent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(who, o.who)) {
      return false;
    }
    if (!equalsDeepWithNull(altId, o.altId)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(requestor, o.requestor)) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!listEquals<FhirUri>(
      policy,
      o.policy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(media, o.media)) {
      return false;
    }
    if (!equalsDeepWithNull(network, o.network)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      purposeOfUse,
      o.purposeOfUse,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventNetwork]
/// Logical network location for application activity, if the activity has
/// a network location.
class AuditEventNetwork extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventNetwork]

  const AuditEventNetwork({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.address,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.agent.network',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventNetwork.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.agent.network';
    return AuditEventNetwork(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      address: JsonParser.parsePrimitive<FhirString>(
        json,
        'address',
        FhirString.fromJson,
        '$objectPath.address',
      ),
      type: JsonParser.parsePrimitive<AuditEventAgentNetworkType>(
        json,
        'type',
        AuditEventAgentNetworkType.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [AuditEventNetwork]
  /// from a [String] or [YamlMap] object
  factory AuditEventNetwork.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventNetwork.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventNetwork.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventNetwork '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventNetwork]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventNetwork.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventNetwork.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventNetwork';

  /// [address]
  /// An identifier for the network access point of the user device for the
  /// audit event.
  final FhirString? address;

  /// [type]
  /// An identifier for the type of network access point that originated the
  /// audit event.
  final AuditEventAgentNetworkType? type;
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
    addField('address', address);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'address',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEventNetwork clone() => throw UnimplementedError();
  @override
  AuditEventNetwork copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? address,
    AuditEventAgentNetworkType? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AuditEventNetwork(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventNetwork) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(address, o.address)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    return true;
  }
}

/// [AuditEventSource]
/// The system that is reporting the event.
class AuditEventSource extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventSource]

  const AuditEventSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    required this.observer,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.source',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventSource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.source';
    return AuditEventSource(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      site: JsonParser.parsePrimitive<FhirString>(
        json,
        'site',
        FhirString.fromJson,
        '$objectPath.site',
      ),
      observer: JsonParser.parseObject<Reference>(
        json,
        'observer',
        Reference.fromJson,
        '$objectPath.observer',
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventSource]
  /// from a [String] or [YamlMap] object
  factory AuditEventSource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventSource';

  /// [site]
  /// Logical source location within the healthcare enterprise network. For
  /// example, a hospital or other provider location within a multi-entity
  /// provider group.
  final FhirString? site;

  /// [observer]
  /// Identifier of the source where the event was detected.
  final Reference observer;

  /// [type]
  /// Code specifying the type of source where event originated.
  final List<Coding>? type;
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
    addField('site', site);
    addField('observer', observer);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'site',
      'observer',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'observer':
        fields.add(observer);
      case 'type':
        if (type != null) {
          fields.addAll(type!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEventSource clone() => throw UnimplementedError();
  @override
  AuditEventSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? site,
    Reference? observer,
    List<Coding>? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AuditEventSource(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      site: site?.copyWith(
            objectPath: '$newObjectPath.site',
          ) ??
          this.site,
      observer: observer?.copyWith(
            objectPath: '$newObjectPath.observer',
          ) ??
          this.observer,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventSource) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(site, o.site)) {
      return false;
    }
    if (!equalsDeepWithNull(observer, o.observer)) {
      return false;
    }
    if (!listEquals<Coding>(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventEntity]
/// Specific instances of data or objects that have been accessed.
class AuditEventEntity extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventEntity]

  const AuditEventEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.description,
    this.query,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.entity',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity';
    return AuditEventEntity(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      what: JsonParser.parseObject<Reference>(
        json,
        'what',
        Reference.fromJson,
        '$objectPath.what',
      ),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
        '$objectPath.type',
      ),
      role: JsonParser.parseObject<Coding>(
        json,
        'role',
        Coding.fromJson,
        '$objectPath.role',
      ),
      lifecycle: JsonParser.parseObject<Coding>(
        json,
        'lifecycle',
        Coding.fromJson,
        '$objectPath.lifecycle',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      query: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'query',
        FhirBase64Binary.fromJson,
        '$objectPath.query',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<AuditEventDetail>(
            (v) => AuditEventDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventEntity]
  /// from a [String] or [YamlMap] object
  factory AuditEventEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventEntity';

  /// [what]
  /// Identifies a specific instance of the entity. The reference should be
  /// version specific.
  final Reference? what;

  /// [type]
  /// The type of the object that was involved in this audit event.
  final Coding? type;

  /// [role]
  /// Code representing the role the entity played in the event being
  /// audited.
  final Coding? role;

  /// [lifecycle]
  /// Identifier for the data life-cycle stage for the entity.
  final Coding? lifecycle;

  /// [securityLabel]
  /// Security labels for the identified entity.
  final List<Coding>? securityLabel;

  /// [name]
  /// A name of the entity in the audit event.
  final FhirString? name;

  /// [description]
  /// Text that describes the entity in more detail.
  final FhirString? description;

  /// [query]
  /// The query parameters for a query-type entities.
  final FhirBase64Binary? query;

  /// [detail]
  /// Tagged value pairs for conveying additional information about the
  /// entity.
  final List<AuditEventDetail>? detail;
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
    addField('what', what);
    addField('type', type);
    addField('role', role);
    addField('lifecycle', lifecycle);
    addField('securityLabel', securityLabel);
    addField('name', name);
    addField('description', description);
    addField('query', query);
    addField('detail', detail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'what',
      'type',
      'role',
      'lifecycle',
      'securityLabel',
      'name',
      'description',
      'query',
      'detail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'what':
        if (what != null) {
          fields.add(what!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'lifecycle':
        if (lifecycle != null) {
          fields.add(lifecycle!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'query':
        if (query != null) {
          fields.add(query!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEventEntity clone() => throw UnimplementedError();
  @override
  AuditEventEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? what,
    Coding? type,
    Coding? role,
    Coding? lifecycle,
    List<Coding>? securityLabel,
    FhirString? name,
    FhirString? description,
    FhirBase64Binary? query,
    List<AuditEventDetail>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AuditEventEntity(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      what: what?.copyWith(
            objectPath: '$newObjectPath.what',
          ) ??
          this.what,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      lifecycle: lifecycle?.copyWith(
            objectPath: '$newObjectPath.lifecycle',
          ) ??
          this.lifecycle,
      securityLabel: securityLabel
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabel',
                ),
              )
              .toList() ??
          this.securityLabel,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      query: query?.copyWith(
            objectPath: '$newObjectPath.query',
          ) ??
          this.query,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventEntity) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(what, o.what)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!equalsDeepWithNull(lifecycle, o.lifecycle)) {
      return false;
    }
    if (!listEquals<Coding>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(query, o.query)) {
      return false;
    }
    if (!listEquals<AuditEventDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventDetail]
/// Tagged value pairs for conveying additional information about the
/// entity.
class AuditEventDetail extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventDetail]

  const AuditEventDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.entity.detail',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity.detail';
    return AuditEventDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<FhirString>(
        json,
        'type',
        FhirString.fromJson,
        '$objectPath.type',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXAuditEventDetail>(
        json,
        {
          'valueString': FhirString.fromJson,
          'valueBase64Binary': FhirBase64Binary.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [AuditEventDetail]
  /// from a [String] or [YamlMap] object
  factory AuditEventDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventDetail';

  /// [type]
  /// The type of extra detail provided in the value.
  final FhirString type;

  /// [valueX]
  /// The value of the extra detail.
  final ValueXAuditEventDetail valueX;

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();
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
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AuditEventDetail clone() => throw UnimplementedError();
  @override
  AuditEventDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? type,
    ValueXAuditEventDetail? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AuditEventDetail(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXAuditEventDetail? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventDetail) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
