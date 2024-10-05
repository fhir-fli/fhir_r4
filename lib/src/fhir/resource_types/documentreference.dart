import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DocumentReference extends DomainResource {
  final Identifier? masterIdentifier;
  final List<Identifier>? identifier;
  final FhirCode? status;
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
    this.status,
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
  }): super(resourceType: R4ResourceType.DocumentReference);

@override
DocumentReference clone() => this;

}


@Data()
@JsonCodable()
class DocumentReferenceRelatesTo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final Reference target;

  DocumentReferenceRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    required this.target,
  });

}


@Data()
@JsonCodable()
class DocumentReferenceContent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Attachment attachment;
  final Coding? format;

  DocumentReferenceContent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.attachment,
    this.format,
  });

}


@Data()
@JsonCodable()
class DocumentReferenceContext {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Reference>? encounter;
  final List<CodeableConcept>? event;
  final Period? period;
  final CodeableConcept? facilityType;
  final CodeableConcept? practiceSetting;
  final Reference? sourcePatientInfo;
  final List<Reference>? related;

  DocumentReferenceContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
  });

}



