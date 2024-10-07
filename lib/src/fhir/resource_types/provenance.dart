import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.Provenance);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [target] /// The Reference(s) that were generated or updated by the activity described
  /// in this resource. A provenance can point to more than one target if
  /// multiple resources were created/updated by the same activity.
  final List<Reference> target;

  /// [occurredPeriod] /// The period during which the activity occurred.
  final Period? occurredPeriod;

  /// [occurredDateTime] /// The period during which the activity occurred.
  final FhirDateTime? occurredDateTime;
  final Element? occurredDateTimeElement;

  /// [recorded] /// The instant of time at which the activity was recorded.
  final FhirInstant recorded;
  final Element? recordedElement;

  /// [policy] /// Policy or plan the activity was defined by. Typically, a single activity
  /// may have multiple applicable policy documents, such as patient consent,
  /// guarantor funding, etc.
  final List<FhirUri>? policy;
  final List<Element>? policyElement;

  /// [location] /// Where the activity occurred, if relevant.
  final Reference? location;

  /// [reason] /// The reason that the activity was taking place.
  final List<CodeableConcept>? reason;

  /// [activity] /// An activity is something that occurs over a period of time and acts upon or
  /// with entities; it may include consuming, processing, transforming,
  /// modifying, relocating, using, or generating entities.
  final CodeableConcept? activity;

  /// [agent] /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ProvenanceAgent> agent;

  /// [entity] /// An entity used in this activity.
  final List<ProvenanceEntity>? entity;

  /// [signature] /// A digital signature on the target Reference(s). The signer should match a
  /// Provenance.agent. The purpose of the signature is indicated.
  final List<Signature>? signature;
  @override
  Provenance clone() => throw UnimplementedError();
  Provenance copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ProvenanceAgent] /// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ProvenanceAgent extends BackboneElement {
  ProvenanceAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The participation the agent had with respect to the activity.
  final CodeableConcept? type;

  /// [role] /// The function of the agent with respect to the activity. The security role
  /// enabling the agent with respect to the activity.
  final List<CodeableConcept>? role;

  /// [who] /// The individual, device or organization that participated in the event.
  final Reference who;

  /// [onBehalfOf] /// The individual, device, or organization for whom the change was made.
  final Reference? onBehalfOf;
  @override
  ProvenanceAgent clone() => throw UnimplementedError();
  ProvenanceAgent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    Reference? onBehalfOf,
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

@JsonCodable()
@Data()
@Entity()

/// [ProvenanceEntity] /// An entity used in this activity.
class ProvenanceEntity extends BackboneElement {
  ProvenanceEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    this.roleElement,
    required this.what,
    this.agent,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// How the entity was used during the activity.
  final FhirCode role;
  final Element? roleElement;

  /// [what] /// Identity of the Entity used. May be a logical or physical uri and maybe
  /// absolute or relative.
  final Reference what;

  /// [agent] /// The entity is attributed to an agent to express the agent's responsibility
  /// for that entity, possibly along with other agents. This description can be
  /// understood as shorthand for saying that the agent was responsible for the
  /// activity which generated the entity.
  final List<ProvenanceAgent>? agent;
  @override
  ProvenanceEntity clone() => throw UnimplementedError();
  ProvenanceEntity copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? role,
    Element? roleElement,
    Reference? what,
    List<ProvenanceAgent>? agent,
  }) {
    return ProvenanceEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      roleElement: roleElement ?? this.roleElement,
      what: what ?? this.what,
      agent: agent ?? this.agent,
    );
  }
}
