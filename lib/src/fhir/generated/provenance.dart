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
}


