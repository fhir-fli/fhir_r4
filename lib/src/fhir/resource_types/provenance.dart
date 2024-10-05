import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Provenance extends DomainResource {
  final List<Reference> target;
  final Period? occurredPeriod;
  final FhirString? occurredDateTime;
  final Element? occurredDateTimeElement;
  final FhirInstant? recorded;
  final Element? recordedElement;
  final List<FhirUri>? policy;
  final List<Element>? policyElement;
  final Reference? location;
  final List<CodeableConcept>? reason;
  final CodeableConcept? activity;
  final List<ProvenanceAgent> agent;
  final List<ProvenanceEntity>? entity;
  final List<Signature>? signature;

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
    this.recorded,
    this.recordedElement,
    this.policy,
    this.policyElement,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
  }): super(resourceType: R4ResourceType.Provenance);

@override
Provenance clone() => this;

}


@Data()
@JsonCodable()
class ProvenanceAgent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final List<CodeableConcept>? role;
  final Reference who;
  final Reference? onBehalfOf;

  ProvenanceAgent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
  });

}


@Data()
@JsonCodable()
class ProvenanceEntity {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? role;
  final Element? roleElement;
  final Reference what;
  final List<ProvenanceAgent>? agent;

  ProvenanceEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    this.roleElement,
    required this.what,
    this.agent,
  });

}



