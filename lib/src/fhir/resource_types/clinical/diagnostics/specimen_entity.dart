import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SpecimenEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Specimen';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  IdentifierEntity? accessionIdentifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? subject;

  String? receivedTime;

  @ToOne()
  PrimitiveElementEntity? receivedTimeElement;

  @ToMany()
  List<ReferenceEntity>? parent;

  @ToMany()
  List<ReferenceEntity>? request;

  @ToOne()
  SpecimenCollectionEntity? collection;

  @ToMany()
  List<SpecimenProcessingEntity>? processing;

  @ToMany()
  List<SpecimenContainerEntity>? container;

  @ToMany()
  List<CodeableConceptEntity>? condition;

  @ToMany()
  List<AnnotationEntity>? note;
}

class SpecimenCollectionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? collector;

  String? collectedDateTime;

  @ToOne()
  PrimitiveElementEntity? collectedDateTimeElement;

  @ToOne()
  PeriodEntity? collectedPeriod;

  @ToOne()
  FhirDurationEntity? duration;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  CodeableConceptEntity? method;

  @ToOne()
  CodeableConceptEntity? bodySite;

  @ToOne()
  CodeableConceptEntity? fastingStatusCodeableConcept;

  @ToOne()
  FhirDurationEntity? fastingStatusDuration;
}

class SpecimenProcessingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? procedure;

  @ToMany()
  List<ReferenceEntity>? additive;

  String? timeDateTime;

  @ToOne()
  PrimitiveElementEntity? timeDateTimeElement;

  @ToOne()
  PeriodEntity? timePeriod;
}

class SpecimenContainerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  QuantityEntity? capacity;

  @ToOne()
  QuantityEntity? specimenQuantity;

  @ToOne()
  CodeableConceptEntity? additiveCodeableConcept;

  @ToOne()
  ReferenceEntity? additiveReference;
}
