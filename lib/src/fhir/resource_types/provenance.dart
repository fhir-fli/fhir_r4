import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Reference> target;
  final Period? occurredPeriod;
  final FhirDateTime? occurredDateTime;
  final Element? occurredDateTimeElement;
  final FhirInstant recorded;
  final Element? recordedElement;
  final List<FhirUri>? policy;
  final List<Element>? policyElement;
  final Reference? location;
  final List<CodeableConcept>? reason;
  final CodeableConcept? activity;
  final List<ProvenanceAgent> agent;
  final List<ProvenanceEntity>? entity;
  final List<Signature>? signature;
  @override
  Provenance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final List<CodeableConcept>? role;
  final Reference who;
  final Reference? onBehalfOf;
  @override
  ProvenanceAgent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final FhirCode role;
  final Element? roleElement;
  final Reference what;
  final List<ProvenanceAgent>? agent;
  @override
  ProvenanceEntity clone() => throw UnimplementedError();
}
