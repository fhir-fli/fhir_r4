import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.AuditEvent);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Identifier for a family of the event. For example, a menu item, program,
  /// rule, policy, function code, application name or URL. It identifies the
  /// performed function.
  final Coding type;

  /// [subtype] /// Identifier for the category of event.
  final List<Coding>? subtype;

  /// [action] /// Indicator for type of action performed during the event that generated the
  /// audit.
  final FhirCode? action;
  final Element? actionElement;

  /// [period] /// The period during which the activity occurred.
  final Period? period;

  /// [recorded] /// The time when the event was recorded.
  final FhirInstant recorded;
  final Element? recordedElement;

  /// [outcome] /// Indicates whether the event succeeded or failed.
  final FhirCode? outcome;
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
  AuditEvent clone() => throw UnimplementedError();
  AuditEvent copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    List<Coding>? subtype,
    FhirCode? action,
    Element? actionElement,
    Period? period,
    FhirInstant? recorded,
    Element? recordedElement,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? outcomeDesc,
    Element? outcomeDescElement,
    List<CodeableConcept>? purposeOfEvent,
    List<AuditEventAgent>? agent,
    AuditEventSource? source,
    List<AuditEventEntity>? entity,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  AuditEventAgent clone() => throw UnimplementedError();
  AuditEventAgent copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [address] /// An identifier for the network access point of the user device for the audit
  /// event.
  final FhirString? address;
  final Element? addressElement;

  /// [type] /// An identifier for the type of network access point that originated the
  /// audit event.
  final FhirCode? type;
  final Element? typeElement;
  @override
  AuditEventNetwork clone() => throw UnimplementedError();
  AuditEventNetwork copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? address,
    Element? addressElement,
    FhirCode? type,
    Element? typeElement,
  }) {
    return AuditEventNetwork(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  AuditEventSource clone() => throw UnimplementedError();
  AuditEventSource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? site,
    Element? siteElement,
    Reference? observer,
    List<Coding>? type,
  }) {
    return AuditEventSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      siteElement: siteElement ?? this.siteElement,
      observer: observer ?? this.observer,
      type: type ?? this.type,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  AuditEventEntity clone() => throw UnimplementedError();
  AuditEventEntity copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AuditEventDetail] /// Tagged value pairs for conveying additional information about the entity.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of extra detail provided in the value.
  final FhirString type;
  final Element? typeElement;

  /// [valueString] /// The value of the extra detail.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueBase64Binary] /// The value of the extra detail.
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  @override
  AuditEventDetail clone() => throw UnimplementedError();
  AuditEventDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? type,
    Element? typeElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
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
    );
  }
}
