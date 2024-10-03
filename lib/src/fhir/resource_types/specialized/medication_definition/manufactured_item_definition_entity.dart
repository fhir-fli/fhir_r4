import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ManufacturedItemDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ManufacturedItemDefinition';

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

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? manufacturedDoseForm;

  @ToOne()
  CodeableConceptEntity? unitOfPresentation;

  @ToMany()
  List<ReferenceEntity>? manufacturer;

  @ToMany()
  List<CodeableConceptEntity>? ingredient;

  @ToMany()
  List<ManufacturedItemDefinitionPropertyEntity>? property;
}

class ManufacturedItemDefinitionPropertyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  @ToOne()
  QuantityEntity? valueQuantity;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  @ToOne()
  AttachmentEntity? valueAttachment;
}
