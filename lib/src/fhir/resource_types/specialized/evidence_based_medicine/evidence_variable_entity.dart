import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EvidenceVariableEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'EvidenceVariable';
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
  String? url;
  @ToOne()
  PrimitiveElementEntity? urlElement;
  @ToMany()
  List<IdentifierEntity>? identifier;
  String? version;
  @ToOne()
  PrimitiveElementEntity? versionElement;
  String? name;
  @ToOne()
  PrimitiveElementEntity? nameElement;
  String? title;
  @ToOne()
  PrimitiveElementEntity? titleElement;
  String? shortTitle;
  @ToOne()
  PrimitiveElementEntity? shortTitleElement;
  String? subtitle;
  @ToOne()
  PrimitiveElementEntity? subtitleElement;
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<UsageContextEntity>? useContext;
  String? publisher;
  @ToOne()
  PrimitiveElementEntity? publisherElement;
  @ToMany()
  List<ContactDetailEntity>? contact;
  @ToMany()
  List<ContactDetailEntity>? author;
  @ToMany()
  List<ContactDetailEntity>? editor;
  @ToMany()
  List<ContactDetailEntity>? reviewer;
  @ToMany()
  List<ContactDetailEntity>? endorser;
  @ToMany()
  List<RelatedArtifactEntity>? relatedArtifact;
  bool? actual;
  @ToOne()
  PrimitiveElementEntity? actualElement;
  String? characteristicCombination;

  @ToOne()
  PrimitiveElementEntity? characteristicCombinationElement;
  @ToMany()
  List<EvidenceVariableCharacteristicEntity>? characteristic;
  String? handling;
  @ToOne()
  PrimitiveElementEntity? handlingElement;
  @ToMany()
  List<EvidenceVariableCategoryEntity>? category;
}

class EvidenceVariableCharacteristicEntity {
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
  ReferenceEntity? definitionReference;
  String? definitionCanonical;

  @ToOne()
  PrimitiveElementEntity? definitionCanonicalElement;
  @ToOne()
  CodeableConceptEntity? definitionCodeableConcept;
  @ToOne()
  FhirExpressionEntity? definitionExpression;
  bool? exclude;
  @ToOne()
  PrimitiveElementEntity? excludeElement;
  @ToOne()
  EvidenceVariableTimeFromStartEntity? timeFromStart;
  String? groupMeasure;
  @ToOne()
  PrimitiveElementEntity? groupMeasureElement;
}

class EvidenceVariableTimeFromStartEntity {
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
  QuantityEntity? quantity;
  @ToOne()
  RangeEntity? range;
  @ToMany()
  List<AnnotationEntity>? note;
}

class EvidenceVariableCategoryEntity {
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
  CodeableConceptEntity? valueCodeableConcept;
  @ToOne()
  QuantityEntity? valueQuantity;
  @ToOne()
  RangeEntity? valueRange;
}
