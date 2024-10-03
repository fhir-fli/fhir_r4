import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SubstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Substance';
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
  SubstanceStatusEntity? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodeableConceptEntity>? category;
  @ToOne()
  CodeableConceptEntity? code;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  @ToMany()
  List<SubstanceInstanceEntity>? instance;
  @ToMany()
  List<SubstanceIngredientEntity>? ingredient;
}

class SubstanceInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  IdentifierEntity? identifier;
  String? expiry;
  @ToOne()
  PrimitiveElementEntity? expiryElement;
  @ToOne()
  QuantityEntity? quantity;
}

class SubstanceIngredientEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  RatioEntity? quantity;
  @ToOne()
  CodeableConceptEntity? substanceCodeableConcept;
  @ToOne()
  ReferenceEntity? substanceReference;
}
