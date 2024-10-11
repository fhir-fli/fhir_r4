import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ClinicalUseDefinition extends Resource {
  ClinicalUseDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.type,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String type;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToMany<Reference>? subject = ToMany<Reference>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  ToOne<ClinicalUseDefinitionContraindication>? contraindication =
      ToOne<ClinicalUseDefinitionContraindication>();
  ToOne<ClinicalUseDefinitionIndication>? indication =
      ToOne<ClinicalUseDefinitionIndication>();
  ToOne<ClinicalUseDefinitionInteraction>? interaction =
      ToOne<ClinicalUseDefinitionInteraction>();
  ToMany<Reference>? population = ToMany<Reference>();
  ToOne<ClinicalUseDefinitionUndesirableEffect>? undesirableEffect =
      ToOne<ClinicalUseDefinitionUndesirableEffect>();
  ToOne<ClinicalUseDefinitionWarning>? warning =
      ToOne<ClinicalUseDefinitionWarning>();
}

@Entity()
class ClinicalUseDefinitionContraindication {
  ClinicalUseDefinitionContraindication({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? diseaseSymptomProcedure =
      ToOne<CodeableReference>();
  ToOne<CodeableReference>? diseaseStatus = ToOne<CodeableReference>();
  ToMany<CodeableReference>? comorbidity = ToMany<CodeableReference>();
  ToMany<Reference>? indication = ToMany<Reference>();
  ToMany<ClinicalUseDefinitionOtherTherapy>? otherTherapy =
      ToMany<ClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ClinicalUseDefinitionOtherTherapy {
  ClinicalUseDefinitionOtherTherapy({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> relationshipType = ToOne<CodeableConcept>();
  ToOne<CodeableReference> therapy = ToOne<CodeableReference>();
}

@Entity()
class ClinicalUseDefinitionIndication {
  ClinicalUseDefinitionIndication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationString,
    this.undesirableEffect,
    this.otherTherapy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? diseaseSymptomProcedure =
      ToOne<CodeableReference>();
  ToOne<CodeableReference>? diseaseStatus = ToOne<CodeableReference>();
  ToMany<CodeableReference>? comorbidity = ToMany<CodeableReference>();
  ToOne<CodeableReference>? intendedEffect = ToOne<CodeableReference>();
  ToOne<Range>? durationRange = ToOne<Range>();
  String? durationString;
  ToMany<Reference>? undesirableEffect = ToMany<Reference>();
  ToMany<ClinicalUseDefinitionOtherTherapy>? otherTherapy =
      ToMany<ClinicalUseDefinitionOtherTherapy>();
}

@Entity()
class ClinicalUseDefinitionInteraction {
  ClinicalUseDefinitionInteraction({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ClinicalUseDefinitionInteractant>? interactant =
      ToMany<ClinicalUseDefinitionInteractant>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableReference>? effect = ToOne<CodeableReference>();
  ToOne<CodeableConcept>? incidence = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? management = ToMany<CodeableConcept>();
}

@Entity()
class ClinicalUseDefinitionInteractant {
  ClinicalUseDefinitionInteractant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
}

@Entity()
class ClinicalUseDefinitionUndesirableEffect {
  ClinicalUseDefinitionUndesirableEffect({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? symptomConditionEffect = ToOne<CodeableReference>();
  ToOne<CodeableConcept>? classification = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? frequencyOfOccurrence = ToOne<CodeableConcept>();
}

@Entity()
class ClinicalUseDefinitionWarning {
  ClinicalUseDefinitionWarning({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
}
