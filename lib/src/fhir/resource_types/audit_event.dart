import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'audit_event.g.dart';

/// [AuditEvent] /// A record of an event made for purposes of maintaining a security log.
/// Typical uses include detection of intrusion attempts and monitoring for
/// inappropriate usage.
@JsonSerializable()
class AuditEvent extends DomainResource {
  AuditEvent({
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
    required this.type,
    this.subtype,
    this.action,
    this.actionElement,
    this.period,
    required this.recorded,
    this.recordedElement,
    this.outcome,
    this.outcomeElement,
    this.outcomeDesc,
    this.outcomeDescElement,
    this.purposeOfEvent,
    required this.agent,
    required this.source,
    this.entity,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.AuditEvent);
  @override
  String get fhirType => 'AuditEvent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Identifier for a family of the event. For example, a menu item, program,
  /// rule, policy, function code, application name or URL. It identifies the
  /// performed function.
  @JsonKey(name: 'type')
  final AuditEventID type;

  /// [subtype] /// Identifier for the category of event.
  @JsonKey(name: 'subtype')
  final List<AuditEventSubType>? subtype;

  /// [action] /// Indicator for type of action performed during the event that generated the
  /// audit.
  @JsonKey(name: 'action')
  final AuditEventAction? action;
  @JsonKey(name: '_action')
  final Element? actionElement;

  /// [period] /// The period during which the activity occurred.
  @JsonKey(name: 'period')
  final Period? period;

  /// [recorded] /// The time when the event was recorded.
  @JsonKey(name: 'recorded')
  final FhirInstant recorded;
  @JsonKey(name: '_recorded')
  final Element? recordedElement;

  /// [outcome] /// Indicates whether the event succeeded or failed.
  @JsonKey(name: 'outcome')
  final AuditEventOutcome? outcome;
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [outcomeDesc] /// A free text description of the outcome of the event.
  @JsonKey(name: 'outcomeDesc')
  final FhirString? outcomeDesc;
  @JsonKey(name: '_outcomeDesc')
  final Element? outcomeDescElement;

  /// [purposeOfEvent] /// The purposeOfUse (reason) that was used during the event being recorded.
  @JsonKey(name: 'purposeOfEvent')
  final List<CodeableConcept>? purposeOfEvent;

  /// [agent] /// An actor taking an active role in the event or activity that is logged.
  @JsonKey(name: 'agent')
  final List<AuditEventAgent> agent;

  /// [source] /// The system that is reporting the event.
  @JsonKey(name: 'source')
  final AuditEventSource source;

  /// [entity] /// Specific instances of data or objects that have been accessed.
  @JsonKey(name: 'entity')
  final List<AuditEventEntity>? entity;
  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);

