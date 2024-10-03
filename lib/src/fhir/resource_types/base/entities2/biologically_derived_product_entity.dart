import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class BiologicallyDerivedProductEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'BiologicallyDerivedProduct';

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
  BiologicallyDerivedProductCategoryEntity? productCategory;

  @ToOne()
  PrimitiveElementEntity? productCategoryElement;

  @ToOne()
  CodeableConceptEntity? productCode;

  @ToOne()
  BiologicallyDerivedProductStatusEntity? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<ReferenceEntity>? request;

  int? quantity;

  @ToOne()
  PrimitiveElementEntity? quantityElement;

  @ToMany()
  List<ReferenceEntity>? parent;

  @ToOne()
  BiologicallyDerivedProductCollectionEntity? collection;

  @ToMany()
  List<BiologicallyDerivedProductProcessingEntity>? processing;

  @ToOne()
  BiologicallyDerivedProductManipulationEntity? manipulation;

  @ToMany()
  List<BiologicallyDerivedProductStorageEntity>? storage;
}

class BiologicallyDerivedProductCollectionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? collector;

  @ToOne()
  ReferenceEntity? source;

  String? collectedDateTime;

  @ToOne()
  PrimitiveElementEntity? collectedDateTimeElement;

  @ToOne()
  PeriodEntity? collectedPeriod;
}

class BiologicallyDerivedProductProcessingEntity {
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

  @ToOne()
  ReferenceEntity? additive;

  String? timeDateTime;

  @ToOne()
  PrimitiveElementEntity? timeDateTimeElement;

  @ToOne()
  PeriodEntity? timePeriod;
}

class BiologicallyDerivedProductManipulationEntity {
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

  String? timeDateTime;

  @ToOne()
  PrimitiveElementEntity? timeDateTimeElement;

  @ToOne()
  PeriodEntity? timePeriod;
}

class BiologicallyDerivedProductStorageEntity {
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

  double? temperature;

  @ToOne()
  PrimitiveElementEntity? temperatureElement;

  @ToOne()
  BiologicallyDerivedProductStorageScaleEntity? scale;

  @ToOne()
  PrimitiveElementEntity? scaleElement;

  @ToOne()
  PeriodEntity? duration;
}
