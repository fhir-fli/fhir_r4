// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDiagnosticReport {
  ObjectBoxDiagnosticReport({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxReference>? basedOn,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.effectiveDateTime,
    ObjectBoxElement? effectiveDateTimeElement,
    ObjectBoxPeriod? effectivePeriod,
    this.issued,
    ObjectBoxElement? issuedElement,
    List<ObjectBoxReference>? performer,
    List<ObjectBoxReference>? resultsInterpreter,
    List<ObjectBoxReference>? specimen,
    List<ObjectBoxReference>? result,
    List<ObjectBoxReference>? imagingStudy,
    List<ObjectBoxDiagnosticReportMedia>? media,
    this.conclusion,
    ObjectBoxElement? conclusionElement,
    List<ObjectBoxCodeableConcept>? conclusionCode,
    List<ObjectBoxAttachment>? presentedForm,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.statusElement.target = statusElement;
    this.category.addAll(category ?? []);
    this.code.target = code;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.effectiveDateTimeElement.target = effectiveDateTimeElement;
    this.effectivePeriod.target = effectivePeriod;
    this.issuedElement.target = issuedElement;
    this.performer.addAll(performer ?? []);
    this.resultsInterpreter.addAll(resultsInterpreter ?? []);
    this.specimen.addAll(specimen ?? []);
    this.result.addAll(result ?? []);
    this.imagingStudy.addAll(imagingStudy ?? []);
    this.media.addAll(media ?? []);
    this.conclusionElement.target = conclusionElement;
    this.conclusionCode.addAll(conclusionCode ?? []);
    this.presentedForm.addAll(presentedForm ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement> effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> resultsInterpreter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> specimen = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> result = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> imagingStudy = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDiagnosticReportMedia> media =
      ToMany<ObjectBoxDiagnosticReportMedia>();
  String? conclusion;
  ToOne<ObjectBoxElement> conclusionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> conclusionCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAttachment> presentedForm = ToMany<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxDiagnosticReportMedia {
  ObjectBoxDiagnosticReportMedia({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.comment,
    ObjectBoxElement? commentElement,
    ObjectBoxReference? link,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.commentElement.target = commentElement;
    this.link.target = link;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> link = ToOne<ObjectBoxReference>();
}
