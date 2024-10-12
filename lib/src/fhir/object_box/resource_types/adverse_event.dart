// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAdverseEvent {
  ObjectBoxAdverseEvent({
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
    required this.actuality,
    this.actualityElement,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    this.detected,
    this.detectedElement,
    this.recordedDate,
    this.recordedDateElement,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
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
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String actuality;
  ToOne<ObjectBoxElement>? actualityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? event = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? detected;
  ToOne<ObjectBoxElement>? detectedElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement>? recordedDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? resultingCondition = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? seriousness =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? severity = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? outcome = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? recorder = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? contributor = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAdverseEventSuspectEntity>? suspectEntity =
      ToMany<ObjectBoxAdverseEventSuspectEntity>();
  ToMany<ObjectBoxReference>? subjectMedicalHistory =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? referenceDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? study = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxAdverseEventSuspectEntity {
  ObjectBoxAdverseEventSuspectEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.instance,
    this.causality,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> instance = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxAdverseEventCausality>? causality =
      ToMany<ObjectBoxAdverseEventCausality>();
}

@Entity()
class ObjectBoxAdverseEventCausality {
  ObjectBoxAdverseEventCausality({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.productRelatednessElement,
    this.author,
    this.method,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? assessment =
      ToOne<ObjectBoxCodeableConcept>();
  String? productRelatedness;
  ToOne<ObjectBoxElement>? productRelatednessElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
}
