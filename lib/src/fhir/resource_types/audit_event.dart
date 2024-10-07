import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class AuditEvent extends DomainResource {
  final Coding type;
  final List<Coding>? subtype;
  final FhirCode? action;
  final Element? actionElement;
  final Period? period;
  final FhirInstant recorded;
  final Element? recordedElement;
  final FhirCode? outcome;
  final Element? outcomeElement;
  final FhirString? outcomeDesc;
  final Element? outcomeDescElement;
  final List<CodeableConcept>? purposeOfEvent;
  final List<BackboneElement> agent;
  final BackboneElement? network;
  final BackboneElement source;
  final List<BackboneElement>? entity;
  final List<BackboneElement>? detail;

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
    this.network,
    required this.source,
    this.entity,
    this.detail,
  }) : super(resourceType: R4ResourceType.AuditEvent);

@override
AuditEvent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AuditEventAgent extends BackboneElement {
  final CodeableConcept? type;
  final List<CodeableConcept>? role;
  final Reference? who;
  final FhirString? altId;
  final Element? altIdElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirBoolean requestor;
  final Element? requestorElement;
  final Reference? location;
  final List<FhirUri>? policy;
  final List<Element>? policyElement;
  final Coding? media;
  final List<CodeableConcept>? purposeOfUse;

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
    this.purposeOfUse,
  });

@override
AuditEventAgent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AuditEventNetwork extends BackboneElement {
  final FhirString? address;
  final Element? addressElement;
  final FhirCode? type;
  final Element? typeElement;

  AuditEventNetwork({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.address,
this.addressElement,
    this.type,
this.typeElement,
  });

@override
AuditEventNetwork clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AuditEventSource extends BackboneElement {
  final FhirString? site;
  final Element? siteElement;
  final Reference observer;
  final List<Coding>? type;

  AuditEventSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
this.siteElement,
    required this.observer,
    this.type,
  });

@override
AuditEventSource clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AuditEventEntity extends BackboneElement {
  final Reference? what;
  final Coding? type;
  final Coding? role;
  final Coding? lifecycle;
  final List<Coding>? securityLabel;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBase64Binary? query;
  final Element? queryElement;

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
  });

@override
AuditEventEntity clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AuditEventDetail extends BackboneElement {
  final FhirString type;
  final Element? typeElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirBase64Binary valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;

  AuditEventDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
  });

@override
AuditEventDetail clone() => throw UnimplementedError();
}

