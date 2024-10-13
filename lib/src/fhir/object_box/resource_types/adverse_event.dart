// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAdverseEvent {
  ObjectBoxAdverseEvent({
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
    ObjectBoxIdentifier? identifier,
    required this.actuality,
    ObjectBoxElement? actualityElement,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? event,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.date,
    ObjectBoxElement? dateElement,
    this.detected,
    ObjectBoxElement? detectedElement,
    this.recordedDate,
    ObjectBoxElement? recordedDateElement,
    List<ObjectBoxReference>? resultingCondition,
    ObjectBoxReference? location,
    ObjectBoxCodeableConcept? seriousness,
    ObjectBoxCodeableConcept? severity,
    ObjectBoxCodeableConcept? outcome,
    ObjectBoxReference? recorder,
    List<ObjectBoxReference>? contributor,
    List<ObjectBoxAdverseEventSuspectEntity>? suspectEntity,
    List<ObjectBoxReference>? subjectMedicalHistory,
    List<ObjectBoxReference>? referenceDocument,
    List<ObjectBoxReference>? study,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.actualityElement.target = actualityElement;
    this.category.addAll(category ?? []);
    this.event.target = event;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.dateElement.target = dateElement;
    this.detectedElement.target = detectedElement;
    this.recordedDateElement.target = recordedDateElement;
    this.resultingCondition.addAll(resultingCondition ?? []);
    this.location.target = location;
    this.seriousness.target = seriousness;
    this.severity.target = severity;
    this.outcome.target = outcome;
    this.recorder.target = recorder;
    this.contributor.addAll(contributor ?? []);
    this.suspectEntity.addAll(suspectEntity ?? []);
    this.subjectMedicalHistory.addAll(subjectMedicalHistory ?? []);
    this.referenceDocument.addAll(referenceDocument ?? []);
    this.study.addAll(study ?? []);
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String actuality;
  ToOne<ObjectBoxElement> actualityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> event = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? detected;
  ToOne<ObjectBoxElement> detectedElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement> recordedDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> resultingCondition = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> seriousness =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> severity = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> outcome = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> recorder = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> contributor = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAdverseEventSuspectEntity> suspectEntity =
      ToMany<ObjectBoxAdverseEventSuspectEntity>();
  ToMany<ObjectBoxReference> subjectMedicalHistory =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> referenceDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> study = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxAdverseEventSuspectEntity {
  ObjectBoxAdverseEventSuspectEntity({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? instance,
    List<ObjectBoxAdverseEventCausality>? causality,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.instance.target = instance;
    this.causality.addAll(causality ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> instance = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxAdverseEventCausality> causality =
      ToMany<ObjectBoxAdverseEventCausality>();
}

@Entity()
class ObjectBoxAdverseEventCausality {
  ObjectBoxAdverseEventCausality({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? assessment,
    this.productRelatedness,
    ObjectBoxElement? productRelatednessElement,
    ObjectBoxReference? author,
    ObjectBoxCodeableConcept? method,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.assessment.target = assessment;
    this.productRelatednessElement.target = productRelatednessElement;
    this.author.target = author;
    this.method.target = method;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> assessment =
      ToOne<ObjectBoxCodeableConcept>();
  String? productRelatedness;
  ToOne<ObjectBoxElement> productRelatednessElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
}
