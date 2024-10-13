// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClinicalImpression {
  ObjectBoxClinicalImpression({
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.effectiveDateTime,
    ObjectBoxElement? effectiveDateTimeElement,
    ObjectBoxPeriod? effectivePeriod,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? assessor,
    ObjectBoxReference? previous,
    List<ObjectBoxReference>? problem,
    List<ObjectBoxClinicalImpressionInvestigation>? investigation,
    this.protocol,
    List<ObjectBoxElement>? protocolElement,
    this.summary,
    ObjectBoxElement? summaryElement,
    List<ObjectBoxClinicalImpressionFinding>? finding,
    List<ObjectBoxCodeableConcept>? prognosisCodeableConcept,
    List<ObjectBoxReference>? prognosisReference,
    List<ObjectBoxReference>? supportingInfo,
    List<ObjectBoxAnnotation>? note,
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
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.effectiveDateTimeElement.target = effectiveDateTimeElement;
    this.effectivePeriod.target = effectivePeriod;
    this.dateElement.target = dateElement;
    this.assessor.target = assessor;
    this.previous.target = previous;
    this.problem.addAll(problem ?? []);
    this.investigation.addAll(investigation ?? []);
    this.protocolElement.addAll(protocolElement ?? []);
    this.summaryElement.target = summaryElement;
    this.finding.addAll(finding ?? []);
    this.prognosisCodeableConcept.addAll(prognosisCodeableConcept ?? []);
    this.prognosisReference.addAll(prognosisReference ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.note.addAll(note ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement> effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> assessor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> previous = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> problem = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClinicalImpressionInvestigation> investigation =
      ToMany<ObjectBoxClinicalImpressionInvestigation>();
  List<String>? protocol;
  ToMany<ObjectBoxElement> protocolElement = ToMany<ObjectBoxElement>();
  String? summary;
  ToOne<ObjectBoxElement> summaryElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxClinicalImpressionFinding> finding =
      ToMany<ObjectBoxClinicalImpressionFinding>();
  ToMany<ObjectBoxCodeableConcept> prognosisCodeableConcept =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> prognosisReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxClinicalImpressionInvestigation {
  ObjectBoxClinicalImpressionInvestigation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxReference>? item,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> item = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClinicalImpressionFinding {
  ObjectBoxClinicalImpressionFinding({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? itemCodeableConcept,
    ObjectBoxReference? itemReference,
    this.basis,
    ObjectBoxElement? basisElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemCodeableConcept.target = itemCodeableConcept;
    this.itemReference.target = itemReference;
    this.basisElement.target = basisElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
  String? basis;
  ToOne<ObjectBoxElement> basisElement = ToOne<ObjectBoxElement>();
}