  @override
  AuditEvent clone() => throw UnimplementedError();
  @override
  AuditEvent copyWith({
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
    AuditEventID? type,
    List<AuditEventSubType>? subtype,
    AuditEventAction? action,
    Element? actionElement,
    Period? period,
    FhirInstant? recorded,
    Element? recordedElement,
    AuditEventOutcome? outcome,
    Element? outcomeElement,
    FhirString? outcomeDesc,
    Element? outcomeDescElement,
    List<CodeableConcept>? purposeOfEvent,
    List<AuditEventAgent>? agent,
    AuditEventSource? source,
    List<AuditEventEntity>? entity,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AuditEvent(
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
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      action: action ?? this.action,
      actionElement: actionElement ?? this.actionElement,
      period: period ?? this.period,
      recorded: recorded ?? this.recorded,
      recordedElement: recordedElement ?? this.recordedElement,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      outcomeDesc: outcomeDesc ?? this.outcomeDesc,
      outcomeDescElement: outcomeDescElement ?? this.outcomeDescElement,
      purposeOfEvent: purposeOfEvent ?? this.purposeOfEvent,
      agent: agent ?? this.agent,
      source: source ?? this.source,
      entity: entity ?? this.entity,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEvent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEvent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AuditEventAgent] /// An actor taking an active role in the event or activity that is logged.
@JsonSerializable()
class AuditEventAgent extends BackboneElement {
  AuditEventAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.altIdElement,
    this.name,
    this.nameElement,
    required this.requestor,
    this.requestorElement,
    this.location,
    this.policy,
    this.policyElement,
    this.media,
    this.network,
    this.purposeOfUse,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AuditEventAgent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Specification of the participation type the user plays when performing the
  /// event.
  @JsonKey(name: 'type')
  final ParticipationRoleType? type;

  /// [role] /// The security role that the user was acting under, that come from local
  /// codes defined by the access control security system (e.g. RBAC, ABAC) used
  /// in the local context.
  @JsonKey(name: 'role')
  final List<SecurityRoleType>? role;

  /// [who] /// Reference to who this agent is that was involved in the event.
  @JsonKey(name: 'who')
  final Reference? who;

  /// [altId] /// Alternative agent Identifier. For a human, this should be a user identifier
  /// text string from authentication system. This identifier would be one known
  /// to a common authentication system (e.g. single sign-on), if available.
  @JsonKey(name: 'altId')
  final FhirString? altId;
  @JsonKey(name: '_altId')
  final Element? altIdElement;

  /// [name] /// Human-meaningful name for the agent.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [requestor] /// Indicator that the user is or is not the requestor, or initiator, for the
  /// event being audited.
  @JsonKey(name: 'requestor')
  final FhirBoolean requestor;
  @JsonKey(name: '_requestor')
  final Element? requestorElement;

  /// [location] /// Where the event occurred.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [policy] /// The policy or plan that authorized the activity being recorded. Typically,
  /// a single activity may have multiple applicable policies, such as patient
  /// consent, guarantor funding, etc. The policy would also indicate the
  /// security token used.
  @JsonKey(name: 'policy')
  final List<FhirUri>? policy;
  @JsonKey(name: '_policy')
  final List<Element>? policyElement;

  /// [media] /// Type of media involved. Used when the event is about exporting/importing
  /// onto media.
  @JsonKey(name: 'media')
  final MediaTypeCode? media;

  /// [network] /// Logical network location for application activity, if the activity has a
  /// network location.
  @JsonKey(name: 'network')
  final AuditEventNetwork? network;

  /// [purposeOfUse] /// The reason (purpose of use), specific to this agent, that was used during
  /// the event being recorded.
  @JsonKey(name: 'purposeOfUse')
  final List<CodeableConcept>? purposeOfUse;
  factory AuditEventAgent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventAgentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventAgentToJson(this);

  @override
  AuditEventAgent clone() => throw UnimplementedError();
  @override
  AuditEventAgent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ParticipationRoleType? type,
    List<SecurityRoleType>? role,
    Reference? who,
    FhirString? altId,
    Element? altIdElement,
    FhirString? name,
    Element? nameElement,
    FhirBoolean? requestor,
    Element? requestorElement,
    Reference? location,
    List<FhirUri>? policy,
    List<Element>? policyElement,
    MediaTypeCode? media,
    AuditEventNetwork? network,
    List<CodeableConcept>? purposeOfUse,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AuditEventAgent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      altId: altId ?? this.altId,
      altIdElement: altIdElement ?? this.altIdElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      requestor: requestor ?? this.requestor,
      requestorElement: requestorElement ?? this.requestorElement,
      location: location ?? this.location,
      policy: policy ?? this.policy,
      policyElement: policyElement ?? this.policyElement,
      media: media ?? this.media,
      network: network ?? this.network,
      purposeOfUse: purposeOfUse ?? this.purposeOfUse,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEventAgent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventAgent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEventAgent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEventAgent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEventAgent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEventAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AuditEventNetwork] /// Logical network location for application activity, if the activity has a
/// network location.
@JsonSerializable()
class AuditEventNetwork extends BackboneElement {
  AuditEventNetwork({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.address,
    this.addressElement,
    this.type,
    this.typeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AuditEventNetwork';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [address] /// An identifier for the network access point of the user device for the audit
  /// event.
  @JsonKey(name: 'address')
  final FhirString? address;
  @JsonKey(name: '_address')
  final Element? addressElement;

  /// [type] /// An identifier for the type of network access point that originated the
  /// audit event.
  @JsonKey(name: 'type')
  final AuditEventAgentNetworkType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;
  factory AuditEventNetwork.fromJson(Map<String, dynamic> json) =>
      _$AuditEventNetworkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventNetworkToJson(this);

  @override
  AuditEventNetwork clone() => throw UnimplementedError();
  @override
  AuditEventNetwork copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? address,
    Element? addressElement,
    AuditEventAgentNetworkType? type,
    Element? typeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AuditEventNetwork(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEventNetwork.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventNetwork.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEventNetwork.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEventNetwork cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEventNetwork.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEventNetwork.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AuditEventSource] /// The system that is reporting the event.
@JsonSerializable()
class AuditEventSource extends BackboneElement {
  AuditEventSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.siteElement,
    required this.observer,
    this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AuditEventSource';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [site] /// Logical source location within the healthcare enterprise network. For
  /// example, a hospital or other provider location within a multi-entity
  /// provider group.
  @JsonKey(name: 'site')
  final FhirString? site;
  @JsonKey(name: '_site')
  final Element? siteElement;

  /// [observer] /// Identifier of the source where the event was detected.
  @JsonKey(name: 'observer')
  final Reference observer;

  /// [type] /// Code specifying the type of source where event originated.
  @JsonKey(name: 'type')
  final List<AuditEventSourceType>? type;
  factory AuditEventSource.fromJson(Map<String, dynamic> json) =>
      _$AuditEventSourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventSourceToJson(this);

  @override
  AuditEventSource clone() => throw UnimplementedError();
  @override
  AuditEventSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? site,
    Element? siteElement,
    Reference? observer,
    List<AuditEventSourceType>? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AuditEventSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      siteElement: siteElement ?? this.siteElement,
      observer: observer ?? this.observer,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEventSource.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEventSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEventSource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEventSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEventSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AuditEventEntity] /// Specific instances of data or objects that have been accessed.
@JsonSerializable()
class AuditEventEntity extends BackboneElement {
  AuditEventEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.query,
    this.queryElement,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AuditEventEntity';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [what] /// Identifies a specific instance of the entity. The reference should be
  /// version specific.
  @JsonKey(name: 'what')
  final Reference? what;

  /// [type] /// The type of the object that was involved in this audit event.
  @JsonKey(name: 'type')
  final AuditEventEntityType? type;

  /// [role] /// Code representing the role the entity played in the event being audited.
  @JsonKey(name: 'role')
  final AuditEventEntityRole? role;

  /// [lifecycle] /// Identifier for the data life-cycle stage for the entity.
  @JsonKey(name: 'lifecycle')
  final ObjectLifecycleEvents? lifecycle;

  /// [securityLabel] /// Security labels for the identified entity.
  @JsonKey(name: 'securityLabel')
  final List<Coding>? securityLabel;

  /// [name] /// A name of the entity in the audit event.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// Text that describes the entity in more detail.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [query] /// The query parameters for a query-type entities.
  @JsonKey(name: 'query')
  final FhirBase64Binary? query;
  @JsonKey(name: '_query')
  final Element? queryElement;

  /// [detail] /// Tagged value pairs for conveying additional information about the entity.
  @JsonKey(name: 'detail')
  final List<AuditEventDetail>? detail;
  factory AuditEventEntity.fromJson(Map<String, dynamic> json) =>
      _$AuditEventEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventEntityToJson(this);

  @override
  AuditEventEntity clone() => throw UnimplementedError();
  @override
  AuditEventEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? what,
    AuditEventEntityType? type,
    AuditEventEntityRole? role,
    ObjectLifecycleEvents? lifecycle,
    List<Coding>? securityLabel,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    FhirBase64Binary? query,
    Element? queryElement,
    List<AuditEventDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      query: query ?? this.query,
      queryElement: queryElement ?? this.queryElement,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEventEntity.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEventEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEventEntity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEventEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEventEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AuditEventDetail] /// Tagged value pairs for conveying additional information about the entity.
@JsonSerializable()
class AuditEventDetail extends BackboneElement {
  AuditEventDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AuditEventDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of extra detail provided in the value.
  @JsonKey(name: 'type')
  final FhirString type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [valueString] /// The value of the extra detail.
  @JsonKey(name: 'valueString')
  final FhirString valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueBase64Binary] /// The value of the extra detail.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;
  factory AuditEventDetail.fromJson(Map<String, dynamic> json) =>
      _$AuditEventDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuditEventDetailToJson(this);

  @override
  AuditEventDetail clone() => throw UnimplementedError();
  @override
  AuditEventDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? type,
    Element? typeElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AuditEventDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AuditEventDetail.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AuditEventDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AuditEventDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AuditEventDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AuditEventDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
