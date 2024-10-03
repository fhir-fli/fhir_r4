import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SubstanceDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  @ToOne()
  R4ResourceTypeEntity? resourceType;

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

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  @ToOne()
  CodeableConceptEntity? status;

  @ToMany()
  List<CodeableConceptEntity>? classification;

  @ToOne()
  CodeableConceptEntity? domain;

  @ToMany()
  List<CodeableConceptEntity>? grade;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ReferenceEntity>? informationSource;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? manufacturer;

  @ToMany()
  List<ReferenceEntity>? supplier;

  @ToMany()
  List<SubstanceDefinitionMoietyEntity>? moiety;

  @ToMany()
  List<SubstanceDefinitionPropertyEntity>? property;

  @ToMany()
  List<SubstanceDefinitionMolecularWeightEntity>? molecularWeight;

  @ToOne()
  SubstanceDefinitionStructureEntity? structure;

  @ToMany()
  List<SubstanceDefinitionCodeEntity>? code;

  @ToMany()
  List<SubstanceDefinitionNameEntity>? name;

  @ToMany()
  List<SubstanceDefinitionRelationshipEntity>? relationship;

  @ToOne()
  SubstanceDefinitionSourceMaterialEntity? sourceMaterial;
}

class SubstanceDefinitionMoietyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? role;

  @ToOne()
  IdentifierEntity? identifier;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  CodeableConceptEntity? stereochemistry;

  @ToOne()
  CodeableConceptEntity? opticalActivity;

  String? molecularFormula;

  @ToOne()
  PrimitiveElementEntity? molecularFormulaElement;

  @ToOne()
  QuantityEntity? amountQuantity;

  String? amountString;

  @ToOne()
  PrimitiveElementEntity? amountStringElement;

  @ToOne()
  CodeableConceptEntity? measurementType;
}

class SubstanceDefinitionPropertyEntity {
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

class SubstanceDefinitionMolecularWeightEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? method;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  QuantityEntity? amount;
}

class SubstanceDefinitionStructureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? stereochemistry;

  @ToOne()
  CodeableConceptEntity? opticalActivity;

  String? molecularFormula;

  @ToOne()
  PrimitiveElementEntity? molecularFormulaElement;

  String? molecularFormulaByMoiety;

  @ToOne()
  PrimitiveElementEntity? molecularFormulaByMoietyElement;

  @ToOne()
  SubstanceDefinitionMolecularWeightEntity? molecularWeight;

  @ToMany()
  List<CodeableConceptEntity>? technique;

  @ToMany()
  List<ReferenceEntity>? sourceDocument;

  @ToMany()
  List<SubstanceDefinitionRepresentationEntity>? representation;
}

class SubstanceDefinitionRepresentationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  String? representation;

  @ToOne()
  PrimitiveElementEntity? representationElement;

  @ToOne()
  CodeableConceptEntity? format;

  @ToOne()
  ReferenceEntity? document;
}

class SubstanceDefinitionCodeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  CodeableConceptEntity? status;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? source;
}

class SubstanceDefinitionNameEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? status;

  bool? preferred;

  @ToOne()
  PrimitiveElementEntity? preferredElement;

  @ToMany()
  List<CodeableConceptEntity>? language;

  @ToMany()
  List<CodeableConceptEntity>? domain;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  @ToMany()
  List<SubstanceDefinitionNameEntity>? synonym;

  @ToMany()
  List<SubstanceDefinitionNameEntity>? translation;

  @ToMany()
  List<SubstanceDefinitionOfficialEntity>? official;

  @ToMany()
  List<ReferenceEntity>? source;
}

class SubstanceDefinitionOfficialEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? authority;

  @ToOne()
  CodeableConceptEntity? status;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;
}

class SubstanceDefinitionRelationshipEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? substanceDefinitionReference;

  @ToOne()
  CodeableConceptEntity? substanceDefinitionCodeableConcept;

  @ToOne()
  CodeableConceptEntity? type;

  bool? isDefining;

  @ToOne()
  PrimitiveElementEntity? isDefiningElement;

  @ToOne()
  QuantityEntity? amountQuantity;

  @ToOne()
  RatioEntity? amountRatio;

  String? amountString;

  @ToOne()
  PrimitiveElementEntity? amountStringElement;

  @ToOne()
  RatioEntity? ratioHighLimitAmount;

  @ToOne()
  CodeableConceptEntity? comparator;

  @ToMany()
  List<ReferenceEntity>? source;
}

class SubstanceDefinitionSourceMaterialEntity {
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
  CodeableConceptEntity? genus;

  @ToOne()
  CodeableConceptEntity? species;

  @ToOne()
  CodeableConceptEntity? part_;

  @ToMany()
  List<CodeableConceptEntity>? countryOfOrigin;
}
