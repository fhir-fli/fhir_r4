import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class DocumentReference extends Resource {
  DocumentReference({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.docStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.securityLabel,
    required this.content,
    this.context,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? masterIdentifier = ToOne<Identifier>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  String? docStatus;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  String? date;
  ToMany<Reference>? author = ToMany<Reference>();
  ToOne<Reference>? authenticator = ToOne<Reference>();
  ToOne<Reference>? custodian = ToOne<Reference>();
  ToMany<DocumentReferenceRelatesTo>? relatesTo =
      ToMany<DocumentReferenceRelatesTo>();
  String? description;
  ToMany<CodeableConcept>? securityLabel = ToMany<CodeableConcept>();
  ToMany<DocumentReferenceContent> content = ToMany<DocumentReferenceContent>();
  ToOne<DocumentReferenceContext>? context = ToOne<DocumentReferenceContext>();
}

@Entity()
class DocumentReferenceRelatesTo {
  DocumentReferenceRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Reference> target = ToOne<Reference>();
}

@Entity()
class DocumentReferenceContent {
  DocumentReferenceContent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.attachment,
    this.format,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Attachment> attachment = ToOne<Attachment>();
  ToOne<Coding>? format = ToOne<Coding>();
}

@Entity()
class DocumentReferenceContext {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Reference>? encounter = ToMany<Reference>();
  ToMany<CodeableConcept>? event = ToMany<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<CodeableConcept>? facilityType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? practiceSetting = ToOne<CodeableConcept>();
  ToOne<Reference>? sourcePatientInfo = ToOne<Reference>();
  ToMany<Reference>? related = ToMany<Reference>();
}
