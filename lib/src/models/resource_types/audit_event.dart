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
          resourceType: R4ResourceType.AuditEvent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEvent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      type: Coding.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subtype: json['subtype'] != null
          ? (json['subtype'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: (json['action'] != null || json['_action'] != null)
          ? AuditEventAction.fromJson({
              'value': json['action'],
              '_value': json['_action'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      recorded: FhirInstant.fromJson({
        'value': json['recorded'],
        '_value': json['_recorded'],
      }),
      outcome: (json['outcome'] != null || json['_outcome'] != null)
          ? AuditEventOutcome.fromJson({
              'value': json['outcome'],
              '_value': json['_outcome'],
            })
          : null,
      outcomeDesc: (json['outcomeDesc'] != null || json['_outcomeDesc'] != null)
          ? FhirString.fromJson({
              'value': json['outcomeDesc'],
              '_value': json['_outcomeDesc'],
            })
          : null,
      purposeOfEvent: json['purposeOfEvent'] != null
          ? (json['purposeOfEvent'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      agent: ensureNonNullList(
        (json['agent'] as List<dynamic>)
            .map<AuditEventAgent>(
              (v) => AuditEventAgent.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      source: AuditEventSource.fromJson(
        json['source'] as Map<String, dynamic>,
      ),
      entity: json['entity'] != null
          ? (json['entity'] as List<dynamic>)
              .map<AuditEventEntity>(
                (v) => AuditEventEntity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return AuditEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    json['type'] = type.toJson();

    if (subtype != null && subtype!.isNotEmpty) {
      json['subtype'] = subtype!.map((e) => e.toJson()).toList();
    }

    addField('action', action);
    if (period != null) {
      json['period'] = period!.toJson();
    }

    addField('recorded', recorded);
    addField('outcome', outcome);
    addField('outcomeDesc', outcomeDesc);
    if (purposeOfEvent != null && purposeOfEvent!.isNotEmpty) {
      json['purposeOfEvent'] = purposeOfEvent!.map((e) => e.toJson()).toList();
    }

    if (agent.isNotEmpty) {
      json['agent'] = agent.map((e) => e.toJson()).toList();
    }

    json['source'] = source.toJson();

    if (entity != null && entity!.isNotEmpty) {
      json['entity'] = entity!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEvent(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      action: action ?? this.action,
      period: period ?? this.period,
      recorded: recorded ?? this.recorded,
      outcome: outcome ?? this.outcome,
      outcomeDesc: outcomeDesc ?? this.outcomeDesc,
      purposeOfEvent: purposeOfEvent ?? this.purposeOfEvent,
      agent: agent ?? this.agent,
      source: source ?? this.source,
      entity: entity ?? this.entity,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventAgent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      who: json['who'] != null
          ? Reference.fromJson(
              json['who'] as Map<String, dynamic>,
            )
          : null,
      altId: (json['altId'] != null || json['_altId'] != null)
          ? FhirString.fromJson({
              'value': json['altId'],
              '_value': json['_altId'],
            })
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      requestor: FhirBoolean.fromJson({
        'value': json['requestor'],
        '_value': json['_requestor'],
      }),
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      policy: parsePrimitiveList<FhirUri>(
        json['policy'] as List<dynamic>?,
        json['_policy'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      media: json['media'] != null
          ? Coding.fromJson(
              json['media'] as Map<String, dynamic>,
            )
          : null,
      network: json['network'] != null
          ? AuditEventNetwork.fromJson(
              json['network'] as Map<String, dynamic>,
            )
          : null,
      purposeOfUse: json['purposeOfUse'] != null
          ? (json['purposeOfUse'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return AuditEventAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    if (who != null) {
      json['who'] = who!.toJson();
    }

    addField('altId', altId);
    addField('name', name);
    addField('requestor', requestor);
    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (policy != null && policy!.isNotEmpty) {
      final fieldJson0 = policy!.map((e) => e.toJson()).toList();
      json['policy'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_policy'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (media != null) {
      json['media'] = media!.toJson();
    }

    if (network != null) {
      json['network'] = network!.toJson();
    }

    if (purposeOfUse != null && purposeOfUse!.isNotEmpty) {
      json['purposeOfUse'] = purposeOfUse!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEventAgent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      altId: altId ?? this.altId,
      name: name ?? this.name,
      requestor: requestor ?? this.requestor,
      location: location ?? this.location,
      policy: policy ?? this.policy,
      media: media ?? this.media,
      network: network ?? this.network,
      purposeOfUse: purposeOfUse ?? this.purposeOfUse,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventNetwork.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventNetwork(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      address: (json['address'] != null || json['_address'] != null)
          ? FhirString.fromJson({
              'value': json['address'],
              '_value': json['_address'],
            })
          : null,
      type: (json['type'] != null || json['_type'] != null)
          ? AuditEventAgentNetworkType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return AuditEventNetwork.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('address', address);
    addField('type', type);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEventNetwork(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      address: address ?? this.address,
      type: type ?? this.type,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventSource(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      site: (json['site'] != null || json['_site'] != null)
          ? FhirString.fromJson({
              'value': json['site'],
              '_value': json['_site'],
            })
          : null,
      observer: Reference.fromJson(
        json['observer'] as Map<String, dynamic>,
      ),
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return AuditEventSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('site', site);
    json['observer'] = observer.toJson();

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEventSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      observer: observer ?? this.observer,
      type: type ?? this.type,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventEntity(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      what: json['what'] != null
          ? Reference.fromJson(
              json['what'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? Coding.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      role: json['role'] != null
          ? Coding.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      lifecycle: json['lifecycle'] != null
          ? Coding.fromJson(
              json['lifecycle'] as Map<String, dynamic>,
            )
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      query: (json['query'] != null || json['_query'] != null)
          ? FhirBase64Binary.fromJson({
              'value': json['query'],
              '_value': json['_query'],
            })
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<AuditEventDetail>(
                (v) => AuditEventDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return AuditEventEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (what != null) {
      json['what'] = what!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (role != null) {
      json['role'] = role!.toJson();
    }

    if (lifecycle != null) {
      json['lifecycle'] = lifecycle!.toJson();
    }

    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('description', description);
    addField('query', query);
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEventEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      what: what ?? this.what,
      type: type ?? this.type,
      role: role ?? this.role,
      lifecycle: lifecycle ?? this.lifecycle,
      securityLabel: securityLabel ?? this.securityLabel,
      name: name ?? this.name,
      description: description ?? this.description,
      query: query ?? this.query,
      detail: detail ?? this.detail,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventDetail(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      type: FhirString.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      valueX: json['valueString'] != null || json['_valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            }),
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
    if (json is Map<String, Object?>) {
      return AuditEventDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('value${valueX.fhirType.capitalize()}', valueX);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return AuditEventDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    );
  }
}
