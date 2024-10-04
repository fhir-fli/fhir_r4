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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final List<Coding> subtype;
  final FhirCode action;
  final PrimitiveElement actionElement;
  final Period period;
  final FhirInstant recorded;
  final PrimitiveElement recordedElement;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String outcomeDesc;
  final PrimitiveElement outcomeDescElement;
  final List<CodeableConcept> purposeOfEvent;
  final List<AuditEventAgent> agent;
  final AuditEventSource source;
  final List<AuditEventEntity> entity;
}

@Data()
@JsonCodable()
class AuditEventAgent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> role;
  final Reference who;
  final String altId;
  final PrimitiveElement altIdElement;
  final String name;
  final PrimitiveElement nameElement;
  final FhirBoolean requestor;
  final PrimitiveElement requestorElement;
  final Reference location;
  final List<FhirUri> policy;
  final List<PrimitiveElement> policyElement;
  final Coding media;
  final AuditEventNetwork network;
  final List<CodeableConcept> purposeOfUse;
}

@Data()
@JsonCodable()
class AuditEventNetwork {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String address;
  final PrimitiveElement addressElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
}

@Data()
@JsonCodable()
class AuditEventSource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String site;
  final PrimitiveElement siteElement;
  final Reference observer;
  final List<Coding> type;
}

@Data()
@JsonCodable()
class AuditEventEntity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference what;
  final Coding type;
  final Coding role;
  final Coding lifecycle;
  final List<Coding> securityLabel;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirBase64Binary query;
  final PrimitiveElement queryElement;
  final List<AuditEventDetail> detail;
}

@Data()
@JsonCodable()
class AuditEventDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String type;
  final PrimitiveElement typeElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
}


