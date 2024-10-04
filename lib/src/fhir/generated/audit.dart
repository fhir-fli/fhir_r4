import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class AuditEvent {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final List<Coding> subtype;
  final FhirCode action;
  final PrimitiveElement Action;
  final Period period;
  final FhirInstant recorded;
  final PrimitiveElement Recorded;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String outcomeDesc;
  final PrimitiveElement OutcomeDesc;
  final List<CodeableConcept> purposeOfEvent;
  final List<AuditEventAgent> agent;
  final AuditEventSource source;
  final List<AuditEventEntity> entity;
}

@Data()
@JsonCodable()
class AuditEventAgent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> role;
  final Reference who;
  final String altId;
  final PrimitiveElement AltId;
  final String name;
  final PrimitiveElement Name;
  final FhirBoolean requestor;
  final PrimitiveElement Requestor;
  final Reference location;
  final List<FhirUri> policy;
  final List<PrimitiveElement> Policy;
  final Coding media;
  final AuditEventNetwork network;
  final List<CodeableConcept> purposeOfUse;
}

@Data()
@JsonCodable()
class AuditEventNetwork {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String address;
  final PrimitiveElement Address;
  final FhirCode type;
  final PrimitiveElement Type;
}

@Data()
@JsonCodable()
class AuditEventSource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String site;
  final PrimitiveElement Site;
  final Reference observer;
  final List<Coding> type;
}

@Data()
@JsonCodable()
class AuditEventEntity {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference what;
  final Coding type;
  final Coding role;
  final Coding lifecycle;
  final List<Coding> securityLabel;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final FhirBase64Binary query;
  final PrimitiveElement Query;
  final List<AuditEventDetail> detail;
}

@Data()
@JsonCodable()
class AuditEventDetail {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String type;
  final PrimitiveElement Type;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
}


