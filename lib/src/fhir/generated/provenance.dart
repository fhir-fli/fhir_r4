import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Provenance {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> target;
  final Period occurredPeriod;
  final String occurredDateTime;
  final PrimitiveElement occurredDateTimeElement;
  final FhirInstant recorded;
  final PrimitiveElement recordedElement;
  final List<FhirUri> policy;
  final List<PrimitiveElement> policyElement;
  final Reference location;
  final List<CodeableConcept> reason;
  final CodeableConcept activity;
  final List<ProvenanceAgent> agent;
  final List<ProvenanceEntity> entity;
  final List<Signature> signature;
  const Provenance({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.target,
    required this.occurredPeriod,
    required this.occurredDateTime,
    required this.occurredDateTimeElement,
    required this.recorded,
    required this.recordedElement,
    required this.policy,
    required this.policyElement,
    required this.location,
    required this.reason,
    required this.activity,
    required this.agent,
    required this.entity,
    required this.signature,
  });
}

@Data()
@JsonCodable()
class ProvenanceAgent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> role;
  final Reference who;
  final Reference onBehalfOf;
  const ProvenanceAgent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.role,
    required this.who,
    required this.onBehalfOf,
  });
}

@Data()
@JsonCodable()
class ProvenanceEntity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode role;
  final PrimitiveElement roleElement;
  final Reference what;
  final List<ProvenanceAgent> agent;
  const ProvenanceEntity({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.roleElement,
    required this.what,
    required this.agent,
  });
}


