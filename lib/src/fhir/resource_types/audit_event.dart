import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [AuditEvent] /// A record of an event made for purposes of maintaining a security log.
/// Typical uses include detection of intrusion attempts and monitoring for
/// inappropriate usage.
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
  }) : super(resourceType: R4ResourceType.AuditEvent);

  @override
  String get fhirType => 'AuditEvent';

  @Id()
  int dbId = 0;

  /// [type] /// Identifier for a family of the event. For example, a menu item, program,
  /// rule, policy, function code, application name or URL. It identifies the
  /// performed function.
  final Coding type;

  /// [subtype] /// Identifier for the category of event.
  final List<Coding>? subtype;

  /// [action] /// Indicator for type of action performed during the event that generated the
  /// audit.
  final AuditEventAction? action;
  final Element? actionElement;

  /// [period] /// The period during which the activity occurred.
  final Period? period;

  /// [recorded] /// The time when the event was recorded.
  final FhirInstant recorded;
  final Element? recordedElement;

  /// [outcome] /// Indicates whether the event succeeded or failed.
  final AuditEventOutcome? outcome;
  final Element? outcomeElement;

  /// [outcomeDesc] /// A free text description of the outcome of the event.
  final FhirString? outcomeDesc;
  final Element? outcomeDescElement;

  /// [purposeOfEvent] /// The purposeOfUse (reason) that was used during the event being recorded.
  final List<CodeableConcept>? purposeOfEvent;

  /// [agent] /// An actor taking an active role in the event or activity that is logged.
  final List<AuditEventAgent> agent;

  /// [source] /// The system that is reporting the event.
  final AuditEventSource source;

  /// [entity] /// Specific instances of data or objects that have been accessed.
  final List<AuditEventEntity>? entity;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    json['type'] = type.toJson();
    if (subtype != null && subtype!.isNotEmpty) {
      json['subtype'] =
          subtype!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    if (action != null) {
      json['action'] = action!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    json['recorded'] = recorded.toJson();
    if (recordedElement != null) {
      json['_recorded'] = recordedElement!.toJson();
    }
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    if (outcomeDesc?.value != null) {
      json['outcomeDesc'] = outcomeDesc!.toJson();
    }
    if (outcomeDescElement != null) {
      json['_outcomeDesc'] = outcomeDescElement!.toJson();
    }
    if (purposeOfEvent != null && purposeOfEvent!.isNotEmpty) {
      json['purposeOfEvent'] = purposeOfEvent!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    json['agent'] =
        agent.map<dynamic>((AuditEventAgent v) => v.toJson()).toList();
    json['source'] = source.toJson();
    if (entity != null && entity!.isNotEmpty) {
      json['entity'] =
          entity!.map<dynamic>((AuditEventEntity v) => v.toJson()).toList();
    }
    return json;
  }

  factory AuditEvent.fromJson(Map<String, dynamic> json) {
    return AuditEvent(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
      subtype: json['subtype'] != null
          ? (json['subtype'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      action: json['action'] != null
          ? AuditEventAction.fromJson(json['action'])
          : null,
      actionElement: json['_action'] != null
          ? Element.fromJson(json['_action'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      recorded: FhirInstant.fromJson(json['recorded']),
      recordedElement: json['_recorded'] != null
          ? Element.fromJson(json['_recorded'] as Map<String, dynamic>)
          : null,
      outcome: json['outcome'] != null
          ? AuditEventOutcome.fromJson(json['outcome'])
          : null,
      outcomeElement: json['_outcome'] != null
          ? Element.fromJson(json['_outcome'] as Map<String, dynamic>)
          : null,
      outcomeDesc: json['outcomeDesc'] != null
          ? FhirString.fromJson(json['outcomeDesc'])
          : null,
      outcomeDescElement: json['_outcomeDesc'] != null
          ? Element.fromJson(json['_outcomeDesc'] as Map<String, dynamic>)
          : null,
      purposeOfEvent: json['purposeOfEvent'] != null
          ? (json['purposeOfEvent'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      agent: (json['agent'] as List<dynamic>)
          .map<AuditEventAgent>((dynamic v) =>
              AuditEventAgent.fromJson(v as Map<String, dynamic>))
          .toList(),
      source: AuditEventSource.fromJson(json['source'] as Map<String, dynamic>),
      entity: json['entity'] != null
          ? (json['entity'] as List<dynamic>)
              .map<AuditEventEntity>((dynamic v) =>
                  AuditEventEntity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    Coding? type,
    List<Coding>? subtype,
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
  int dbId = 0;

  /// [type] /// Specification of the participation type the user plays when performing the
  /// event.
  final CodeableConcept? type;

  /// [role] /// The security role that the user was acting under, that come from local
  /// codes defined by the access control security system (e.g. RBAC, ABAC) used
  /// in the local context.
  final List<CodeableConcept>? role;

  /// [who] /// Reference to who this agent is that was involved in the event.
  final Reference? who;

  /// [altId] /// Alternative agent Identifier. For a human, this should be a user identifier
  /// text string from authentication system. This identifier would be one known
  /// to a common authentication system (e.g. single sign-on), if available.
  final FhirString? altId;
  final Element? altIdElement;

  /// [name] /// Human-meaningful name for the agent.
  final FhirString? name;
  final Element? nameElement;

  /// [requestor] /// Indicator that the user is or is not the requestor, or initiator, for the
  /// event being audited.
  final FhirBoolean requestor;
  final Element? requestorElement;

  /// [location] /// Where the event occurred.
  final Reference? location;

  /// [policy] /// The policy or plan that authorized the activity being recorded. Typically,
  /// a single activity may have multiple applicable policies, such as patient
  /// consent, guarantor funding, etc. The policy would also indicate the
  /// security token used.
  final List<FhirUri>? policy;
  final List<Element>? policyElement;

  /// [media] /// Type of media involved. Used when the event is about exporting/importing
  /// onto media.
  final Coding? media;

  /// [network] /// Logical network location for application activity, if the activity has a
  /// network location.
  final AuditEventNetwork? network;

  /// [purposeOfUse] /// The reason (purpose of use), specific to this agent, that was used during
  /// the event being recorded.
  final List<CodeableConcept>? purposeOfUse;
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
    if (who != null) {
      json['who'] = who!.toJson();
    }
    if (altId?.value != null) {
      json['altId'] = altId!.toJson();
    }
    if (altIdElement != null) {
      json['_altId'] = altIdElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['requestor'] = requestor.toJson();
    if (requestorElement != null) {
      json['_requestor'] = requestorElement!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (policy != null && policy!.isNotEmpty) {
      json['policy'] = policy!.map((FhirUri v) => v.toJson()).toList();
    }
    if (policyElement != null && policyElement!.isNotEmpty) {
      json['_policy'] = policyElement!.map((Element v) => v.toJson()).toList();
    }
    if (media != null) {
      json['media'] = media!.toJson();
    }
    if (network != null) {
      json['network'] = network!.toJson();
    }
    if (purposeOfUse != null && purposeOfUse!.isNotEmpty) {
      json['purposeOfUse'] = purposeOfUse!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory AuditEventAgent.fromJson(Map<String, dynamic> json) {
    return AuditEventAgent(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      who: json['who'] != null
          ? Reference.fromJson(json['who'] as Map<String, dynamic>)
          : null,
      altId: json['altId'] != null ? FhirString.fromJson(json['altId']) : null,
      altIdElement: json['_altId'] != null
          ? Element.fromJson(json['_altId'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      requestor: FhirBoolean.fromJson(json['requestor']),
      requestorElement: json['_requestor'] != null
          ? Element.fromJson(json['_requestor'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      policy: json['policy'] != null
          ? (json['policy'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      policyElement: json['_policy'] != null
          ? (json['_policy'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      media: json['media'] != null
          ? Coding.fromJson(json['media'] as Map<String, dynamic>)
          : null,
      network: json['network'] != null
          ? AuditEventNetwork.fromJson(json['network'] as Map<String, dynamic>)
          : null,
      purposeOfUse: json['purposeOfUse'] != null
          ? (json['purposeOfUse'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
    Element? altIdElement,
    FhirString? name,
    Element? nameElement,
    FhirBoolean? requestor,
    Element? requestorElement,
    Reference? location,
    List<FhirUri>? policy,
    List<Element>? policyElement,
    Coding? media,
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
  int dbId = 0;

  /// [address] /// An identifier for the network access point of the user device for the audit
  /// event.
  final FhirString? address;
  final Element? addressElement;

  /// [type] /// An identifier for the type of network access point that originated the
  /// audit event.
  final AuditEventAgentNetworkType? type;
  final Element? typeElement;
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
    if (address?.value != null) {
      json['address'] = address!.toJson();
    }
    if (addressElement != null) {
      json['_address'] = addressElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    return json;
  }

  factory AuditEventNetwork.fromJson(Map<String, dynamic> json) {
    return AuditEventNetwork(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      address:
          json['address'] != null ? FhirString.fromJson(json['address']) : null,
      addressElement: json['_address'] != null
          ? Element.fromJson(json['_address'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? AuditEventAgentNetworkType.fromJson(json['type'])
          : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [site] /// Logical source location within the healthcare enterprise network. For
  /// example, a hospital or other provider location within a multi-entity
  /// provider group.
  final FhirString? site;
  final Element? siteElement;

  /// [observer] /// Identifier of the source where the event was detected.
  final Reference observer;

  /// [type] /// Code specifying the type of source where event originated.
  final List<Coding>? type;
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
    if (site?.value != null) {
      json['site'] = site!.toJson();
    }
    if (siteElement != null) {
      json['_site'] = siteElement!.toJson();
    }
    json['observer'] = observer.toJson();
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    return json;
  }

  factory AuditEventSource.fromJson(Map<String, dynamic> json) {
    return AuditEventSource(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      site: json['site'] != null ? FhirString.fromJson(json['site']) : null,
      siteElement: json['_site'] != null
          ? Element.fromJson(json['_site'] as Map<String, dynamic>)
          : null,
      observer: Reference.fromJson(json['observer'] as Map<String, dynamic>),
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    List<Coding>? type,
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
  int dbId = 0;

  /// [what] /// Identifies a specific instance of the entity. The reference should be
  /// version specific.
  final Reference? what;

  /// [type] /// The type of the object that was involved in this audit event.
  final Coding? type;

  /// [role] /// Code representing the role the entity played in the event being audited.
  final Coding? role;

  /// [lifecycle] /// Identifier for the data life-cycle stage for the entity.
  final Coding? lifecycle;

  /// [securityLabel] /// Security labels for the identified entity.
  final List<Coding>? securityLabel;

  /// [name] /// A name of the entity in the audit event.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// Text that describes the entity in more detail.
  final FhirString? description;
  final Element? descriptionElement;

  /// [query] /// The query parameters for a query-type entities.
  final FhirBase64Binary? query;
  final Element? queryElement;

  /// [detail] /// Tagged value pairs for conveying additional information about the entity.
  final List<AuditEventDetail>? detail;
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
      json['securityLabel'] =
          securityLabel!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (query?.value != null) {
      json['query'] = query!.toJson();
    }
    if (queryElement != null) {
      json['_query'] = queryElement!.toJson();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((AuditEventDetail v) => v.toJson()).toList();
    }
    return json;
  }

  factory AuditEventEntity.fromJson(Map<String, dynamic> json) {
    return AuditEventEntity(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      what: json['what'] != null
          ? Reference.fromJson(json['what'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? Coding.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? Coding.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      lifecycle: json['lifecycle'] != null
          ? Coding.fromJson(json['lifecycle'] as Map<String, dynamic>)
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      query: json['query'] != null
          ? FhirBase64Binary.fromJson(json['query'])
          : null,
      queryElement: json['_query'] != null
          ? Element.fromJson(json['_query'] as Map<String, dynamic>)
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<AuditEventDetail>((dynamic v) =>
                  AuditEventDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
class AuditEventDetail extends BackboneElement {
  AuditEventDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.valueString,
    this.valueStringElement,
    this.valueBase64Binary,
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
  int dbId = 0;

  /// [type] /// The type of extra detail provided in the value.
  final FhirString type;
  final Element? typeElement;

  /// [valueString] /// The value of the extra detail.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueBase64Binary] /// The value of the extra detail.
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;
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
    json['type'] = type.toJson();
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.toJson();
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    return json;
  }

  factory AuditEventDetail.fromJson(Map<String, dynamic> json) {
    return AuditEventDetail(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: FhirString.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(json['_valueBase64Binary'] as Map<String, dynamic>)
          : null,
    );
  }
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
