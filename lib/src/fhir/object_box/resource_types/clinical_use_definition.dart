// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClinicalUseDefinition {
  ObjectBoxClinicalUseDefinition({
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
    required this.type,
    this.typeElement,
    this.category,
    this.subject,
    this.status,
    this.contraindication,
    this.indication,
    this.interaction,
    this.population,
    this.undesirableEffect,
    this.warning,
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
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? subject = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxClinicalUseDefinitionContraindication>? contraindication =
      ToOne<ObjectBoxClinicalUseDefinitionContraindication>();
  ToOne<ObjectBoxClinicalUseDefinitionIndication>? indication =
      ToOne<ObjectBoxClinicalUseDefinitionIndication>();
  ToOne<ObjectBoxClinicalUseDefinitionInteraction>? interaction =
      ToOne<ObjectBoxClinicalUseDefinitionInteraction>();
  ToMany<ObjectBoxReference>? population = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxClinicalUseDefinitionUndesirableEffect>? undesirableEffect =
      ToOne<ObjectBoxClinicalUseDefinitionUndesirableEffect>();
  ToOne<ObjectBoxClinicalUseDefinitionWarning>? warning =
      ToOne<ObjectBoxClinicalUseDefinitionWarning>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionContraindication {
  ObjectBoxClinicalUseDefinitionContraindication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference>? diseaseSymptomProcedure =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference>? diseaseStatus =
      ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxCodeableReference>? comorbidity =
      ToMany<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxReference>? indication = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>? otherTherapy =
      ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionOtherTherapy {
  ObjectBoxClinicalUseDefinitionOtherTherapy({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> relationshipType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> therapy =
      ToOne<ObjectBoxCodeableReference>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionIndication {
  ObjectBoxClinicalUseDefinitionIndication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationString,
    this.durationStringElement,
    this.undesirableEffect,
    this.otherTherapy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference>? diseaseSymptomProcedure =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference>? diseaseStatus =
      ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxCodeableReference>? comorbidity =
      ToMany<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference>? intendedEffect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxRange>? durationRange = ToOne<ObjectBoxRange>();
  String? durationString;
  ToOne<ObjectBoxElement>? durationStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? undesirableEffect = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>? otherTherapy =
      ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionInteraction {
  ObjectBoxClinicalUseDefinitionInteraction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxClinicalUseDefinitionInteractant>? interactant =
      ToMany<ObjectBoxClinicalUseDefinitionInteractant>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? effect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept>? incidence =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? management =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionInteractant {
  ObjectBoxClinicalUseDefinitionInteractant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? itemReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionUndesirableEffect {
  ObjectBoxClinicalUseDefinitionUndesirableEffect({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference>? symptomConditionEffect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept>? classification =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? frequencyOfOccurrence =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionWarning {
  ObjectBoxClinicalUseDefinitionWarning({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
}
