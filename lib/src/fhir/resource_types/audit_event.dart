import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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
  final List<AuditEventAgent> agent;
  final AuditEventSource source;
  final List<AuditEventEntity>? entity;
  @override
  AuditEvent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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
  final AuditEventNetwork? network;
  final List<CodeableConcept>? purposeOfUse;
  @override
  AuditEventAgent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirString? address;
  final Element? addressElement;
  final FhirCode? type;
  final Element? typeElement;
  @override
  AuditEventNetwork clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirString? site;
  final Element? siteElement;
  final Reference observer;
  final List<Coding>? type;
  @override
  AuditEventSource clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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
  final List<AuditEventDetail>? detail;
  @override
  AuditEventEntity clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirString type;
  final Element? typeElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  @override
  AuditEventDetail clone() => throw UnimplementedError();
}
