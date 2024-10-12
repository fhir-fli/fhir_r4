// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDocumentReference {
  ObjectBoxDocumentReference({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? masterIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String? docStatus;
  ToOne<ObjectBoxElement>? docStatusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? author = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? authenticator = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? custodian = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDocumentReferenceRelatesTo>? relatesTo =
      ToMany<ObjectBoxDocumentReferenceRelatesTo>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? securityLabel =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDocumentReferenceContent> content =
      ToMany<ObjectBoxDocumentReferenceContent>();
  ToOne<ObjectBoxDocumentReferenceContext>? context =
      ToOne<ObjectBoxDocumentReferenceContext>();
}

@Entity()
class ObjectBoxDocumentReferenceRelatesTo {
  ObjectBoxDocumentReferenceRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    required this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> target = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDocumentReferenceContent {
  ObjectBoxDocumentReferenceContent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.attachment,
    this.format,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment> attachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCoding>? format = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxDocumentReferenceContext {
  ObjectBoxDocumentReferenceContext({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference>? encounter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? event = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? facilityType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? practiceSetting =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? sourcePatientInfo = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? related = ToMany<ObjectBoxReference>();
}
