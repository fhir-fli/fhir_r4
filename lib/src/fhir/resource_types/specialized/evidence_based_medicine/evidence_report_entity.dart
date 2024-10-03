import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EvidenceReportEntity {
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
  String? url;
  @ToOne()
  PrimitiveElementEntity? urlElement;
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  @ToMany()
  List<UsageContextEntity>? useContext;
  @ToMany()
  List<IdentifierEntity>? identifier;
  @ToMany()
  List<IdentifierEntity>? relatedIdentifier;
  @ToOne()
  ReferenceEntity? citeAsReference;
  String? citeAsMarkdown;
  @ToOne()
  PrimitiveElementEntity? citeAsMarkdownElement;
  @ToOne()
  CodeableConceptEntity? type;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<RelatedArtifactEntity>? relatedArtifact;
  @ToOne()
  EvidenceReportSubjectEntity? subject;
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
  List<EvidenceReportRelatesToEntity>? relatesTo;
  @ToMany()
  List<EvidenceReportSectionEntity>? section;
}

class EvidenceReportSubjectEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToMany()
  List<EvidenceReportCharacteristicEntity>? characteristic;
  @ToMany()
  List<AnnotationEntity>? note;
}

class EvidenceReportCharacteristicEntity {
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
  ReferenceEntity? valueReference;
  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;
  bool? valueBoolean;
  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;
  @ToOne()
  QuantityEntity? valueQuantity;
  @ToOne()
  RangeEntity? valueRange;
  bool? exclude;
  @ToOne()
  PrimitiveElementEntity? excludeElement;
  @ToOne()
  PeriodEntity? period;
}

class EvidenceReportRelatesToEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? code;
  @ToOne()
  PrimitiveElementEntity? codeElement;
  @ToOne()
  IdentifierEntity? targetIdentifier;
  @ToOne()
  ReferenceEntity? targetReference;
}

class EvidenceReportSectionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? title;
  @ToOne()
  PrimitiveElementEntity? titleElement;
  @ToOne()
  CodeableConceptEntity? focus;
  @ToOne()
  ReferenceEntity? focusReference;
  @ToMany()
  List<ReferenceEntity>? author;
  @ToOne()
  NarrativeEntity? text;
  String? mode;
  @ToOne()
  PrimitiveElementEntity? modeElement;
  @ToOne()
  CodeableConceptEntity? orderedBy;
  @ToMany()
  List<CodeableConceptEntity>? entryClassifier;
  @ToMany()
  List<ReferenceEntity>? entryReference;
  @ToMany()
  List<QuantityEntity>? entryQuantity;
  @ToOne()
  CodeableConceptEntity? emptyReason;
  @ToMany()
  List<EvidenceReportSectionEntity>? section;
}
