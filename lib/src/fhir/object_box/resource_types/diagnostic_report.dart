// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDiagnosticReport {
  ObjectBoxDiagnosticReport({
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
    this.identifier,
    this.basedOn,
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.issued,
    this.issuedElement,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.conclusionElement,
    this.conclusionCode,
    this.presentedForm,
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
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement>? effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? resultsInterpreter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? specimen = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? result = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? imagingStudy = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDiagnosticReportMedia>? media =
      ToMany<ObjectBoxDiagnosticReportMedia>();
  String? conclusion;
  ToOne<ObjectBoxElement>? conclusionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? conclusionCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAttachment>? presentedForm = ToMany<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxDiagnosticReportMedia {
  ObjectBoxDiagnosticReportMedia({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.comment,
    this.commentElement,
    required this.link,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> link = ToOne<ObjectBoxReference>();
}
