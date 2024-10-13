// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDocumentReference {
  ObjectBoxDocumentReference({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? masterIdentifier,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    this.docStatus,
    ObjectBoxElement? docStatusElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxReference? subject,
    this.date,
    ObjectBoxElement? dateElement,
    List<ObjectBoxReference>? author,
    ObjectBoxReference? authenticator,
    ObjectBoxReference? custodian,
    List<ObjectBoxDocumentReferenceRelatesTo>? relatesTo,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxCodeableConcept>? securityLabel,
    List<ObjectBoxDocumentReferenceContent>? content,
    ObjectBoxDocumentReferenceContext? context,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.masterIdentifier.target = masterIdentifier;
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.docStatusElement.target = docStatusElement;
    this.type.target = type;
    this.category.addAll(category ?? []);
    this.subject.target = subject;
    this.dateElement.target = dateElement;
    this.author.addAll(author ?? []);
    this.authenticator.target = authenticator;
    this.custodian.target = custodian;
    this.relatesTo.addAll(relatesTo ?? []);
    this.descriptionElement.target = descriptionElement;
    this.securityLabel.addAll(securityLabel ?? []);
    this.content.addAll(content ?? []);
    this.context.target = context;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> masterIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? docStatus;
  ToOne<ObjectBoxElement> docStatusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> authenticator = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> custodian = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDocumentReferenceRelatesTo> relatesTo =
      ToMany<ObjectBoxDocumentReferenceRelatesTo>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> securityLabel =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDocumentReferenceContent> content =
      ToMany<ObjectBoxDocumentReferenceContent>();
  ToOne<ObjectBoxDocumentReferenceContext> context =
      ToOne<ObjectBoxDocumentReferenceContext>();
}

@Entity()
class ObjectBoxDocumentReferenceRelatesTo {
  ObjectBoxDocumentReferenceRelatesTo({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    ObjectBoxReference? target,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.target.target = target;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> target = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDocumentReferenceContent {
  ObjectBoxDocumentReferenceContent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxAttachment? attachment,
    ObjectBoxCoding? format,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.attachment.target = attachment;
    this.format.target = format;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment> attachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCoding> format = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxDocumentReferenceContext {
  ObjectBoxDocumentReferenceContext({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxReference>? encounter,
    List<ObjectBoxCodeableConcept>? event,
    ObjectBoxPeriod? period,
    ObjectBoxCodeableConcept? facilityType,
    ObjectBoxCodeableConcept? practiceSetting,
    ObjectBoxReference? sourcePatientInfo,
    List<ObjectBoxReference>? related,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.encounter.addAll(encounter ?? []);
    this.event.addAll(event ?? []);
    this.period.target = period;
    this.facilityType.target = facilityType;
    this.practiceSetting.target = practiceSetting;
    this.sourcePatientInfo.target = sourcePatientInfo;
    this.related.addAll(related ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> encounter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> event = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> facilityType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> practiceSetting =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> sourcePatientInfo = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> related = ToMany<ObjectBoxReference>();
}
