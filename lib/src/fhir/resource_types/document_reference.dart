import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DocumentReference extends DomainResource {
  final Identifier? masterIdentifier;
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode? docStatus;
  final Element? docStatusElement;
  final CodeableConcept? type;
  final List<CodeableConcept>? category;
  final Reference? subject;
  final FhirInstant? date;
  final Element? dateElement;
  final List<Reference>? author;
  final Reference? authenticator;
  final Reference? custodian;
  final List<DocumentReferenceRelatesTo>? relatesTo;
  final FhirString? description;
  final Element? descriptionElement;
  final List<CodeableConcept>? securityLabel;
  final List<DocumentReferenceContent> content;
  final DocumentReferenceContext? context;

  DocumentReference({
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
    this.masterIdentifier,
    this.identifier,
    required this.status,
this.statusElement,
    this.docStatus,
this.docStatusElement,
    this.type,
    this.category,
    this.subject,
    this.date,
this.dateElement,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
this.descriptionElement,
    this.securityLabel,
    required this.content,
    this.context,
  }) : super(resourceType: R4ResourceType.DocumentReference);

@override
DocumentReference clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DocumentReferenceRelatesTo extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final Reference target;

  DocumentReferenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    required this.target,
  });

@override
DocumentReferenceRelatesTo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DocumentReferenceContent extends BackboneElement {
  final Attachment attachment;
  final Coding? format;

  DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.format,
  });

@override
DocumentReferenceContent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DocumentReferenceContext extends BackboneElement {
  final List<Reference>? encounter;
  final List<CodeableConcept>? event;
  final Period? period;
  final CodeableConcept? facilityType;
  final CodeableConcept? practiceSetting;
  final Reference? sourcePatientInfo;
  final List<Reference>? related;

  DocumentReferenceContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
  });

@override
DocumentReferenceContext clone() => throw UnimplementedError();
}

