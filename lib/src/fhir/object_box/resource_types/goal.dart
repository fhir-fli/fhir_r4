// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxGoal {
  ObjectBoxGoal({
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
    required this.lifecycleStatus,
    this.lifecycleStatusElement,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startDate,
    this.startDateElement,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.statusDateElement,
    this.statusReason,
    this.statusReasonElement,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
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
  String lifecycleStatus;
  ToOne<ObjectBoxElement>? lifecycleStatusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? achievementStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> description =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? startDate;
  ToOne<ObjectBoxElement>? startDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? startCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxGoalTarget>? target = ToMany<ObjectBoxGoalTarget>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  String? statusReason;
  ToOne<ObjectBoxElement>? statusReasonElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? expressedBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? addresses = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept>? outcomeCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? outcomeReference = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxGoalTarget {
  ObjectBoxGoalTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.detailStringElement,
    this.detailBoolean,
    this.detailBooleanElement,
    this.detailInteger,
    this.detailIntegerElement,
    this.detailRatio,
    this.dueDate,
    this.dueDateElement,
    this.dueDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? measure = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? detailQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? detailRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept>? detailCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? detailString;
  ToOne<ObjectBoxElement>? detailStringElement = ToOne<ObjectBoxElement>();
  bool? detailBoolean;
  ToOne<ObjectBoxElement>? detailBooleanElement = ToOne<ObjectBoxElement>();
  int? detailInteger;
  ToOne<ObjectBoxElement>? detailIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio>? detailRatio = ToOne<ObjectBoxRatio>();
  String? dueDate;
  ToOne<ObjectBoxElement>? dueDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration>? dueDuration = ToOne<ObjectBoxFhirDuration>();
}
