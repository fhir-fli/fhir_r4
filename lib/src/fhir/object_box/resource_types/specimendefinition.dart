import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SpecimenDefinition extends Resource {
  SpecimenDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.collection,
    this.typeTested,
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
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<CodeableConcept>? typeCollected = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? patientPreparation = ToMany<CodeableConcept>();
  String? timeAspect;
  ToMany<CodeableConcept>? collection = ToMany<CodeableConcept>();
  ToMany<SpecimenDefinitionTypeTested>? typeTested =
      ToMany<SpecimenDefinitionTypeTested>();
}

@Entity()
class SpecimenDefinitionTypeTested {
  SpecimenDefinitionTypeTested({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.isDerived,
    this.type,
    required this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? isDerived;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String preference;
  ToOne<SpecimenDefinitionContainer>? container =
      ToOne<SpecimenDefinitionContainer>();
  String? requirement;
  ToOne<FhirDuration>? retentionTime = ToOne<FhirDuration>();
  ToMany<CodeableConcept>? rejectionCriterion = ToMany<CodeableConcept>();
  ToMany<SpecimenDefinitionHandling>? handling =
      ToMany<SpecimenDefinitionHandling>();
}

@Entity()
class SpecimenDefinitionContainer {
  SpecimenDefinitionContainer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.additive,
    this.preparation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? material = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? cap = ToOne<CodeableConcept>();
  String? description;
  ToOne<Quantity>? capacity = ToOne<Quantity>();
  ToOne<Quantity>? minimumVolumeQuantity = ToOne<Quantity>();
  String? minimumVolumeString;
  ToMany<SpecimenDefinitionAdditive>? additive =
      ToMany<SpecimenDefinitionAdditive>();
  String? preparation;
}

@Entity()
class SpecimenDefinitionAdditive {
  SpecimenDefinitionAdditive({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? additiveCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? additiveReference = ToOne<Reference>();
}

@Entity()
class SpecimenDefinitionHandling {
  SpecimenDefinitionHandling({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? temperatureQualifier = ToOne<CodeableConcept>();
  ToOne<Range>? temperatureRange = ToOne<Range>();
  ToOne<FhirDuration>? maxDuration = ToOne<FhirDuration>();
  String? instruction;
}
