// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSpecimenDefinition {
  ObjectBoxSpecimenDefinition({
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.timeAspectElement,
    this.collection,
    this.typeTested,
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
  ToOne<ObjectBoxCodeableConcept>? typeCollected =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? patientPreparation =
      ToMany<ObjectBoxCodeableConcept>();
  String? timeAspect;
  ToOne<ObjectBoxElement>? timeAspectElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? collection =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSpecimenDefinitionTypeTested>? typeTested =
      ToMany<ObjectBoxSpecimenDefinitionTypeTested>();
}

@Entity()
class ObjectBoxSpecimenDefinitionTypeTested {
  ObjectBoxSpecimenDefinitionTypeTested({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.isDerived,
    this.isDerivedElement,
    this.type,
    required this.preference,
    this.preferenceElement,
    this.container,
    this.requirement,
    this.requirementElement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? isDerived;
  ToOne<ObjectBoxElement>? isDerivedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String preference;
  ToOne<ObjectBoxElement>? preferenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSpecimenDefinitionContainer>? container =
      ToOne<ObjectBoxSpecimenDefinitionContainer>();
  String? requirement;
  ToOne<ObjectBoxElement>? requirementElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration>? retentionTime = ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxCodeableConcept>? rejectionCriterion =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSpecimenDefinitionHandling>? handling =
      ToMany<ObjectBoxSpecimenDefinitionHandling>();
}

@Entity()
class ObjectBoxSpecimenDefinitionContainer {
  ObjectBoxSpecimenDefinitionContainer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.descriptionElement,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.minimumVolumeStringElement,
    this.additive,
    this.preparation,
    this.preparationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? material = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? cap = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? capacity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? minimumVolumeQuantity = ToOne<ObjectBoxQuantity>();
  String? minimumVolumeString;
  ToOne<ObjectBoxElement>? minimumVolumeStringElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxSpecimenDefinitionAdditive>? additive =
      ToMany<ObjectBoxSpecimenDefinitionAdditive>();
  String? preparation;
  ToOne<ObjectBoxElement>? preparationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSpecimenDefinitionAdditive {
  ObjectBoxSpecimenDefinitionAdditive({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? additiveCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? additiveReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSpecimenDefinitionHandling {
  ObjectBoxSpecimenDefinitionHandling({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.instructionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? temperatureQualifier =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange>? temperatureRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxFhirDuration>? maxDuration = ToOne<ObjectBoxFhirDuration>();
  String? instruction;
  ToOne<ObjectBoxElement>? instructionElement = ToOne<ObjectBoxElement>();
}
