// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClinicalUseDefinition {
  ObjectBoxClinicalUseDefinition({
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
    required this.type,
    ObjectBoxElement? typeElement,
    List<ObjectBoxCodeableConcept>? category,
    List<ObjectBoxReference>? subject,
    ObjectBoxCodeableConcept? status,
    ObjectBoxClinicalUseDefinitionContraindication? contraindication,
    ObjectBoxClinicalUseDefinitionIndication? indication,
    ObjectBoxClinicalUseDefinitionInteraction? interaction,
    List<ObjectBoxReference>? population,
    ObjectBoxClinicalUseDefinitionUndesirableEffect? undesirableEffect,
    ObjectBoxClinicalUseDefinitionWarning? warning,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.typeElement.target = typeElement;
    this.category.addAll(category ?? []);
    this.subject.addAll(subject ?? []);
    this.status.target = status;
    this.contraindication.target = contraindication;
    this.indication.target = indication;
    this.interaction.target = interaction;
    this.population.addAll(population ?? []);
    this.undesirableEffect.target = undesirableEffect;
    this.warning.target = warning;
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
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> subject = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxClinicalUseDefinitionContraindication> contraindication =
      ToOne<ObjectBoxClinicalUseDefinitionContraindication>();
  ToOne<ObjectBoxClinicalUseDefinitionIndication> indication =
      ToOne<ObjectBoxClinicalUseDefinitionIndication>();
  ToOne<ObjectBoxClinicalUseDefinitionInteraction> interaction =
      ToOne<ObjectBoxClinicalUseDefinitionInteraction>();
  ToMany<ObjectBoxReference> population = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxClinicalUseDefinitionUndesirableEffect> undesirableEffect =
      ToOne<ObjectBoxClinicalUseDefinitionUndesirableEffect>();
  ToOne<ObjectBoxClinicalUseDefinitionWarning> warning =
      ToOne<ObjectBoxClinicalUseDefinitionWarning>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionContraindication {
  ObjectBoxClinicalUseDefinitionContraindication({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? diseaseSymptomProcedure,
    ObjectBoxCodeableReference? diseaseStatus,
    List<ObjectBoxCodeableReference>? comorbidity,
    List<ObjectBoxReference>? indication,
    List<ObjectBoxClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.diseaseSymptomProcedure.target = diseaseSymptomProcedure;
    this.diseaseStatus.target = diseaseStatus;
    this.comorbidity.addAll(comorbidity ?? []);
    this.indication.addAll(indication ?? []);
    this.otherTherapy.addAll(otherTherapy ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> diseaseSymptomProcedure =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference> diseaseStatus =
      ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxCodeableReference> comorbidity =
      ToMany<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxReference> indication = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy> otherTherapy =
      ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionOtherTherapy {
  ObjectBoxClinicalUseDefinitionOtherTherapy({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? relationshipType,
    ObjectBoxCodeableReference? therapy,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationshipType.target = relationshipType;
    this.therapy.target = therapy;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
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
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? diseaseSymptomProcedure,
    ObjectBoxCodeableReference? diseaseStatus,
    List<ObjectBoxCodeableReference>? comorbidity,
    ObjectBoxCodeableReference? intendedEffect,
    ObjectBoxRange? durationRange,
    this.durationString,
    ObjectBoxElement? durationStringElement,
    List<ObjectBoxReference>? undesirableEffect,
    List<ObjectBoxClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.diseaseSymptomProcedure.target = diseaseSymptomProcedure;
    this.diseaseStatus.target = diseaseStatus;
    this.comorbidity.addAll(comorbidity ?? []);
    this.intendedEffect.target = intendedEffect;
    this.durationRange.target = durationRange;
    this.durationStringElement.target = durationStringElement;
    this.undesirableEffect.addAll(undesirableEffect ?? []);
    this.otherTherapy.addAll(otherTherapy ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> diseaseSymptomProcedure =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference> diseaseStatus =
      ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxCodeableReference> comorbidity =
      ToMany<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableReference> intendedEffect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxRange> durationRange = ToOne<ObjectBoxRange>();
  String? durationString;
  ToOne<ObjectBoxElement> durationStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> undesirableEffect = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy> otherTherapy =
      ToMany<ObjectBoxClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionInteraction {
  ObjectBoxClinicalUseDefinitionInteraction({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxClinicalUseDefinitionInteractant>? interactant,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableReference? effect,
    ObjectBoxCodeableConcept? incidence,
    List<ObjectBoxCodeableConcept>? management,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.interactant.addAll(interactant ?? []);
    this.type.target = type;
    this.effect.target = effect;
    this.incidence.target = incidence;
    this.management.addAll(management ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxClinicalUseDefinitionInteractant> interactant =
      ToMany<ObjectBoxClinicalUseDefinitionInteractant>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> effect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept> incidence = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> management =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionInteractant {
  ObjectBoxClinicalUseDefinitionInteractant({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? itemReference,
    ObjectBoxCodeableConcept? itemCodeableConcept,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemReference.target = itemReference;
    this.itemCodeableConcept.target = itemCodeableConcept;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionUndesirableEffect {
  ObjectBoxClinicalUseDefinitionUndesirableEffect({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? symptomConditionEffect,
    ObjectBoxCodeableConcept? classification,
    ObjectBoxCodeableConcept? frequencyOfOccurrence,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.symptomConditionEffect.target = symptomConditionEffect;
    this.classification.target = classification;
    this.frequencyOfOccurrence.target = frequencyOfOccurrence;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> symptomConditionEffect =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept> classification =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> frequencyOfOccurrence =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClinicalUseDefinitionWarning {
  ObjectBoxClinicalUseDefinitionWarning({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? code,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.code.target = code;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}
