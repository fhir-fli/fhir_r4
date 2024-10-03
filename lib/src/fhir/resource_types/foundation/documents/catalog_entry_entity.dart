import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CatalogEntryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CatalogEntry';

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
  CodeableConceptEntity? type;

  bool? orderable;

  @ToOne()
  PrimitiveElementEntity? orderableElement;

  @ToOne()
  ReferenceEntity? referencedItem;

  @ToMany()
  List<IdentifierEntity>? additionalIdentifier;

  @ToMany()
  List<CodeableConceptEntity>? classification;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  PeriodEntity? validityPeriod;

  String? validTo;

  @ToOne()
  PrimitiveElementEntity? validToElement;

  String? lastUpdated;

  @ToOne()
  PrimitiveElementEntity? lastUpdatedElement;

  @ToMany()
  List<CodeableConceptEntity>? additionalCharacteristic;

  @ToMany()
  List<CodeableConceptEntity>? additionalClassification;

  @ToMany()
  List<CatalogEntryRelatedEntryEntity>? relatedEntry;
}

class CatalogEntryRelatedEntryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? relationtype;

  @ToOne()
  PrimitiveElementEntity? relationtypeElement;

  @ToOne()
  ReferenceEntity? item;
}
