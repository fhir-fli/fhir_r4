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
  const AuditEvent({
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
    required this.type,
    required this.subtype,
    required this.action,
    required this.actionElement,
    required this.period,
    required this.recorded,
    required this.recordedElement,
    required this.outcome,
    required this.outcomeElement,
    required this.outcomeDesc,
    required this.outcomeDescElement,
    required this.purposeOfEvent,
    required this.agent,
    required this.source,
    required this.entity,
  });
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
  const AuditEventAgent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.role,
    required this.who,
    required this.altId,
    required this.altIdElement,
    required this.name,
    required this.nameElement,
    required this.requestor,
    required this.requestorElement,
    required this.location,
    required this.policy,
    required this.policyElement,
    required this.media,
    required this.network,
    required this.purposeOfUse,
  });
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
  const AuditEventNetwork({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.address,
    required this.addressElement,
    required this.type,
    required this.typeElement,
  });
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
  const AuditEventSource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.site,
    required this.siteElement,
    required this.observer,
    required this.type,
  });
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
  const AuditEventEntity({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.what,
    required this.type,
    required this.role,
    required this.lifecycle,
    required this.securityLabel,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.query,
    required this.queryElement,
    required this.detail,
  });
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
  const AuditEventDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
  });
}


