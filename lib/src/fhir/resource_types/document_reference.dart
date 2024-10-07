import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class DocumentReference extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  DocumentReference clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class DocumentReferenceRelatesTo extends BackboneElement {
  DocumentReferenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.target,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final Reference target;
  @override
  DocumentReferenceRelatesTo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class DocumentReferenceContent extends BackboneElement {
  DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.format,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Attachment attachment;
  final Coding? format;
  @override
  DocumentReferenceContent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class DocumentReferenceContext extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Reference>? encounter;
  final List<CodeableConcept>? event;
  final Period? period;
  final CodeableConcept? facilityType;
  final CodeableConcept? practiceSetting;
  final Reference? sourcePatientInfo;
  final List<Reference>? related;
  @override
  DocumentReferenceContext clone() => throw UnimplementedError();
}
