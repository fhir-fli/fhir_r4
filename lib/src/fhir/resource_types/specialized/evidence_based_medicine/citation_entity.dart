import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CitationEntity {
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
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  bool? experimental;
  @ToOne()
  PrimitiveElementEntity? experimentalElement;
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
  List<ContactDetailEntity>? author;
  @ToMany()
  List<ContactDetailEntity>? editor;
  @ToMany()
  List<ContactDetailEntity>? reviewer;
  @ToMany()
  List<ContactDetailEntity>? endorser;
  @ToMany()
  List<CitationSummaryEntity>? summary;
  @ToMany()
  List<CitationClassificationEntity>? classification;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<CodeableConceptEntity>? currentState;
  @ToMany()
  List<CitationStatusDateEntity>? statusDate;
  @ToMany()
  List<CitationRelatesToEntity>? relatesTo;
  @ToOne()
  CitationCitedArtifactEntity? citedArtifact;
}

class CitationSummaryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? style;
  String? text;
  @ToOne()
  PrimitiveElementEntity? textElement;
}

class CitationClassificationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  @ToMany()
  List<CodeableConceptEntity>? classifier;
}

class CitationStatusDateEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? activity;
  bool? actual;
  @ToOne()
  PrimitiveElementEntity? actualElement;
  @ToOne()
  PeriodEntity? period;
}

class CitationRelatesToEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? relationshipType;
  @ToMany()
  List<CodeableConceptEntity>? targetClassifier;
  String? targetUri;
  @ToOne()
  PrimitiveElementEntity? targetUriElement;
  @ToOne()
  IdentifierEntity? targetIdentifier;
  @ToOne()
  ReferenceEntity? targetReference;
  @ToOne()
  AttachmentEntity? targetAttachment;
}

class CitationCitedArtifactEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToMany()
  List<IdentifierEntity>? identifier;
  @ToMany()
  List<IdentifierEntity>? relatedIdentifier;
  String? dateAccessed;
  @ToOne()
  PrimitiveElementEntity? dateAccessedElement;
  @ToOne()
  CitationVersionEntity? version;
  @ToMany()
  List<CodeableConceptEntity>? currentState;
  @ToMany()
  List<CitationStatusDate1Entity>? statusDate;
  @ToMany()
  List<CitationTitleEntity>? title;
  @ToMany()
  List<CitationAbstractEntity>? abstract_;
  @ToOne()
  CitationPartEntity? part_;
  @ToMany()
  List<CitationRelatesTo1Entity>? relatesTo;
  @ToMany()
  List<CitationPublicationFormEntity>? publicationForm;
  @ToMany()
  List<CitationWebLocationEntity>? webLocation;
  @ToMany()
  List<CitationClassification1Entity>? classification;
  @ToOne()
  CitationContributorshipEntity? contributorship;
  @ToMany()
  List<AnnotationEntity>? note;
}

class CitationVersionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? value;
  @ToOne()
  PrimitiveElementEntity? valueElement;
  @ToOne()
  ReferenceEntity? baseCitation;
}

class CitationStatusDate1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? activity;
  bool? actual;
  @ToOne()
  PrimitiveElementEntity? actualElement;
  @ToOne()
  PeriodEntity? period;
}

class CitationTitleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToMany()
  List<CodeableConceptEntity>? type;
  @ToOne()
  CodeableConceptEntity? language;
  String? text;
  @ToOne()
  PrimitiveElementEntity? textElement;
}

class CitationAbstractEntity {
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
  CodeableConceptEntity? language;
  String? text;
  @ToOne()
  PrimitiveElementEntity? textElement;
  String? copyright;
  @ToOne()
  PrimitiveElementEntity? copyrightElement;
}

class CitationPartEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  String? value;
  @ToOne()
  PrimitiveElementEntity? valueElement;
  @ToOne()
  ReferenceEntity? baseCitation;
}

class CitationRelatesTo1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? relationshipType;
  @ToMany()
  List<CodeableConceptEntity>? targetClassifier;
  String? targetUri;
  @ToOne()
  PrimitiveElementEntity? targetUriElement;
  @ToOne()
  IdentifierEntity? targetIdentifier;
  @ToOne()
  ReferenceEntity? targetReference;
  @ToOne()
  AttachmentEntity? targetAttachment;
}

class CitationPublicationFormEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CitationPublishedInEntity? publishedIn;
  @ToOne()
  CitationPeriodicReleaseEntity? periodicRelease;
  String? articleDate;
  @ToOne()
  PrimitiveElementEntity? articleDateElement;
  String? lastRevisionDate;

  @ToOne()
  PrimitiveElementEntity? lastRevisionDateElement;
  @ToMany()
  List<CodeableConceptEntity>? language;
  String? accessionNumber;
  @ToOne()
  PrimitiveElementEntity? accessionNumberElement;
  String? pageString;
  @ToOne()
  PrimitiveElementEntity? pageStringElement;
  String? firstPage;
  @ToOne()
  PrimitiveElementEntity? firstPageElement;
  String? lastPage;
  @ToOne()
  PrimitiveElementEntity? lastPageElement;
  String? pageCount;
  @ToOne()
  PrimitiveElementEntity? pageCountElement;
  String? copyright;
  @ToOne()
  PrimitiveElementEntity? copyrightElement;
}

class CitationPublishedInEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  @ToMany()
  List<IdentifierEntity>? identifier;
  String? title;
  @ToOne()
  PrimitiveElementEntity? titleElement;
  @ToOne()
  ReferenceEntity? publisher;
  String? publisherLocation;

  @ToOne()
  PrimitiveElementEntity? publisherLocationElement;
}

class CitationPeriodicReleaseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? citedMedium;
  String? volume;
  @ToOne()
  PrimitiveElementEntity? volumeElement;
  String? issue;
  @ToOne()
  PrimitiveElementEntity? issueElement;
  @ToOne()
  CitationDateOfPublicationEntity? dateOfPublication;
}

class CitationDateOfPublicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  String? year;
  @ToOne()
  PrimitiveElementEntity? yearElement;
  String? month;
  @ToOne()
  PrimitiveElementEntity? monthElement;
  String? day;
  @ToOne()
  PrimitiveElementEntity? dayElement;
  String? season;
  @ToOne()
  PrimitiveElementEntity? seasonElement;
  String? text;
  @ToOne()
  PrimitiveElementEntity? textElement;
}

class CitationWebLocationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  String? url;
  @ToOne()
  PrimitiveElementEntity? urlElement;
}

class CitationClassification1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  @ToMany()
  List<CodeableConceptEntity>? classifier;
  @ToOne()
  CitationWhoClassifiedEntity? whoClassified;
  @ToMany()
  List<ReferenceEntity>? artifactAssessment;
}

class CitationWhoClassifiedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  ReferenceEntity? person;
  @ToOne()
  ReferenceEntity? organization;
  @ToOne()
  ReferenceEntity? publisher;
  String? classifierCopyright;

  @ToOne()
  PrimitiveElementEntity? classifierCopyrightElement;
  bool? freeToShare;
  @ToOne()
  PrimitiveElementEntity? freeToShareElement;
}

class CitationContributorshipEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  bool? complete;
  @ToOne()
  PrimitiveElementEntity? completeElement;
  @ToMany()
  List<CitationEntryEntity>? entry;
  @ToMany()
  List<CitationSummary1Entity>? summary;
}

class CitationEntryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  HumanNameEntity? name;
  String? initials;
  @ToOne()
  PrimitiveElementEntity? initialsElement;
  String? collectiveName;
  @ToOne()
  PrimitiveElementEntity? collectiveNameElement;
  @ToMany()
  List<IdentifierEntity>? identifier;
  @ToMany()
  List<CitationAffiliationInfoEntity>? affiliationInfo;
  @ToMany()
  List<AddressEntity>? address;
  @ToMany()
  List<ContactPointEntity>? telecom;
  @ToMany()
  List<CodeableConceptEntity>? contributionType;
  @ToOne()
  CodeableConceptEntity? role;
  @ToMany()
  List<CitationContributionInstanceEntity>? contributionInstance;
  bool? correspondingContact;

  @ToOne()
  PrimitiveElementEntity? correspondingContactElement;
  int? listOrder;
  @ToOne()
  PrimitiveElementEntity? listOrderElement;
}

class CitationAffiliationInfoEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? affiliation;
  @ToOne()
  PrimitiveElementEntity? affiliationElement;
  String? role;
  @ToOne()
  PrimitiveElementEntity? roleElement;
  @ToMany()
  List<IdentifierEntity>? identifier;
}

class CitationContributionInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? type;
  String? time;
  @ToOne()
  PrimitiveElementEntity? timeElement;
}

class CitationSummary1Entity {
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
  CodeableConceptEntity? style;
  @ToOne()
  CodeableConceptEntity? source;
  String? value;
  @ToOne()
  PrimitiveElementEntity? valueElement;
}
