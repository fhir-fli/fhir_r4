import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EvidenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Evidence';
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
  String? title;
  @ToOne()
  PrimitiveElementEntity? titleElement;
  @ToOne()
  ReferenceEntity? citeAsReference;
  String? citAsMarkdown;
  @ToOne()
  PrimitiveElementEntity? citeAsMarkdownElement;
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  @ToMany()
  List<UsageContextEntity>? useContext;
  String? approvalDate;
  @ToOne()
  PrimitiveElementEntity? approvalDateElement;
  String? lastReviewDate;
  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;
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
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  String? assertion;
  @ToOne()
  PrimitiveElementEntity? assertionElement;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<EvidenceVariableDefinitionEntity>? variableDefinition;
  @ToOne()
  CodeableConceptEntity? synthesisType;
  @ToOne()
  CodeableConceptEntity? studyType;
  @ToMany()
  List<EvidenceStatisticEntity>? statistic;
  @ToMany()
  List<EvidenceCertaintyEntity>? certainty;
}

class EvidenceVariableDefinitionEntity {
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
  @ToMany()
  List<AnnotationEntity>? note;
  @ToOne()
  CodeableConceptEntity? variableRole;
  @ToOne()
  ReferenceEntity? observed;
  @ToOne()
  ReferenceEntity? intended;
  @ToOne()
  CodeableConceptEntity? directnessMatch;
}

class EvidenceStatisticEntity {
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
  @ToMany()
  List<AnnotationEntity>? note;
  @ToOne()
  CodeableConceptEntity? statisticType;
  @ToOne()
  CodeableConceptEntity? category;
  @ToOne()
  QuantityEntity? quantity;
  int? numberOfEvents;
  @ToOne()
  PrimitiveElementEntity? numberOfEventsElement;
  int? numberAffected;
  @ToOne()
  PrimitiveElementEntity? numberAffectedElement;
  @ToOne()
  EvidenceSampleSizeEntity? sampleSize;
  @ToMany()
  List<EvidenceAttributeEstimateEntity>? attributeEstimate;
  @ToMany()
  List<EvidenceModelCharacteristicEntity>? modelCharacteristic;
}

class EvidenceSampleSizeEntity {
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
  @ToMany()
  List<AnnotationEntity>? note;
  int? numberOfStudies;
  @ToOne()
  PrimitiveElementEntity? numberOfStudiesElement;
  int? numberOfParticipants;

  @ToOne()
  PrimitiveElementEntity? numberOfParticipantsElement;
  int? knownDataCount;
  @ToOne()
  PrimitiveElementEntity? knownDataCountElement;
}

class EvidenceAttributeEstimateEntity {
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
  @ToMany()
  List<AnnotationEntity>? note;
  @ToOne()
  CodeableConceptEntity? type;
  @ToOne()
  QuantityEntity? quantity;
  double? level;
  @ToOne()
  PrimitiveElementEntity? levelElement;
  @ToOne()
  RangeEntity? range;
  @ToMany()
  List<EvidenceAttributeEstimateEntity>? attributeEstimate;
}

class EvidenceModelCharacteristicEntity {
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
  QuantityEntity? value;
  @ToMany()
  List<EvidenceVarEntity>? variable;
  @ToMany()
  List<EvidenceAttributeEstimateEntity>? attributeEstimate;
}

class EvidenceVarEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  ReferenceEntity? variableDefinition;
  String? handling;
  @ToOne()
  PrimitiveElementEntity? handlingElement;
  @ToMany()
  List<CodeableConceptEntity>? valueCategory;
  @ToMany()
  List<QuantityEntity>? valueQuantity;
  @ToMany()
  List<RangeEntity>? valueRange;
}

class EvidenceCertaintyEntity {
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
  @ToMany()
  List<AnnotationEntity>? note;
  @ToOne()
  CodeableConceptEntity? type;
  @ToOne()
  CodeableConceptEntity? rating;
  String? rater;
  @ToOne()
  PrimitiveElementEntity? raterElement;
  @ToMany()
  List<EvidenceCertaintyEntity>? subcomponent;
}
