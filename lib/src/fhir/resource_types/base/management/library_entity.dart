import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class LibraryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Library';

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

  String? subtitle;

  @ToOne()
  PrimitiveElementEntity? subtitleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? subjectCodeableConcept;

  @ToOne()
  ReferenceEntity? subjectReference;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? usage;

  @ToOne()
  PrimitiveElementEntity? usageElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? approvalDate;

  @ToOne()
  PrimitiveElementEntity? approvalDateElement;

  String? lastReviewDate;

  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToMany()
  List<CodeableConceptEntity>? topic;

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

  @ToMany()
  List<ParameterDefinitionEntity>? parameter;

  @ToMany()
  List<DataRequirementEntity>? dataRequirement;

  @ToMany()
  List<AttachmentEntity>? content;
}
