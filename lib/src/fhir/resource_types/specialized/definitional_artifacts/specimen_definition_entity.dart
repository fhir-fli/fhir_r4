import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SpecimenDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'SpecimenDefinition';

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

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  CodeableConceptEntity? typeCollected;

  @ToMany()
  List<CodeableConceptEntity>? patientPreparation;

  String? timeAspect;

  @ToOne()
  PrimitiveElementEntity? timeAspectElement;

  @ToMany()
  List<CodeableConceptEntity>? collection;

  @ToMany()
  List<SpecimenDefinitionTypeTestedEntity>? typeTested;
}

class SpecimenDefinitionTypeTestedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? isDerived;

  @ToOne()
  PrimitiveElementEntity? isDerivedElement;

  @ToOne()
  CodeableConceptEntity? type;

  String? preference;

  @ToOne()
  PrimitiveElementEntity? preferenceElement;

  @ToOne()
  SpecimenDefinitionContainerEntity? container;

  String? requirement;

  @ToOne()
  PrimitiveElementEntity? requirementElement;

  @ToOne()
  FhirDurationEntity? retentionTime;

  @ToMany()
  List<CodeableConceptEntity>? rejectionCriterion;

  @ToMany()
  List<SpecimenDefinitionHandlingEntity>? handling;
}

class SpecimenDefinitionContainerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? material;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? cap;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  QuantityEntity? capacity;

  @ToOne()
  QuantityEntity? minimumVolumeQuantity;

  String? minimumVolumeString;

  @ToOne()
  PrimitiveElementEntity? minimumVolumeStringElement;

  @ToMany()
  List<SpecimenDefinitionAdditiveEntity>? additive;

  String? preparation;

  @ToOne()
  PrimitiveElementEntity? preparationElement;
}

class SpecimenDefinitionAdditiveEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? additiveCodeableConcept;

  @ToOne()
  ReferenceEntity? additiveReference;
}

class SpecimenDefinitionHandlingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? temperatureQualifier;

  @ToOne()
  RangeEntity? temperatureRange;

  @ToOne()
  FhirDurationEntity? maxDuration;

  String? instruction;

  @ToOne()
  PrimitiveElementEntity? instructionElement;
}
