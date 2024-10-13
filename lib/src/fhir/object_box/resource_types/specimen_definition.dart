// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSpecimenDefinition {
  ObjectBoxSpecimenDefinition({
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
    ObjectBoxCodeableConcept? typeCollected,
    List<ObjectBoxCodeableConcept>? patientPreparation,
    this.timeAspect,
    ObjectBoxElement? timeAspectElement,
    List<ObjectBoxCodeableConcept>? collection,
    List<ObjectBoxSpecimenDefinitionTypeTested>? typeTested,
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
    this.typeCollected.target = typeCollected;
    this.patientPreparation.addAll(patientPreparation ?? []);
    this.timeAspectElement.target = timeAspectElement;
    this.collection.addAll(collection ?? []);
    this.typeTested.addAll(typeTested ?? []);
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
  ToOne<ObjectBoxCodeableConcept> typeCollected =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> patientPreparation =
      ToMany<ObjectBoxCodeableConcept>();
  String? timeAspect;
  ToOne<ObjectBoxElement> timeAspectElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> collection =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSpecimenDefinitionTypeTested> typeTested =
      ToMany<ObjectBoxSpecimenDefinitionTypeTested>();
}

@Entity()
class ObjectBoxSpecimenDefinitionTypeTested {
  ObjectBoxSpecimenDefinitionTypeTested({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.isDerived,
    ObjectBoxElement? isDerivedElement,
    ObjectBoxCodeableConcept? type,
    required this.preference,
    ObjectBoxElement? preferenceElement,
    ObjectBoxSpecimenDefinitionContainer? container,
    this.requirement,
    ObjectBoxElement? requirementElement,
    ObjectBoxFhirDuration? retentionTime,
    List<ObjectBoxCodeableConcept>? rejectionCriterion,
    List<ObjectBoxSpecimenDefinitionHandling>? handling,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.isDerivedElement.target = isDerivedElement;
    this.type.target = type;
    this.preferenceElement.target = preferenceElement;
    this.container.target = container;
    this.requirementElement.target = requirementElement;
    this.retentionTime.target = retentionTime;
    this.rejectionCriterion.addAll(rejectionCriterion ?? []);
    this.handling.addAll(handling ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? isDerived;
  ToOne<ObjectBoxElement> isDerivedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String preference;
  ToOne<ObjectBoxElement> preferenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSpecimenDefinitionContainer> container =
      ToOne<ObjectBoxSpecimenDefinitionContainer>();
  String? requirement;
  ToOne<ObjectBoxElement> requirementElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration> retentionTime = ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxCodeableConcept> rejectionCriterion =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSpecimenDefinitionHandling> handling =
      ToMany<ObjectBoxSpecimenDefinitionHandling>();
}

@Entity()
class ObjectBoxSpecimenDefinitionContainer {
  ObjectBoxSpecimenDefinitionContainer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? material,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? cap,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxQuantity? capacity,
    ObjectBoxQuantity? minimumVolumeQuantity,
    this.minimumVolumeString,
    ObjectBoxElement? minimumVolumeStringElement,
    List<ObjectBoxSpecimenDefinitionAdditive>? additive,
    this.preparation,
    ObjectBoxElement? preparationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.material.target = material;
    this.type.target = type;
    this.cap.target = cap;
    this.descriptionElement.target = descriptionElement;
    this.capacity.target = capacity;
    this.minimumVolumeQuantity.target = minimumVolumeQuantity;
    this.minimumVolumeStringElement.target = minimumVolumeStringElement;
    this.additive.addAll(additive ?? []);
    this.preparationElement.target = preparationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> material = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> cap = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> capacity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> minimumVolumeQuantity = ToOne<ObjectBoxQuantity>();
  String? minimumVolumeString;
  ToOne<ObjectBoxElement> minimumVolumeStringElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxSpecimenDefinitionAdditive> additive =
      ToMany<ObjectBoxSpecimenDefinitionAdditive>();
  String? preparation;
  ToOne<ObjectBoxElement> preparationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSpecimenDefinitionAdditive {
  ObjectBoxSpecimenDefinitionAdditive({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? additiveCodeableConcept,
    ObjectBoxReference? additiveReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.additiveCodeableConcept.target = additiveCodeableConcept;
    this.additiveReference.target = additiveReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> additiveCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> additiveReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSpecimenDefinitionHandling {
  ObjectBoxSpecimenDefinitionHandling({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? temperatureQualifier,
    ObjectBoxRange? temperatureRange,
    ObjectBoxFhirDuration? maxDuration,
    this.instruction,
    ObjectBoxElement? instructionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.temperatureQualifier.target = temperatureQualifier;
    this.temperatureRange.target = temperatureRange;
    this.maxDuration.target = maxDuration;
    this.instructionElement.target = instructionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> temperatureQualifier =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange> temperatureRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxFhirDuration> maxDuration = ToOne<ObjectBoxFhirDuration>();
  String? instruction;
  ToOne<ObjectBoxElement> instructionElement = ToOne<ObjectBoxElement>();
}
