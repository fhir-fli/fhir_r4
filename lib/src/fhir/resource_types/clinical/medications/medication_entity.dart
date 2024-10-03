import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Medication';

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
  CodeableConceptEntity? code;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? manufacturer;

  @ToOne()
  CodeableConceptEntity? form;

  @ToOne()
  RatioEntity? amount;

  @ToMany()
  List<MedicationIngredientEntity>? ingredient;

  @ToOne()
  MedicationBatchEntity? batch;
}

class MedicationIngredientEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? itemCodeableConcept;

  @ToOne()
  ReferenceEntity? itemReference;

  bool? isActive;

  @ToOne()
  PrimitiveElementEntity? isActiveElement;

  @ToOne()
  RatioEntity? strength;
}

class MedicationBatchEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? lotNumber;

  @ToOne()
  PrimitiveElementEntity? lotNumberElement;

  String? expirationDate;

  @ToOne()
  PrimitiveElementEntity? expirationDateElement;
}
