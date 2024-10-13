// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxGoal {
  ObjectBoxGoal({
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
    List<ObjectBoxIdentifier>? identifier,
    required this.lifecycleStatus,
    ObjectBoxElement? lifecycleStatusElement,
    ObjectBoxCodeableConcept? achievementStatus,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? priority,
    ObjectBoxCodeableConcept? description,
    ObjectBoxReference? subject,
    this.startDate,
    ObjectBoxElement? startDateElement,
    ObjectBoxCodeableConcept? startCodeableConcept,
    List<ObjectBoxGoalTarget>? target,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    this.statusReason,
    ObjectBoxElement? statusReasonElement,
    ObjectBoxReference? expressedBy,
    List<ObjectBoxReference>? addresses,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxCodeableConcept>? outcomeCode,
    List<ObjectBoxReference>? outcomeReference,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.lifecycleStatusElement.target = lifecycleStatusElement;
    this.achievementStatus.target = achievementStatus;
    this.category.addAll(category ?? []);
    this.priority.target = priority;
    this.description.target = description;
    this.subject.target = subject;
    this.startDateElement.target = startDateElement;
    this.startCodeableConcept.target = startCodeableConcept;
    this.target.addAll(target ?? []);
    this.statusDateElement.target = statusDateElement;
    this.statusReasonElement.target = statusReasonElement;
    this.expressedBy.target = expressedBy;
    this.addresses.addAll(addresses ?? []);
    this.note.addAll(note ?? []);
    this.outcomeCode.addAll(outcomeCode ?? []);
    this.outcomeReference.addAll(outcomeReference ?? []);
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String lifecycleStatus;
  ToOne<ObjectBoxElement> lifecycleStatusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> achievementStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> description =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? startDate;
  ToOne<ObjectBoxElement> startDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> startCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxGoalTarget> target = ToMany<ObjectBoxGoalTarget>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  String? statusReason;
  ToOne<ObjectBoxElement> statusReasonElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> expressedBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> addresses = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept> outcomeCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> outcomeReference = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxGoalTarget {
  ObjectBoxGoalTarget({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? measure,
    ObjectBoxQuantity? detailQuantity,
    ObjectBoxRange? detailRange,
    ObjectBoxCodeableConcept? detailCodeableConcept,
    this.detailString,
    ObjectBoxElement? detailStringElement,
    this.detailBoolean,
    ObjectBoxElement? detailBooleanElement,
    this.detailInteger,
    ObjectBoxElement? detailIntegerElement,
    ObjectBoxRatio? detailRatio,
    this.dueDate,
    ObjectBoxElement? dueDateElement,
    ObjectBoxFhirDuration? dueDuration,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.measure.target = measure;
    this.detailQuantity.target = detailQuantity;
    this.detailRange.target = detailRange;
    this.detailCodeableConcept.target = detailCodeableConcept;
    this.detailStringElement.target = detailStringElement;
    this.detailBooleanElement.target = detailBooleanElement;
    this.detailIntegerElement.target = detailIntegerElement;
    this.detailRatio.target = detailRatio;
    this.dueDateElement.target = dueDateElement;
    this.dueDuration.target = dueDuration;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> measure = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> detailQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> detailRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept> detailCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? detailString;
  ToOne<ObjectBoxElement> detailStringElement = ToOne<ObjectBoxElement>();
  bool? detailBoolean;
  ToOne<ObjectBoxElement> detailBooleanElement = ToOne<ObjectBoxElement>();
  int? detailInteger;
  ToOne<ObjectBoxElement> detailIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio> detailRatio = ToOne<ObjectBoxRatio>();
  String? dueDate;
  ToOne<ObjectBoxElement> dueDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration> dueDuration = ToOne<ObjectBoxFhirDuration>();
}
